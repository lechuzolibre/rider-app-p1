// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ja';

  static String m0(fee) =>
      "ドライバーが乗車を承諾した後のサービスのキャンセルには、${fee} のキャンセル ペナルティが適用されます。確認しますか？";

  static String m1(company) => "著作権 © ${company}、無断複写・転載を禁じます。";

  static String m2(distance) => "${distance} ft";

  static String m3(distance) => "${distance} km";

  static String m4(distance) => "${distance} m";

  static String m5(distance) => "${distance} mi";

  static String m6(minutes) => "${minutes} 分";

  static String m7(seconds) => "Resend code in ${seconds} seconds";

  static String m8(appName) => "${appName} へようこそ！";

  static String m9(minutes) => "${minutes} 後に到着";

  static String m10(duration) => " 運転手の車に乗ってから、移動自体は ${duration} 分ほどかかると思います。";

  static String m11(startTime, duration) =>
      " 旅行は ${startTime} に開始されました。旅行には約 ${duration} 分かかると予想されます";

  static String m12(firstName, lastName, mobileNumber) =>
      " 私のドライバーの名前は ${firstName} ${lastName} で、彼の携帯電話番号は +${mobileNumber} です。";

  static String m13(destination, pickup) =>
      "${pickup} から ${destination} に向かう途中です。";

  static String m14(appName) => "${appName} ウォレット";

  static String m15(firstName) => "こんにちは ${firstName}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_favorite_location":
            MessageLookupByLibrary.simpleMessage("お気に入りの場所を追加"),
        "action_add_photo": MessageLookupByLibrary.simpleMessage("写真を追加"),
        "action_apply": MessageLookupByLibrary.simpleMessage("申し込み"),
        "action_back": MessageLookupByLibrary.simpleMessage("戻る"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "action_cancel_request":
            MessageLookupByLibrary.simpleMessage("リクエストをキャンセル"),
        "action_cancel_ride": MessageLookupByLibrary.simpleMessage("乗車をキャンセル"),
        "action_choose_on_map": MessageLookupByLibrary.simpleMessage("地図で選ぶ"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("確認"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("確認して続行"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("確認して支払う"),
        "action_confirm_and_reserve_ride":
            MessageLookupByLibrary.simpleMessage("乗車の確認と予約"),
        "action_confirm_location":
            MessageLookupByLibrary.simpleMessage("場所を確認"),
        "action_continue": MessageLookupByLibrary.simpleMessage("継続する"),
        "action_coupon_code": MessageLookupByLibrary.simpleMessage("クーポンコード"),
        "action_delete": MessageLookupByLibrary.simpleMessage("消去"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("アカウントを削除する"),
        "action_edit": MessageLookupByLibrary.simpleMessage("編集"),
        "action_next": MessageLookupByLibrary.simpleMessage("次"),
        "action_ok": MessageLookupByLibrary.simpleMessage("わかった"),
        "action_pay_for_ride": MessageLookupByLibrary.simpleMessage("乗車料金を支払う"),
        "action_redeem_gift_card":
            MessageLookupByLibrary.simpleMessage("ギフトカードの交換"),
        "action_resend_code":
            MessageLookupByLibrary.simpleMessage("Resend Code"),
        "action_ride_options": MessageLookupByLibrary.simpleMessage("乗車オプション"),
        "action_ride_preferences": MessageLookupByLibrary.simpleMessage("乗車設定"),
        "action_save": MessageLookupByLibrary.simpleMessage("保存"),
        "action_see_reserved_rides":
            MessageLookupByLibrary.simpleMessage("予約済みの乗り物を見る"),
        "action_send_feedback":
            MessageLookupByLibrary.simpleMessage("フィードバックを送信"),
        "action_set_location": MessageLookupByLibrary.simpleMessage("場所を設定"),
        "action_skip_for_now":
            MessageLookupByLibrary.simpleMessage("今のところスキップ"),
        "add_credit_choose_amount":
            MessageLookupByLibrary.simpleMessage("金額を選択"),
        "add_credit_custom_credit_placeholder":
            MessageLookupByLibrary.simpleMessage("カスタムクレジットを追加"),
        "add_credit_custom_credit_text_placeholder":
            MessageLookupByLibrary.simpleMessage("カスタム"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("クレジットを追加"),
        "add_credit_select_payment_method":
            MessageLookupByLibrary.simpleMessage("お支払い方法の選択:"),
        "add_stop": MessageLookupByLibrary.simpleMessage("ストップを追加"),
        "alert_coupon_unavailable":
            MessageLookupByLibrary.simpleMessage("クーポンは利用できません"),
        "announcements_empty_state_body":
            MessageLookupByLibrary.simpleMessage("新しい発表が来たらお知らせします。"),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("お知らせはまだありません！"),
        "button_ride_safety": MessageLookupByLibrary.simpleMessage("乗り物の安全"),
        "cancelation_fee_confirmation_body": m0,
        "complaint_submit_error_message": MessageLookupByLibrary.simpleMessage(
            "The submission of your complaint was unsuccessful, likely due to connectivity issues. Please try again."),
        "complaint_submit_success_message":
            MessageLookupByLibrary.simpleMessage(
                "苦情が提出されます。お問い合わせ内容については、弊社サポート担当者からの連絡をお待ちください。"),
        "confirm": MessageLookupByLibrary.simpleMessage("確認"),
        "copyright_notice": m1,
        "create_address_name_empty_error":
            MessageLookupByLibrary.simpleMessage("場所の名前を入力してください"),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("題名"),
        "current_location": MessageLookupByLibrary.simpleMessage("現在位置"),
        "distanceFeet": m2,
        "distanceKm": m3,
        "distanceMeters": m4,
        "distanceMiles": m5,
        "enter_coupon_dialog_body":
            MessageLookupByLibrary.simpleMessage("価格に適用されるクーポンコードを入力してください"),
        "enter_coupon_dialog_title":
            MessageLookupByLibrary.simpleMessage("クーポンコード"),
        "enter_coupon_placeholder":
            MessageLookupByLibrary.simpleMessage("クーポンコードを入力してください"),
        "enum_address_type_cafe": MessageLookupByLibrary.simpleMessage("カフェ"),
        "enum_address_type_gym": MessageLookupByLibrary.simpleMessage("ジム"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("家"),
        "enum_address_type_other": MessageLookupByLibrary.simpleMessage("他の"),
        "enum_address_type_parent_house":
            MessageLookupByLibrary.simpleMessage("実家"),
        "enum_address_type_park": MessageLookupByLibrary.simpleMessage("公園"),
        "enum_address_type_partner": MessageLookupByLibrary.simpleMessage("相棒"),
        "enum_address_type_work": MessageLookupByLibrary.simpleMessage("仕事"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("女性"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("男"),
        "enum_gender_unknown": MessageLookupByLibrary.simpleMessage("わからない"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("修正"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("注文手数料"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("撤退"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("銀行振込"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("修正"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("贈り物"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("アプリ内決済"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("不明"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("空にすることはできません"),
        "error_region_unsupported":
            MessageLookupByLibrary.simpleMessage("リージョンはサポートされていません。"),
        "favorite_location_details_title":
            MessageLookupByLibrary.simpleMessage("お気に入りの場所に名前を付ける"),
        "favorite_locations_list_body":
            MessageLookupByLibrary.simpleMessage("お気に入りの場所を保存して簡単にアクセスできます"),
        "favorite_locations_list_title":
            MessageLookupByLibrary.simpleMessage("お気に入りの場所"),
        "gift_card_body":
            MessageLookupByLibrary.simpleMessage("ギフトカードコードを入力してください"),
        "gift_card_text_placeholder":
            MessageLookupByLibrary.simpleMessage("ギフトカードコードを入力"),
        "gift_card_title": MessageLookupByLibrary.simpleMessage("ギフトコードを入力"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("ヒント"),
        "invoice_item_total": MessageLookupByLibrary.simpleMessage("合計"),
        "invoice_item_wallet": MessageLookupByLibrary.simpleMessage("財布"),
        "issue_description_placeholder":
            MessageLookupByLibrary.simpleMessage("問題の説明を書いてください..."),
        "issue_subject_placeholder": MessageLookupByLibrary.simpleMessage("主題"),
        "issue_submit_button": MessageLookupByLibrary.simpleMessage("問題を報告"),
        "issue_submit_description": MessageLookupByLibrary.simpleMessage(
            "乗車中に発生した問題を報告できます。お電話で問題を解決いたします。"),
        "issue_submit_title": MessageLookupByLibrary.simpleMessage("問題を報告する"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "loading": MessageLookupByLibrary.simpleMessage("読み込み中"),
        "location_not_found_alert_dialog_body":
            MessageLookupByLibrary.simpleMessage(
                "デバイスの GPS を使用して現在地を取得できませんでした。デバイスの設定から、アプリに対するデバイスの位置情報の許可を確認してください。または、上の検索フィールドを使用して、ピックアップ ポイントを選択することもできます。"),
        "location_not_found_alert_dialog_title":
            MessageLookupByLibrary.simpleMessage("位置"),
        "login_body": MessageLookupByLibrary.simpleMessage(
            "まず、サインインして乗車を予約する必要があります。確認コードが電話番号に送信されます。"),
        "login_cell_number_empty_error":
            MessageLookupByLibrary.simpleMessage("電話番号を正しい形式で入力してください"),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("セル番号"),
        "login_enter_phone_subtitle": MessageLookupByLibrary.simpleMessage(
            "To begin booking your ride, please sign in first. We will then send a code to your phone number."),
        "login_title": MessageLookupByLibrary.simpleMessage("ログイン"),
        "login_verify_code_body":
            MessageLookupByLibrary.simpleMessage("コードがあなたの電話番号に送信されました"),
        "login_verify_code_title":
            MessageLookupByLibrary.simpleMessage("コードを入力する"),
        "looking_dialog_body":
            MessageLookupByLibrary.simpleMessage("最寄りのドライバーを探しています。"),
        "looking_dialog_title":
            MessageLookupByLibrary.simpleMessage("リクエストされた乗車"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("約"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("お知らせ"),
        "menu_login": MessageLookupByLibrary.simpleMessage("ログイン"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("ログアウト"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("プロフィール"),
        "menu_reserved_rides": MessageLookupByLibrary.simpleMessage("貸切乗車"),
        "menu_saved_locations": MessageLookupByLibrary.simpleMessage("保存された場所"),
        "menu_trip_history": MessageLookupByLibrary.simpleMessage("旅行履歴"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("財布"),
        "menu_website": MessageLookupByLibrary.simpleMessage("Webサイト"),
        "message_body_location": MessageLookupByLibrary.simpleMessage(
            "デバイスの GPS から現在地を取得できませんでした。検索フィールドを使用して、ピックアップ場所を選択してください。"),
        "message_delete_account_body": MessageLookupByLibrary.simpleMessage(
            "アカウントを削除してもよろしいですか？アカウントを復元するには、30 日以内に再度ログインしてください。この期間が過ぎると、残りのすべてのクレジットを含め、データは完全に削除されます。"),
        "message_delete_account_title":
            MessageLookupByLibrary.simpleMessage("アカウントの削除"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "以前に通知許可が拒否されました。新規注文の通知を受け取るために、アプリの設定から許可を有効にすることができます。"),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("通知許可"),
        "message_title_location": MessageLookupByLibrary.simpleMessage("位置"),
        "message_title_warning": MessageLookupByLibrary.simpleMessage("警告"),
        "minutes_format": m6,
        "notice_resend_code_in_seconds": m7,
        "notice_tip_description": MessageLookupByLibrary.simpleMessage(
            "チップの追加はオプションです。ドライバーへのチップとして、好きな金額を追加できます。"),
        "notice_tip_title": MessageLookupByLibrary.simpleMessage("ヒントを追加しますか？"),
        "onboarding_first_page_body": MessageLookupByLibrary.simpleMessage(
            "快適さを追求したタクシーサービス\n お気に入りのドライバーと一緒に乗車し、乗車の好みを選択してください"),
        "onboarding_first_page_title": m8,
        "onboarding_second_page_body": MessageLookupByLibrary.simpleMessage(
            "友達を紹介したり、旅行を完了したりすると、追加のボーナスを獲得できます..."),
        "onboarding_second_page_title":
            MessageLookupByLibrary.simpleMessage("報酬を受ける！"),
        "onboarding_select_language_title":
            MessageLookupByLibrary.simpleMessage("言語を選択する"),
        "onboarding_sign_in_body":
            MessageLookupByLibrary.simpleMessage("サインインして快適なライドを開始するまであと数秒"),
        "onboarding_sign_in_title":
            MessageLookupByLibrary.simpleMessage("ログイン"),
        "order_status_arriving_in": m9,
        "order_status_canceled": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "order_status_should_be_arrived":
            MessageLookupByLibrary.simpleMessage("到着する必要があります"),
        "payment_in_cash": MessageLookupByLibrary.simpleMessage("現金"),
        "payment_method_title": MessageLookupByLibrary.simpleMessage("支払方法"),
        "placeholder_type": MessageLookupByLibrary.simpleMessage("タイプ"),
        "profile_email": MessageLookupByLibrary.simpleMessage("Eメール"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("ファーストネーム"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("性別"),
        "profile_lastname": MessageLookupByLibrary.simpleMessage("苗字"),
        "rate_ride_body": MessageLookupByLibrary.simpleMessage(
            "ドライバーを評価して、エクスペリエンスの向上にご協力ください"),
        "rate_ride_comment_placeholder":
            MessageLookupByLibrary.simpleMessage("あなたのコメントを書いてください..."),
        "rate_ride_comment_title":
            MessageLookupByLibrary.simpleMessage("コメントを追加する"),
        "rate_ride_good_points":
            MessageLookupByLibrary.simpleMessage("ナイスポイント"),
        "rate_ride_negative_points":
            MessageLookupByLibrary.simpleMessage("マイナスポイント"),
        "rate_ride_title":
            MessageLookupByLibrary.simpleMessage("乗り心地はいかがでしたか？"),
        "register_title_name": MessageLookupByLibrary.simpleMessage("Name"),
        "register_title_verify_number":
            MessageLookupByLibrary.simpleMessage("Verify number"),
        "reservation_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "メイン画面で予約すると、将来の予約を見ることができます。"),
        "reservation_empty_state_title":
            MessageLookupByLibrary.simpleMessage("予約なし！"),
        "ride_options_title": MessageLookupByLibrary.simpleMessage("乗車オプション"),
        "ride_options_wait_time_action":
            MessageLookupByLibrary.simpleMessage("待ち時間"),
        "ride_preferences_title": MessageLookupByLibrary.simpleMessage("乗車設定"),
        "ride_reserved_dialog_body": MessageLookupByLibrary.simpleMessage(
            "メニューで予約済みの乗り物をチェックして、この乗り物の予約情報を確認できます。"),
        "ride_reserved_dialog_title":
            MessageLookupByLibrary.simpleMessage("あなたの乗車は予約されています。"),
        "ride_safety_share_trip_information":
            MessageLookupByLibrary.simpleMessage("旅行情報を共有する"),
        "ride_safety_sos": MessageLookupByLibrary.simpleMessage("SOS"),
        "ride_safety_title": MessageLookupByLibrary.simpleMessage("乗り物の安全"),
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("今予約する"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_trip_not_arrived_time": m10,
        "share_trip_started_time": m11,
        "share_trip_text_driver": m12,
        "share_trip_text_locations": m13,
        "sos_body": MessageLookupByLibrary.simpleMessage(
            "遭難信号は緊急用であり、警察などの当局への呼び出しがあなたに代わって行われる場合があります。この機能は、危険にさらされる可能性がある緊急時にのみ使用してください。"),
        "sos_ok_action": MessageLookupByLibrary.simpleMessage("緊急です"),
        "sos_send_error": MessageLookupByLibrary.simpleMessage(
            "There was a problem encountered while attempting to send your SOS signal. Please make another attempt or contact 911 directly."),
        "sos_sent_alert": MessageLookupByLibrary.simpleMessage("SOSが送信されます"),
        "sos_title": MessageLookupByLibrary.simpleMessage("遭難信号"),
        "status_title_driver_arrived":
            MessageLookupByLibrary.simpleMessage("ピックアップポイントでドライバーに会う"),
        "status_title_trip_started":
            MessageLookupByLibrary.simpleMessage("目的地に向かっています"),
        "terms_and_condition_button":
            MessageLookupByLibrary.simpleMessage("利用規約"),
        "terms_and_condition_text":
            MessageLookupByLibrary.simpleMessage("私は読み、同意します"),
        "textbox_error_select_type_address":
            MessageLookupByLibrary.simpleMessage("住所の種類を選択してください"),
        "title_reserve_ride": MessageLookupByLibrary.simpleMessage("予約乗車"),
        "title_wait_time": MessageLookupByLibrary.simpleMessage("待ち時間"),
        "top_up_sheet_pay_button": MessageLookupByLibrary.simpleMessage("支払い"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage("過去の注文は記録されていません。"),
        "trip_history_empty_state_title":
            MessageLookupByLibrary.simpleMessage("記録なし！"),
        "trip_information_title": MessageLookupByLibrary.simpleMessage("旅行情報"),
        "verify_phone_code_empty_message":
            MessageLookupByLibrary.simpleMessage("認証コードが入力されていません。"),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("アクティビティ"),
        "wallet_card_title": m14,
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("履歴が記録されていません。"),
        "welcome_card_greeting": m15,
        "welcome_card_subtitle":
            MessageLookupByLibrary.simpleMessage("どこに行くの？"),
        "welcome_card_textbox_placeholder":
            MessageLookupByLibrary.simpleMessage("目的地はどこですか？"),
        "your_destination": MessageLookupByLibrary.simpleMessage("目的地")
      };
}
