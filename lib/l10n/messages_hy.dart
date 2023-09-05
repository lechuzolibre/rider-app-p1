import 'messages.dart';

/// The translations for Armenian (`hy`).
class SHy extends S {
  SHy([String locale = 'hy']) : super(locale);

  @override
  String get loading => 'Բեռնվում է';

  @override
  String get wallet_empty_state_message => 'Պատմություն չի գրանցվել:';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'Պատվերի վճար';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'Հանել';

  @override
  String get enum_rider_transaction_deduct_correction => 'Ուղղում';

  @override
  String get enum_unknown => 'Անհայտ';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'Ներծրագրի վճարում';

  @override
  String get enum_rider_transaction_recharge_gift => 'Նվեր';

  @override
  String get enum_rider_transaction_recharge_correction => 'Ուղղում';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'Բանկային փոխանցում';

  @override
  String get top_up_sheet_pay_button => 'Վճարել';

  @override
  String get service_selection_book_now => 'Ամրագրեք հիմա';

  @override
  String get action_cancel => 'Չեղարկել';

  @override
  String copyright_notice(Object company) {
    return 'Հեղինակային իրավունք © $company, Բոլոր իրավունքները պաշտպանված են:';
  }

  @override
  String get menu_about => 'Մասին';

  @override
  String get menu_login => 'Մուտք գործել';

  @override
  String get menu_profile => 'Անձնագիր';

  @override
  String get menu_wallet => 'Դրամապանակ';

  @override
  String get menu_trip_history => 'Ուղևորության պատմություն';

  @override
  String get menu_announcements => 'Հայտարարություններ';

  @override
  String get menu_saved_locations => 'Պահված վայրեր';

  @override
  String get action_save => 'Պահպանել';

  @override
  String get create_address_name_empty_error => 'Խնդրում ենք մուտքագրել գտնվելու վայրը';

  @override
  String get create_address_title_textfield_hint => 'Կոչում';

  @override
  String get action_delete => 'Ջնջել';

  @override
  String get trip_history_empty_state_message => 'Նախկին պատվեր չի գրանցվել:';

  @override
  String get profile_firstname => 'Անուն';

  @override
  String get profile_lastname => 'Ազգանուն';

  @override
  String get profile_email => 'Էլեկտրոնային փոստ';

  @override
  String get profile_gender => 'Սեռ';

  @override
  String get enum_gender_male => 'Արական';

  @override
  String get enum_gender_female => 'իգական';

  @override
  String get login_cell_number_textfield_hint => 'Հեռախոսի համար';

  @override
  String get login_cell_number_empty_error => 'Խնդրում ենք մուտքագրել հեռախոսահամարը ճիշտ ձևաչափով';

  @override
  String get action_next => 'Հաջորդը';

  @override
  String get verify_phone_code_empty_message => 'Ստուգման կոդը մուտքագրված չէ:';

  @override
  String get wallet_activities_heading => 'Գործունեություն';

  @override
  String get menu_logout => 'Դուրս գալ';

  @override
  String get enum_gender_unknown => 'Անհայտ';

  @override
  String get enum_address_type_home => 'տուն';

  @override
  String get enum_address_type_work => 'Աշխատանք';

  @override
  String get enum_address_type_partner => 'Գործընկեր';

  @override
  String get enum_address_type_other => 'Այլ';

  @override
  String get message_notification_permission_denined_message => 'Նախկինում ծանուցման թույլտվությունը մերժվել էր: Նոր պատվերի մասին ծանուցումներ ստանալու համար կարող եք միացնել թույլտվությունը հավելվածի կարգավորումներից:';

  @override
  String get message_notification_permission_title => 'Ծանուցման թույլտվություն';

  @override
  String get action_ok => 'լավ';

  @override
  String get menu_website => 'Կայք';

  @override
  String get action_confirm_and_reserve_ride => 'Հաստատեք և ամրագրեք ուղևորությունը';

  @override
  String get title_reserve_ride => 'Պահուստային Ուղևորություն';

  @override
  String get error_region_unsupported => 'Տարածաշրջանը չի աջակցվում:';

  @override
  String get action_confirm => 'Հաստատել';

  @override
  String get title_wait_time => 'Սպասեք ժամանակ';

  @override
  String get notice_tip_title => 'Կցանկանայի՞ք հուշում ավելացնել:';

  @override
  String get notice_tip_description => 'Հուշում ավելացնելը պարտադիր չէ: Դուք կարող եք ավելացնել ցանկացած գումար, որը ցանկանում եք, որպես թեյավճար վարորդի համար:';

