import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ridy/config.dart';
import 'package:ridy/main/bloc/jwt_cubit.dart';

ValueNotifier<GraphQLClient> clientFor(
    {required String uri, required String subscriptionUri, String? jwtToken}) {
  final WebSocketLink websocketLink = jwtToken != null
      ? WebSocketLink(subscriptionUri,
          config: SocketClientConfig(
              initialPayload: {"authToken": jwtToken},
              inactivityTimeout: const Duration(minutes: 30)),
          subProtocol: GraphQLProtocol.graphqlWs)
      : WebSocketLink(subscriptionUri, subProtocol: GraphQLProtocol.graphqlWs);
  final HttpLink httpLink = jwtToken != null
      ? HttpLink(uri, defaultHeaders: {"Authorization": "Bearer $jwtToken"})
      : HttpLink(uri);
  final Link link =
      Link.split((request) => request.isSubscription, websocketLink, httpLink);
  //final GraphQLCache cache = GraphQLCache(store: HiveStore());
  return ValueNotifier<GraphQLClient>(
    GraphQLClient(
        cache: GraphQLCache(),
        link: link,
        defaultPolicies: DefaultPolicies(
            query: Policies(fetch: FetchPolicy.noCache),
            mutate: Policies(fetch: FetchPolicy.noCache),
            subscribe: Policies(fetch: FetchPolicy.noCache))),
  );
}

/// Wraps the root application with the `graphql_flutter` client.
/// We use the cache for all state management.
class _MyGraphqlProvider extends StatelessWidget {
  _MyGraphqlProvider(
      {Key? key,
      required this.child,
      required String uri,
      required String subscriptionUri,
      String? jwt})
      : client = clientFor(
            uri: uri, subscriptionUri: subscriptionUri, jwtToken: jwt),
        super(key: key);

  final Widget child;
  final ValueNotifier<GraphQLClient> client;

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: child,
    );
  }
}

class MyGraphqlProvider extends StatelessWidget {
  final Widget child;

  const MyGraphqlProvider({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JWTCubit, String?>(
      builder: (context, state) {
        return _MyGraphqlProvider(
            uri: "${serverUrl}graphql",
            subscriptionUri: "${wsUrl}graphql",
            jwt: state,
            child: child);
      },
    );
  }
}
