import 'messages.dart';

/// The translations for Oromo (`om`).
class SOm extends S {
  SOm([String locale = 'om']) : super(locale);

  @override
  String get loading => 'Loading';

  @override
  String get wallet_empty_state_message => 'Seenaan galmaa\'e hin jiru.';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'Kaffaltii Ajajaa';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'Withdraw';

  @override
  String get enum_rider_transaction_deduct_correction => 'Sirreeffama';

  @override
  String get enum_unknown => 'Unkonwn';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'Kaffaltii Appii Keessaa';

  @override
  String get enum_rider_transaction_recharge_gift => 'Kennaa';

  @override
  String get enum_rider_transaction_recharge_correction => 'Sirreeffama';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'Baankiin Dabarsuu';

  @override
  String get top_up_sheet_pay_button => 'Kaffaltii';

  @override
  String get service_selection_book_now => 'Amma ajajadhu';

  @override
  String get action_cancel => 'Haqi';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Mirgi Qopheessaa Seeraan Kan Eegame.';
  }

  @override
  String get menu_about => 'Waa\'ee';

  @override
  String get menu_login => 'Login';

  @override
  String get menu_profile => 'Profaayilii';

  @override
  String get menu_wallet => 'Waleetii';

  @override
  String get menu_trip_history => 'Seenaa Imala';

  @override
  String get menu_announcements => 'Beeksisa';

  @override
  String get menu_saved_locations => 'Bakkeewwan Qusataman';

  @override
  String get action_save => 'Save';

  @override
  String get create_address_name_empty_error => 'Maaloo maqaa iddoo galchaa';

  @override
  String get create_address_title_textfield_hint => 'Title';

  @override
  String get action_delete => 'Delete';

  @override
  String get trip_history_empty_state_message => 'Ajajni kanaan dura hin galmoofne.';

  @override
  String get profile_firstname => 'Maqaa Duraa';

  @override
  String get profile_lastname => 'Maqaa Abba';

  @override
  String get profile_email => 'Imeelii';

  @override
  String get profile_gender => 'Saala';

  @override
  String get enum_gender_male => 'Dhiira';

  @override
  String get enum_gender_female => 'Dhalaa';

  @override
  String get login_cell_number_textfield_hint => 'Lakkoofsa Bilbilaa';

  @override
  String get login_cell_number_empty_error => 'Maaloo lakkoofsa bilbilaa bifa sirrii ta\'een galchaa';

  @override
  String get action_next => 'itti aansee';

  @override
  String get verify_phone_code_empty_message => 'Koodiin mirkaneessaa hin galfamne';

  @override
  String get wallet_activities_heading => 'Activity';

  @override
  String get menu_logout => 'Ba\'i';

  @override
  String get enum_gender_unknown => 'Unknown';

  @override
  String get enum_address_type_home => 'Home';

  @override
  String get enum_address_type_work => 'Work';

  @override
  String get enum_address_type_partner => 'Partner';

  @override
  String get enum_address_type_other => 'Other';

  @override
  String get message_notification_permission_denined_message => 'Notification permission was denied previously. In order to get new order\\\'s notifications, you can enable the permission from app settings.';

  @override
  String get message_notification_permission_title => 'Notification Permission';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_website => 'Website';

  @override
  String get action_confirm_and_reserve_ride => 'Mirkaneessi & Reserve ride';

  @override
  String get title_reserve_ride => 'Yaabbannoo Reserve gochuu';

  @override
  String get error_region_unsupported => 'Tajaajilli Naannoo kana Ammaaf Hin Argamu';

  @override
  String get action_confirm => 'Mirkaneessi';

  @override
  String get title_wait_time => 'Yeroo eeguu';

  @override
  String get notice_tip_title => 'Tiipii itti dabaluu ni barbaadduu?';

  @override
  String get notice_tip_description => 'tiipii itti dabaluun filannoodha. Tiitii Hamma barbaadde konkolaachisaaf itti dabaluun ni danda\'ama.';

  @override
  String get action_pay_for_ride => 'Imalaaf kaffali';

  @override
  String get action_confirm_and_pay => 'Mirkaneessi & Kafali';

  @override
  String get action_add_photo => 'Suuraa Galchi';

  @override
  String get complaint_submit_success_message => 'Koomiin dhiyaateera. Maaloo waa\'ee gaaffii keessanii bakka bu\'aa deeggarsa keenyaa irraa quunnamtii eegaa.';

  @override
  String get error_field_cant_be_empty => 'Duwwaa ta\'uu hin danda\'u';

  @override
  String get issue_description_placeholder => 'Ibsa dhimma keessanii barreessaa...';

  @override
  String get issue_subject_placeholder => 'Mata duree';

  @override
  String get issue_submit_description => 'Dhimma konkolaataa keessan irratti qabdan kamiyyuu gabaasuu dandeessu. Dhimma kana irratti bilbila keessaniin isiniif bilbila.';

  @override
  String get issue_submit_title => 'Dhimma keessan nuuf gabaasaa';

  @override
  String get issue_submit_button => 'Dhimma gabaasaa';

  @override
  String get trip_information_title => 'Odeeffannoo Imala';

  @override
  String get payment_in_cash => 'Maallaqa callaa';

  @override
  String get payment_method_title => 'Akkaataa Kaffaltii';

  @override
  String get button_ride_safety => 'Safety imalaa';

  @override
  String get status_title_driver_arrived => 'Bakka ka\'umsaatti konkolaachisaa waliin wal arguu';

  @override
  String get status_title_trip_started => 'Gara bakka itti deemnutti qajeeluu';

  @override
  String get welcome_card_subtitle => 'Eessa deemaa jirtu?';

  @override
  String get welcome_card_textbox_placeholder => 'Bakki itti deemtan eessa jira?';

  @override
  String welcome_card_greeting(Object firstName) {
    return 'Hello $firstName!';
  }

  @override
  String get login_title => 'Sign In';

  @override
  String get login_body => 'Jalqaba, Yabachuuf sign in gochuu qabdu. Koodiin mirkaneessaa gara lakkoofsa bilbilaa keessaniitti ni ergama.';

  @override
  String get terms_and_condition_text => 'Ani dubbisee walii galeera ';

  @override
  String get terms_and_condition_button => 'Haala fi Dambiiwwan';

  @override
  String get login_verify_code_title => 'Koodii galchi';

  @override
  String get login_verify_code_body => 'Koodiin gara lakkoofsa bilbilaa keessaniitti ergameera';

  @override
  String get action_continue => 'Itti fufuu';

  @override
  String get current_location => 'Bakka Ammaa Jirtan';

  @override
  String get your_destination => 'Bakki itti deemtan';

  @override
  String get add_stop => 'Dhaabbii itti dabali';

  @override
  String get action_choose_on_map => 'kaartaa irratti filadhu';

  @override
  String get message_title_location => 'Bakka';

  @override
  String get message_body_location => 'Bakka amma jirtan GPS Bilbila keessan irraa argachuu hin dandeenye. Maaloo dirree barbaacha fayyadamii bakka Yaabanno filadhaa.';

  @override
  String get menu_reserved_rides => 'imala Reserved ta\'e';

  @override
  String get reservation_empty_state_title => 'Reservation Hin Qabu!';

  @override
  String get reservation_empty_state_body => 'You will be able to see your future bookings once you make them on the main screen.';

  @override
  String get action_cancel_ride => 'Imala haqi';

  @override
  String get enum_address_type_gym => 'Gym';

  @override
  String get enum_address_type_parent_house => 'Mana Warraa';

  @override
  String get enum_address_type_cafe => 'Kaaffee';

  @override
  String get enum_address_type_park => 'Paarkii';

  @override
  String get action_add_favorite_location => 'Bakka jaallattan itti dabala';

  @override
  String get favorite_locations_list_title => 'Bakkeewwan jaallattan';

  @override
  String get favorite_locations_list_body => 'Bakkeewwan jaallattan salphaatti argachuuf saaguu dandeessu';

  @override
  String get favorite_location_details_title => 'Bakka jaallattan maqaa dhaha';

  @override
  String get textbox_error_select_type_address => 'Maaloo gosa teessoo filadhu';

  @override
  String get placeholder_type => 'Akaakuu';

  @override
  String get action_delete_account => 'Akkaawuntii Haquu';

  @override
  String get message_delete_account_title => 'Akkaawuntii haquuf';

  @override
  String get message_delete_account_body => 'Akkaawuntii keessan haquu akka barbaaddu mirkaneeffatteettaa? Akkaawuntii sana deebisuuf guyyoota 30 keessatti deebitee seenuu dandeessa. Yeroo kana booda, daataa keessan guutummaatti ni haqama, Creditii keessan hafe hunda dabalatee.';

  @override
  String get action_edit => 'Gulaaluu';

  @override
  String get action_confirm_location => 'Bakka amma jirtu mirkaneessi';

  @override
  String get action_coupon_code => 'Koodii Kuuppoonii';

  @override
  String get enter_coupon_dialog_title => 'Koodii Kuuppoonii';

  @override
  String get enter_coupon_dialog_body => 'Koodii kuuppani keessan gatii irratti hojiirra oolu galchaa';

  @override
  String get enter_coupon_placeholder => 'Koodii kuuppanichaa galchaa';

  @override
  String get looking_dialog_title => 'imala Gaafatame';

  @override
  String get looking_dialog_body => 'Konkolaachisaa isinitti dhihoo jiru barbaadaa jirra.';

  @override
  String get action_cancel_request => 'Gaaffii Haqi';

  @override
  String get rate_ride_title => 'Yaabannoo keessan akkam ture?';

  @override
  String get rate_ride_body => 'Konkolaachisaa keessaniif sadarkaa kennuudhaan muuxannoo fooyyessuuf nu gargaaraa';

  @override
  String get rate_ride_good_points => 'Qabxiilee Mimmiidhagoo';

  @override
  String get rate_ride_negative_points => 'Qabxiilee Negaatiivii';

  @override
  String get rate_ride_comment_title => 'Yaada itti dabalaa';

  @override
  String get rate_ride_comment_placeholder => 'yaada keessan barreessaa ...';

  @override
  String get action_send_feedback => 'Yaada Ergaa';

  @override
  String get action_ride_options => 'Filannoo Yaabbannoo';

  @override
  String get ride_options_title => 'Filannoo Yaabbannoo';

  @override
  String get ride_options_wait_time_action => 'Yeroo eegaa';

  @override
  String get ride_safety_title => 'Safety imalaa';

  @override
  String get ride_safety_share_trip_information => 'Odeeffannoo imala waliif qoodaa';

  @override
  String get ride_safety_sos => 'SOS';

  @override
  String get sos_title => 'Mallattoo Rakkoo';

  @override
  String get sos_body => 'Mallattoon rakkoo yeroo muddamaa kan ta’ee fi waamichi aangawoota akka poolisii bakka keessan bu’uun godhamuu danda’a. Please use this feature only in emergencies that you might be in danger.';

  @override
  String get sos_sent_alert => 'SOS ergameera';

  @override
  String get sos_ok_action => 'Yeroo muddamaadha';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Ani karaa irra jira $destination irraa $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Maqaan konkolaachisaa koo $firstName $lastName lakkoofsi moobaayilaa isaas +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Imalli keessan eegalameera $startTime and i expect the trip to take around $duration minutes';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' I expect the trip itself take around $duration minutes once i get on the driver\'s car.';
  }

  @override
  String get announcements_empty_state_title => 'Ammatti Beeksisa hin jiru!';

  @override
  String get announcements_empty_state_body => 'Yeroo beeksisni haaraan dhufu isin beeksifna.';

  @override
  String get action_set_location => 'Bakka saagi';

  @override
  String get trip_history_empty_state_title => 'Galmee Hin Qabu!';

  @override
  String get location_not_found_alert_dialog_title => 'Bakka';

  @override
  String get location_not_found_alert_dialog_body => 'GPS moobaayilaa keessanii fayyadamuun bakka amma jirtan argachuu hin dandeenye. Maaloo hayyama bakka meeshaa appichaaf jiru qindaa\'ina meeshaa irraa ilaali. Akka filannootti, dirree barbaacha armaan olii fayyadamuun bakka fudhachuu kee filachuu dandeessa.';

  @override
  String get gift_card_title => 'Koodii Kennaa galchi';

  @override
  String get gift_card_body => 'Koodii kaardii kennaa keessanii galchaa';

  @override
  String get gift_card_text_placeholder => 'Koodii kaardii kennaa galchi';

  @override
  String get action_apply => 'Iyyadhu';

  @override
  String get order_status_should_be_arrived => 'bira gahuu qaba';

  @override
  String order_status_arriving_in(Object minutes) {
    return 'Arriving in $minutes';
  }

  @override
  String get message_title_warning => 'Akeekkachiisa';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'Konkolaachisaan imala erga fudhatee booda tajaajila haquun adabbii haquu kan $fee. Mirkaneessituu?';
  }

  @override
  String get confirm => 'Mirkaneessuu';

  @override
  String get add_credit_select_payment_method => 'Mala Kaffaltii Filadhu:';

  @override
  String get add_credit_custom_credit_placeholder => 'Creditii Aadaa Dabaluu';

  @override
  String get add_credit_custom_credit_text_placeholder => 'Custom';

  @override
  String get invoice_item_tip => 'Tiipii';

  @override
  String get invoice_item_wallet => 'Walleetii';

  @override
  String get invoice_item_total => 'Total';

  @override
  String get add_credit_dialog_title => 'Creditii itti dabalaa';

  @override
  String get add_credit_choose_amount => 'Hanga filatte';

  @override
  String get action_ride_preferences => 'Filannoo imaltootaa';

  @override
  String get ride_preferences_title => 'Filannoo imaltootaa';

  @override
  String get action_confirm_and_continue => 'Mirkaneessaa fi Itti Fufaa';

  @override
  String get action_see_reserved_rides => 'See reserved rides';

  @override
  String get ride_reserved_dialog_title => 'Your ride is reserved.';

  @override
  String get ride_reserved_dialog_body => 'You can check out reserved rides in the menu to see reserve information of this ride.';

  @override
  String get alert_coupon_unavailable => 'Kuuppaniin hin argamu';

  @override
  String minutes_format(Object minutes) {
    return '$minutes minutes';
  }

  @override
  String get action_back => 'Back';

  @override
  String wallet_card_title(Object appName) {
    return '$appName Wallet';
  }

  @override
  String get action_redeem_gift_card => 'Kaardii Kennaa furuu';

  @override
  String get order_status_canceled => 'Haqameera';

  @override
  String get action_skip_for_now => 'Ammaaf darbi';

  @override
  String get onboarding_select_language_title => 'Afaan filadhu';

  @override
  String onboarding_first_page_title(Object appName) {
    return 'Welcome to $appName!';
  }

  @override
  String get onboarding_first_page_body => 'Tajaajilli BlueRide akka isiniif mijatutti kan qophaa\'e \n Konkolaachiftoota jaallattan waliin Imala qabaachuu fi filannoo yaabbannoo keessan filadhaa';

  @override
  String get onboarding_second_page_title => 'Badhaasa argadhaa!';

  @override
  String get onboarding_second_page_body => 'hiriyyaa kee erguu keetiin bonasii dabalataa argadhu, imala xumuruu fi kanneen biroo hedduu...';

  @override
  String get onboarding_sign_in_title => 'Sign in';

  @override
  String get onboarding_sign_in_body => 'Sekondii muraasa booda galmaa\'uu fi yaabbannoo mijataa jalqabuuf';

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