  @override
  String get action_pay_for_ride => 'Վճարեք զբոսանքի համար';

  @override
  String get action_confirm_and_pay => 'Հաստատեք և վճարեք';

  @override
  String get action_add_photo => 'Ավելացնել լուսանկար';

  @override
  String get complaint_submit_success_message => 'Բողոք է ներկայացվում։ Խնդրում ենք սպասել մեր աջակցության ներկայացուցչի կողմից ձեր հարցման վերաբերյալ կապի:';

  @override
  String get error_field_cant_be_empty => 'Չի կարող դատարկ լինել';

  @override
  String get issue_description_placeholder => 'Գրեք ձեր խնդրի նկարագրությունը...';

  @override
  String get issue_subject_placeholder => 'Առարկա';

  @override
  String get issue_submit_description => 'Դուք կարող եք զեկուցել ձեր ուղևորության հետ կապված ցանկացած խնդրի մասին: Մենք ձեզ կօգնենք հարցի շուրջ զանգի ընթացքում։';

  @override
  String get issue_submit_title => 'Հաղորդել խնդրի մասին';

  @override
  String get issue_submit_button => 'Հաղորդել խնդրի մասին';

  @override
  String get trip_information_title => 'Ուղևորության մասին տեղեկատվություն';

  @override
  String get payment_in_cash => 'Կանխիկ';

  @override
  String get payment_method_title => 'Վճարման եղանակ';

  @override
  String get button_ride_safety => 'Ուղևորության անվտանգություն';

  @override
  String get status_title_driver_arrived => 'Հանդիպեք վարորդին պիկապ կետում';

  @override
  String get status_title_trip_started => 'Ուղևորություն դեպի նպատակակետ';

  @override
  String get welcome_card_subtitle => 'Ուր ես գնում?';

  @override
  String get welcome_card_textbox_placeholder => 'Որտե՞ղ է ձեր նպատակակետը:';

  @override
  String welcome_card_greeting(Object firstName) {
    return 'Բարև $firstName';
  }

  @override
  String get login_title => 'Մուտք գործել';

  @override
  String get login_body => 'Նախ, դուք պետք է մուտք գործեք ձեր ուղևորությունը պատվիրելու համար: Ձեր հեռախոսահամարին կուղարկվի հաստատման կոդը:';

  @override
  String get terms_and_condition_text => 'Ես կարդացել եմ և համաձայն եմ';

  @override
  String get terms_and_condition_button => 'Պայմաններ եւ դրույթներ';

  @override
  String get login_verify_code_title => 'Մուտքագրեք կոդը';

  @override
  String get login_verify_code_body => 'Կոդն ուղարկվել է ձեր հեռախոսահամարին';

  @override
  String get action_continue => 'Շարունակել';

  @override
  String get current_location => 'Ընթացիկ գտնվելու վայրը';

  @override
  String get your_destination => 'Ձեր նպատակակետը';

  @override
  String get add_stop => 'Ավելացնել Stop';

  @override
  String get action_choose_on_map => 'ընտրել քարտեզի վրա';

  @override
  String get message_title_location => 'Գտնվելու վայրը';

  @override
  String get message_body_location => 'Մենք չկարողացանք ստանալ ձեր ընթացիկ գտնվելու վայրը ձեր սարքի GPS-ից: Խնդրում ենք օգտագործել որոնման դաշտը՝ ձեր տեղափոխման վայրը ընտրելու համար:';

  @override
  String get menu_reserved_rides => 'Վերապահված զբոսանքներ';

  @override
  String get reservation_empty_state_title => 'Առանց վերապահումների:';

  @override
  String get reservation_empty_state_body => 'Դուք կկարողանաք տեսնել ձեր ապագա ամրագրումները, երբ դրանք կատարեք հիմնական էկրանին:';

  @override
  String get action_cancel_ride => 'Չեղարկել Ուղևորությունը';

  @override
  String get enum_address_type_gym => 'մարզասրահ';

  @override
  String get enum_address_type_parent_house => 'Ծնողական տուն';

  @override
  String get enum_address_type_cafe => 'Սրճարան';

  @override
  String get enum_address_type_park => 'Պուրակ';

  @override
  String get action_add_favorite_location => 'Ավելացնել սիրելի գտնվելու վայրը';

  @override
  String get favorite_locations_list_title => 'Սիրված վայրերը';

  @override
  String get favorite_locations_list_body => 'Դուք կարող եք պահպանել ձեր նախընտրած վայրերը՝ ավելի հեշտ մուտք գործելու համար';

