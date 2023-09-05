import 'messages.dart';

/// The translations for Japanese (`ja`).
class SJa extends S {
  SJa([String locale = 'ja']) : super(locale);

  @override
  String get loading => '読み込み中';

  @override
  String get wallet_empty_state_message => '履歴が記録されていません。';

  @override
  String get enum_rider_transaction_deduct_order_fee => '注文手数料';

  @override
  String get enum_rider_transaction_deduct_withdraw => '撤退';

  @override
  String get enum_rider_transaction_deduct_correction => '修正';

  @override
  String get enum_unknown => '不明';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'アプリ内決済';

  @override
  String get enum_rider_transaction_recharge_gift => '贈り物';

  @override
  String get enum_rider_transaction_recharge_correction => '修正';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => '銀行振込';

  @override
  String get top_up_sheet_pay_button => '支払い';

  @override
  String get service_selection_book_now => '今予約する';

  @override
  String get action_cancel => 'キャンセル';

  @override
  String copyright_notice(Object company) {
    return '著作権 © $company、無断複写・転載を禁じます。';
  }

  @override
  String get menu_about => '約';

  @override
  String get menu_login => 'ログイン';

  @override
  String get menu_profile => 'プロフィール';

  @override
  String get menu_wallet => '財布';

  @override
  String get menu_trip_history => '旅行履歴';

  @override
  String get menu_announcements => 'お知らせ';

  @override
  String get menu_saved_locations => '保存された場所';

  @override
  String get action_save => '保存';

  @override
  String get create_address_name_empty_error => '場所の名前を入力してください';

  @override
  String get create_address_title_textfield_hint => '題名';

  @override
  String get action_delete => '消去';

  @override
  String get trip_history_empty_state_message => '過去の注文は記録されていません。';

  @override
  String get profile_firstname => 'ファーストネーム';

  @override
  String get profile_lastname => '苗字';

  @override
  String get profile_email => 'Eメール';

  @override
  String get profile_gender => '性別';

  @override
  String get enum_gender_male => '男';

  @override
  String get enum_gender_female => '女性';

  @override
  String get login_cell_number_textfield_hint => 'セル番号';

  @override
  String get login_cell_number_empty_error => '電話番号を正しい形式で入力してください';

  @override
  String get action_next => '次';

  @override
  String get verify_phone_code_empty_message => '認証コードが入力されていません。';

  @override
  String get wallet_activities_heading => 'アクティビティ';

  @override
  String get menu_logout => 'ログアウト';

  @override
  String get enum_gender_unknown => 'わからない';

  @override
  String get enum_address_type_home => '家';

  @override
  String get enum_address_type_work => '仕事';

  @override
  String get enum_address_type_partner => '相棒';

  @override
  String get enum_address_type_other => '他の';

  @override
  String get message_notification_permission_denined_message => '以前に通知許可が拒否されました。新規注文の通知を受け取るために、アプリの設定から許可を有効にすることができます。';

  @override
  String get message_notification_permission_title => '通知許可';

  @override
  String get action_ok => 'わかった';

  @override
  String get menu_website => 'Webサイト';

  @override
  String get action_confirm_and_reserve_ride => '乗車の確認と予約';

  @override
  String get title_reserve_ride => '予約乗車';

  @override
  String get error_region_unsupported => 'リージョンはサポートされていません。';

  @override
  String get action_confirm => '確認';

  @override
  String get title_wait_time => '待ち時間';

  @override
  String get notice_tip_title => 'ヒントを追加しますか？';

  @override
  String get notice_tip_description => 'チップの追加はオプションです。ドライバーへのチップとして、好きな金額を追加できます。';

  @override
  String get action_pay_for_ride => '乗車料金を支払う';

  @override
  String get action_confirm_and_pay => '確認して支払う';

  @override
  String get action_add_photo => '写真を追加';

  @override
  String get complaint_submit_success_message => '苦情が提出されます。お問い合わせ内容については、弊社サポート担当者からの連絡をお待ちください。';

  @override
  String get error_field_cant_be_empty => '空にすることはできません';

  @override
  String get issue_description_placeholder => '問題の説明を書いてください...';

  @override
  String get issue_subject_placeholder => '主題';

  @override
  String get issue_submit_description => '乗車中に発生した問題を報告できます。お電話で問題を解決いたします。';

  @override
  String get issue_submit_title => '問題を報告する';

  @override
  String get issue_submit_button => '問題を報告';

  @override
  String get trip_information_title => '旅行情報';

  @override
  String get payment_in_cash => '現金';

  @override
  String get payment_method_title => '支払方法';

  @override
  String get button_ride_safety => '乗り物の安全';

  @override
  String get status_title_driver_arrived => 'ピックアップポイントでドライバーに会う';

  @override
  String get status_title_trip_started => '目的地に向かっています';

  @override
  String get welcome_card_subtitle => 'どこに行くの？';

