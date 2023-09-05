import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ridy/chat/chat.graphql.dart';
import 'package:ridy/chat/chat_cubit.dart';
import 'package:client_shared/components/back_button.dart';
import 'package:ridy/config.dart';
import 'package:ridy/graphql/fragments/active-order.fragment.graphql.dart';
import 'package:ridy/query_result_view.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:client_shared/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:ridy/l10n/messages.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return BlocProvider(
      create: (context) => ChatCubit(),
      lazy: false,
      child: Builder(builder: (context) {
        return Scaffold(body:
            Query$GetMessages$Widget(builder: (result, {refetch, fetchMore}) {
          if (result.isLoading || result.hasException) {
            return QueryResultView(result, refetch: refetch);
          }
          var cubit = context.read<ChatCubit>();
          var order = result.parsedData!.currentOrder;
          var messages = order.conversations
              .map((e) => e.toTextMessage(order.rider, order.driver!))
              .toList();
          cubit.setMessages(messages);
          return Subscription$NewMessageReceived$Widget(
              onSubscriptionResult: (subscriptionResult, client) {
            if (subscriptionResult.parsedData == null) return;
            var message = subscriptionResult.parsedData!.newMessageReceived
                .toTextMessage(order.rider, order.driver!);
            cubit.addMessage(message);
          }, builder: (subscriptionResult) {
            return Mutation$SendMessage$Widget(options:
                WidgetOptions$Mutation$SendMessage(
                    onCompleted: (result, parsedData) {
              if (parsedData == null) return;
              cubit.addMessage(parsedData.createOneOrderMessage
                  .toTextMessage(order.rider, order.driver));
            }), builder: (runSendMessageMutation, sendMessageMutationResult) {
              return BlocBuilder<ChatCubit, List<types.TextMessage>>(
                builder: (context, state) {
                  return Column(
                    children: [
                      SafeArea(
                          child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 16, right: 16),
                        child: Row(
                          children: [
                            Mutation$UpdateLastSeenMessagesAt$Widget(
                                options:
                                    WidgetOptions$Mutation$UpdateLastSeenMessagesAt(
                                        onCompleted: (result, parsedData) =>
                                            Navigator.pop(context)),
                                builder: (runLastSeenMutation,
                                    resultLastSeenMutation) {
                                  return RidyBackButton(
                                    text: S.of(context).action_back,
                                    onPressed: () {
                                      runLastSeenMutation(
                                          Variables$Mutation$UpdateLastSeenMessagesAt(
                                              requestId: order.id));
                                    },
                                  );
                                }),
                            const Spacer(),
                            CupertinoButton(
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: CustomTheme.neutralColors.shade200,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Icon(
                                    Ionicons.call,
                                    color: CustomTheme.neutralColors.shade600,
                                  ),
                                ),
                                onPressed: () {
                                  launchUrl(Uri.parse(
                                      "tel://+${order.driver!.mobileNumber}"));
                                })
                          ],
                        ),
                      )),
                      Expanded(
                        child: Chat(
                            theme: DefaultChatTheme(
                                primaryColor: CustomTheme.primaryColors,
                                backgroundColor:
                                    CustomTheme.primaryColors.shade50,
                                inputTextDecoration: const InputDecoration(
                                    isDense: true,
                                    contentPadding: EdgeInsets.all(8),
                                    border: InputBorder.none),
                                inputBackgroundColor:
                                    CustomTheme.neutralColors.shade200,
                                inputTextColor: Colors.black),
                            messages: state,
                            onSendPressed: (text) async {
                              runSendMessageMutation(
                                  Variables$Mutation$SendMessage(
                                      requestId: order.id, content: text.text));
                            },
                            user: order.rider?.toUser() ??
                                const types.User(
                                    id: '0',
                                    firstName: 'Unknown',
                                    lastName: 'Unknown')),
                      ),
                    ],
                  );
                },
              );
            });
          });
        }));
      }),
    );
  }
}

extension ChatDriverExtension on Fragment$ChatDriver {
  types.User toUser() => types.User(
      id: 'd$id',
      firstName: firstName,
      lastName: lastName,
      imageUrl: media == null ? null : serverUrl + media!.address);
}

extension ChatRiderExtension on Fragment$ChatRider {
  types.User toUser() => types.User(
      id: 'r$id',
      firstName: firstName,
      lastName: lastName,
      imageUrl: media == null ? null : serverUrl + media!.address);
}

extension ChatMeessageExtension on Fragment$ChatMessage {
  types.TextMessage toTextMessage(
          Fragment$ChatRider? rider, Fragment$ChatDriver? driver) =>
      types.TextMessage(
        id: id,
        text: content,
        author: (sentByDriver ? driver?.toUser() : rider?.toUser()) ??
            const types.User(
                id: '0', firstName: 'Unknown', lastName: 'Unknown'),
      );
}