  @override
  String get favorite_location_details_title => 'Անվանեք ձեր նախընտրած վայրը';

  @override
  String get textbox_error_select_type_address => 'Խնդրում ենք ընտրել հասցեի տեսակը';

  @override
  String get placeholder_type => 'Տիպ';

  @override
  String get action_delete_account => 'Հաշիվը ջնջել';

  @override
  String get message_delete_account_title => 'Հաշվի ջնջում';

  @override
  String get message_delete_account_body => 'Իսկապե՞ս ուզում եք ջնջել ձեր հաշիվը: Հաշիվը վերականգնելու համար կարող եք նորից մուտք գործել 30 օրվա ընթացքում: Այս ժամանակահատվածից հետո ձեր տվյալները ամբողջությամբ կջնջվեն, ներառյալ ձեր մնացած բոլոր վարկերը:';

  @override
  String get action_edit => 'Խմբագրել';

  @override
  String get action_confirm_location => 'Հաստատեք գտնվելու վայրը';

  @override
  String get action_coupon_code => 'Կտրոնի կոդը';

  @override
  String get enter_coupon_dialog_title => 'Կտրոնի կոդը';

  @override
  String get enter_coupon_dialog_body => 'Տեղադրեք ձեր կուպոնի կոդը, որը կկիրառվի գնի վրա';

  @override
  String get enter_coupon_placeholder => 'Մուտքագրեք կտրոնի կոդը';

  @override
  String get looking_dialog_title => 'Ուղևորություն է պահանջվում';

  @override
  String get looking_dialog_body => 'Մենք փնտրում ենք ձեզ մոտակա վարորդին։';

  @override
  String get action_cancel_request => 'Չեղարկել հարցումը';

  @override
  String get rate_ride_title => 'Ինչպիսի՞ն էր ձեր ճանապարհորդությունը:';

  @override
  String get rate_ride_body => 'Օգնեք մեզ բարելավել ձեր փորձը՝ գնահատելով ձեր վարորդին';

  @override
  String get rate_ride_good_points => 'Հաճելի միավորներ';

  @override
  String get rate_ride_negative_points => 'Բացասական միավորներ';

  @override
  String get rate_ride_comment_title => 'Ավելացնել մեկնաբանություն';

  @override
  String get rate_ride_comment_placeholder => 'գրեք ձեր մեկնաբանությունը...';

  @override
  String get action_send_feedback => 'Ուղարկել գնահատական';

  @override
  String get action_ride_options => 'Ուղևորության ընտրանքներ';

  @override
  String get ride_options_title => 'Ուղևորության ընտրանքներ';

  @override
  String get ride_options_wait_time_action => 'Սպասեք ժամանակ';

  @override
  String get ride_safety_title => 'Ուղևորության անվտանգություն';

  @override
  String get ride_safety_share_trip_information => 'Կիսվեք ուղևորության մասին տեղեկություններով';

  @override
  String get ride_safety_sos => 'SOS';

  @override
  String get sos_title => 'Աղետի ազդանշան';

  @override
  String get sos_body => 'Աղետի ազդանշանները արտակարգ իրավիճակների համար են, և ձեր անունից կարող են զանգահարել այնպիսի իշխանություններին, ինչպիսին է ոստիկանությունը: Խնդրում ենք օգտագործել այս հնարավորությունը միայն արտակարգ իրավիճակներում, որոնք կարող են վտանգված լինել:';

  @override
  String get sos_sent_alert => 'SOS ուղարկված է';