  @override
  String get welcome_card_textbox_placeholder => '目的地はどこですか？';

  @override
  String welcome_card_greeting(Object firstName) {
    return 'こんにちは $firstName';
  }

  @override
  String get login_title => 'ログイン';

  @override
  String get login_body => 'まず、サインインして乗車を予約する必要があります。確認コードが電話番号に送信されます。';

  @override
  String get terms_and_condition_text => '私は読み、同意します';

  @override
  String get terms_and_condition_button => '利用規約';

  @override
  String get login_verify_code_title => 'コードを入力する';

  @override
  String get login_verify_code_body => 'コードがあなたの電話番号に送信されました';

  @override
  String get action_continue => '継続する';

  @override
  String get current_location => '現在位置';

  @override
  String get your_destination => '目的地';

  @override
  String get add_stop => 'ストップを追加';

  @override
  String get action_choose_on_map => '地図で選ぶ';

  @override
  String get message_title_location => '位置';

  @override
  String get message_body_location => 'デバイスの GPS から現在地を取得できませんでした。検索フィールドを使用して、ピックアップ場所を選択してください。';

  @override
  String get menu_reserved_rides => '貸切乗車';

  @override
  String get reservation_empty_state_title => '予約なし！';

  @override
  String get reservation_empty_state_body => 'メイン画面で予約すると、将来の予約を見ることができます。';

  @override
  String get action_cancel_ride => '乗車をキャンセル';

  @override
  String get enum_address_type_gym => 'ジム';

  @override
  String get enum_address_type_parent_house => '実家';

  @override
  String get enum_address_type_cafe => 'カフェ';

  @override
  String get enum_address_type_park => '公園';

  @override
  String get action_add_favorite_location => 'お気に入りの場所を追加';

  @override
  String get favorite_locations_list_title => 'お気に入りの場所';

  @override
  String get favorite_locations_list_body => 'お気に入りの場所を保存して簡単にアクセスできます';

  @override
  String get favorite_location_details_title => 'お気に入りの場所に名前を付ける';

  @override
  String get textbox_error_select_type_address => '住所の種類を選択してください';

  @override
  String get placeholder_type => 'タイプ';

  @override
  String get action_delete_account => 'アカウントを削除する';

  @override
  String get message_delete_account_title => 'アカウントの削除';

  @override
  String get message_delete_account_body => 'アカウントを削除してもよろしいですか？アカウントを復元するには、30 日以内に再度ログインしてください。この期間が過ぎると、残りのすべてのクレジットを含め、データは完全に削除されます。';

  @override
  String get action_edit => '編集';

  @override
  String get action_confirm_location => '場所を確認';

  @override
  String get action_coupon_code => 'クーポンコード';

  @override
  String get enter_coupon_dialog_title => 'クーポンコード';

  @override
  String get enter_coupon_dialog_body => '価格に適用されるクーポンコードを入力してください';

  @override
  String get enter_coupon_placeholder => 'クーポンコードを入力してください';

  @override
  String get looking_dialog_title => 'リクエストされた乗車';

  @override
  String get looking_dialog_body => '最寄りのドライバーを探しています。';

  @override
  String get action_cancel_request => 'リクエストをキャンセル';

  @override
  String get rate_ride_title => '乗り心地はいかがでしたか？';

  @override
  String get rate_ride_body => 'ドライバーを評価して、エクスペリエンスの向上にご協力ください';

  @override
  String get rate_ride_good_points => 'ナイスポイント';

  @override
  String get rate_ride_negative_points => 'マイナスポイント';

  @override
  String get rate_ride_comment_title => 'コメントを追加する';

  @override
  String get rate_ride_comment_placeholder => 'あなたのコメントを書いてください...';

  @override
  String get action_send_feedback => 'フィードバックを送信';

  @override
  String get action_ride_options => '乗車オプション';

  @override
  String get ride_options_title => '乗車オプション';

  @override
  String get ride_options_wait_time_action => '待ち時間';

  @override
  String get ride_safety_title => '乗り物の安全';

  @override
  String get ride_safety_share_trip_information => '旅行情報を共有する';

  @override
  String get ride_safety_sos => 'SOS';

  @override
  String get sos_title => '遭難信号';

  @override
  String get sos_body => '遭難信号は緊急用であり、警察などの当局への呼び出しがあなたに代わって行われる場合があります。この機能は、危険にさらされる可能性がある緊急時にのみ使用してください。';

  @override
  String get sos_sent_alert => 'SOSが送信されます';

  @override
  String get sos_ok_action => '緊急です';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return '$pickup から $destination に向かう途中です。';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' 私のドライバーの名前は $firstName $lastName で、彼の携帯電話番号は +$mobileNumber です。';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' 旅行は $startTime に開始されました。旅行には約 $duration 分かかると予想されます';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' 運転手の車に乗ってから、移動自体は $duration 分ほどかかると思います。';
  }

  @override
  String get announcements_empty_state_title => 'お知らせはまだありません！';

  @override
  String get announcements_empty_state_body => '新しい発表が来たらお知らせします。';

  @override
  String get action_set_location => '場所を設定';

  @override
  String get trip_history_empty_state_title => '記録なし！';

  @override
  String get location_not_found_alert_dialog_title => '位置';

  @override
  String get location_not_found_alert_dialog_body => 'デバイスの GPS を使用して現在地を取得できませんでした。デバイスの設定から、アプリに対するデバイスの位置情報の許可を確認してください。または、上の検索フィールドを使用して、ピックアップ ポイントを選択することもできます。';

  @override
  String get gift_card_title => 'ギフトコードを入力';

  @override
  String get gift_card_body => 'ギフトカードコードを入力してください';

  @override
  String get gift_card_text_placeholder => 'ギフトカードコードを入力';

  @override
  String get action_apply => '申し込み';

  @override
  String get order_status_should_be_arrived => '到着する必要があります';

  @override
  String order_status_arriving_in(Object minutes) {
    return '$minutes 後に到着';
  }

  @override
  String get message_title_warning => '警告';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'ドライバーが乗車を承諾した後のサービスのキャンセルには、$fee のキャンセル ペナルティが適用されます。確認しますか？';
  }

  @override
  String get confirm => '確認';

  @override
  String get add_credit_select_payment_method => 'お支払い方法の選択:';

  @override
  String get add_credit_custom_credit_placeholder => 'カスタムクレジットを追加';

  @override
  String get add_credit_custom_credit_text_placeholder => 'カスタム';

  @override
  String get invoice_item_tip => 'ヒント';

  @override
  String get invoice_item_wallet => '財布';

  @override
  String get invoice_item_total => '合計';

  @override
  String get add_credit_dialog_title => 'クレジットを追加';

  @override
  String get add_credit_choose_amount => '金額を選択';

  @override
  String get action_ride_preferences => '乗車設定';

  @override
  String get ride_preferences_title => '乗車設定';

  @override
  String get action_confirm_and_continue => '確認して続行';

  @override
  String get action_see_reserved_rides => '予約済みの乗り物を見る';

  @override
  String get ride_reserved_dialog_title => 'あなたの乗車は予約されています。';

  @override
  String get ride_reserved_dialog_body => 'メニューで予約済みの乗り物をチェックして、この乗り物の予約情報を確認できます。';

  @override
  String get alert_coupon_unavailable => 'クーポンは利用できません';

  @override
  String minutes_format(Object minutes) {
    return '$minutes 分';
  }

  @override
  String get action_back => '戻る';

  @override
  String wallet_card_title(Object appName) {
    return '$appName ウォレット';
  }

  @override
  String get action_redeem_gift_card => 'ギフトカードの交換';

  @override
  String get order_status_canceled => 'キャンセル';

  @override
  String get action_skip_for_now => '今のところスキップ';

  @override
  String get onboarding_select_language_title => '言語を選択する';

  @override
  String onboarding_first_page_title(Object appName) {
    return '$appName へようこそ！';
  }

  @override
  String get onboarding_first_page_body => '快適さを追求したタクシーサービス\n お気に入りのドライバーと一緒に乗車し、乗車の好みを選択してください';

  @override
  String get onboarding_second_page_title => '報酬を受ける！';

  @override
  String get onboarding_second_page_body => '友達を紹介したり、旅行を完了したりすると、追加のボーナスを獲得できます...';

  @override
  String get onboarding_sign_in_title => 'ログイン';

  @override
  String get onboarding_sign_in_body => 'サインインして快適なライドを開始するまであと数秒';

  @override
  String distanceMeters(String distance) {
    return '$distance m';
  }

  @override
  String distanceKm(String distance) {
    return '$distance km';
  }

  @override
  String distanceFeet(String distance) {
    return '$distance ft';
  }

  @override
  String distanceMiles(String distance) {
    return '$distance mi';
  }

  @override
  String get register_title_name => 'Name';

  @override
  String get register_title_verify_number => 'Verify number';

  @override
  String get login_enter_phone_subtitle => 'To begin booking your ride, please sign in first. We will then send a code to your phone number.';

  @override
  String get action_resend_code => 'Resend Code';

  @override
  String notice_resend_code_in_seconds(Object seconds) {
    return 'Resend code in $seconds seconds';
  }

  @override
  String get sos_send_error => 'There was a problem encountered while attempting to send your SOS signal. Please make another attempt or contact 911 directly.';

  @override
  String get complaint_submit_error_message => 'The submission of your complaint was unsuccessful, likely due to connectivity issues. Please try again.';

  @override
  String get languageSettings => 'Language Settings';

  @override
  String get mapSettings => 'Map Settings';

  @override
  String get settings => 'Settings';

  @override
  String get actionYes => 'Yes';

  @override
  String get actionNo => 'No';

  @override
  String get messageConfirmAddressDelete => 'Are you sure you want to delete this address?';
}