  @override
  String get sos_ok_action => 'Արտակարգ դեպք է';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Ես ճանապարհին եմ դեպի $destination $pickup-ից:';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Իմ վարորդի անունն է $firstName $lastName և նրա բջջային համարը +$mobileNumber:';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Ուղևորությունը սկսվել է $startTime-ին, և ես ակնկալում եմ, որ ճանապարհորդությունը կտևի մոտ $duration րոպե';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Ես ակնկալում եմ, որ ճանապարհորդությունն ինքնին տևում է մոտ $duration րոպե, երբ ես նստեմ վարորդի մեքենան:';
  }

  @override
  String get announcements_empty_state_title => 'Դեռևս հայտարարություններ չկան:';

  @override
  String get announcements_empty_state_body => 'Մենք ձեզ կտեղեկացնենք, երբ նոր հայտարարություններ լինեն։';

  @override
  String get action_set_location => 'Սահմանել տեղադրությունը';

  @override
  String get trip_history_empty_state_title => 'Ոչ մի գրառում:';

  @override
  String get location_not_found_alert_dialog_title => 'Գտնվելու վայրը';

  @override
  String get location_not_found_alert_dialog_body => 'Մենք չկարողացանք ստանալ ձեր ընթացիկ գտնվելու վայրը՝ օգտագործելով ձեր սարքի GPS-ը: Խնդրում ենք ստուգել սարքի տեղադրության թույլտվությունը հավելվածի համար սարքի կարգավորումներից: Որպես այլընտրանք, դուք կարող եք օգտագործել վերևի որոնման դաշտը՝ ձեր հավաքման կետն ընտրելու համար:';

  @override
  String get gift_card_title => 'Մուտքագրեք նվեր կոդը';

  @override
  String get gift_card_body => 'Մուտքագրեք ձեր նվեր քարտի կոդը';

  @override
  String get gift_card_text_placeholder => 'Մուտքագրեք նվեր քարտի կոդը';

  @override
  String get action_apply => 'Դիմել';

  @override
  String get order_status_should_be_arrived => 'պետք է ժամանել';

  @override
  String order_status_arriving_in(Object minutes) {
    return 'Ժամանում $minutes';
  }

  @override
  String get message_title_warning => 'Զգուշացում';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'Ծառայության չեղարկումը այն բանից հետո, երբ վարորդն ընդունել է ուղևորությունը, ենթակա է չեղարկման տույժի՝ $fee: Դուք հաստատո՞ւմ եք:';
  }

  @override
  String get confirm => 'Հաստատել';

  @override
  String get add_credit_select_payment_method => 'Ընտրեք վճարման եղանակը.';

  @override
  String get add_credit_custom_credit_placeholder => 'Ավելացնել անհատական վարկ';

  @override
  String get add_credit_custom_credit_text_placeholder => 'Պատվերով';

  @override
  String get invoice_item_tip => 'Հուշում';

  @override
  String get invoice_item_wallet => 'Դրամապանակ';

  @override
  String get invoice_item_total => 'Ընդամենը';

  @override
  String get add_credit_dialog_title => 'Ավելացնել վարկ';

  @override
  String get add_credit_choose_amount => 'Ընտրեք գումարը';

  @override
  String get action_ride_preferences => 'Ուղևորության նախապատվություններ';

  @override
  String get ride_preferences_title => 'Ուղևորության նախապատվություններ';

  @override
  String get action_confirm_and_continue => 'Հաստատել և շարունակել';

  @override
  String get action_see_reserved_rides => 'Տես վերապահված երթուղիները';

  @override
  String get ride_reserved_dialog_title => 'Ձեր ուղևորությունը վերապահված է:';

  @override
  String get ride_reserved_dialog_body => 'Դուք կարող եք ստուգել վերապահված ուղևորությունները մենյուում՝ այս ուղևորության մասին տեղեկությունները տեսնելու համար:';

  @override
  String get alert_coupon_unavailable => 'Կտրոնն անհասանելի է';

  @override
  String minutes_format(Object minutes) {
    return '$minutes րոպե';
  }

  @override
  String get action_back => 'Ետ';

  @override
  String wallet_card_title(Object appName) {
    return '$appName դրամապանակ';
  }

  @override
  String get action_redeem_gift_card => 'Փրկեք նվեր քարտը';

  @override
  String get order_status_canceled => 'Չեղարկված է';

  @override
  String get action_skip_for_now => 'Առայժմ բաց թողեք';

  @override
  String get onboarding_select_language_title => 'Ընտրել լեզուն';

  @override
  String onboarding_first_page_title(Object appName) {
    return 'Բարի գալուստ $appName';
  }

  @override
  String get onboarding_first_page_body => 'Ձեր հարմարավետության համար նախատեսված տաքսի ծառայություն\n Ուղևորություններ կատարեք ձեր սիրելի վարորդների հետ և ընտրեք ձեր երթևեկության նախասիրությունները';

  @override
  String get onboarding_second_page_title => 'Ստացեք պարգևատրում:';

  @override
  String get onboarding_second_page_body => 'ստացեք հավելյալ բոնուսներ ընկերոջը ուղղորդելու, ուղևորություններ ավարտելու և շատ ավելին...';

  @override
  String get onboarding_sign_in_title => 'Մուտք գործել';

  @override
  String get onboarding_sign_in_body => 'Մուտք գործելուց և հարմարավետ ճանապարհորդություն սկսելուց մի քանի վայրկյան է մնացել';

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
