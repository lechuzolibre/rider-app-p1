import 'messages.dart';

/// The translations for Amharic (`am`).
class SAm extends S {
  SAm([String locale = 'am']) : super(locale);

  @override
  String get loading => 'በመጫን ላይ..';

  @override
  String get wallet_empty_state_message => 'ምንም የተመዘገበ ታሪክ የለም።';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'የክፍያ ትዕዛዝ';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'ገንዘብ ማውጣት';

  @override
  String get enum_rider_transaction_deduct_correction => 'እርማት';

  @override
  String get enum_unknown => 'Unkonwn';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'የውስጠ-መተግበሪያ ክፍያ';

  @override
  String get enum_rider_transaction_recharge_gift => 'ስጦታ';

  @override
  String get enum_rider_transaction_recharge_correction => 'እርማት';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'በባንክ ያስተላልፉ';

  @override
  String get top_up_sheet_pay_button => 'ይክፈሉ';

  @override
  String get service_selection_book_now => 'አሁን ይዘዙ';

  @override
  String get action_cancel => 'ሰርዝ';

  @override
  String copyright_notice(Object company) {
    return 'የቅጂ መብት © $company, 2022 መብቱ በህግ የተጠበቀ ነው።';
  }

  @override
  String get menu_about => 'ስለእኛ';

  @override
  String get menu_login => 'ይግቡ';

  @override
  String get menu_profile => 'ፕሮፋይል';

  @override
  String get menu_wallet => 'ዋሌት';

  @override
  String get menu_trip_history => 'የጉዞ ታሪክ';

  @override
  String get menu_announcements => 'ማስታወቂያዎች';

  @override
  String get menu_saved_locations => 'Saved የተደረጉ ቦታዎች';

  @override
  String get action_save => 'Save';

  @override
  String get create_address_name_empty_error => 'እባክዎን የአካባቢ ስም ያስገቡ';

  @override
  String get create_address_title_textfield_hint => 'ርዕስ';

  @override
  String get action_delete => 'Delete';

  @override
  String get trip_history_empty_state_message => 'ምንም ያለፈ ትዕዛዝ አልተመዘገበም።';

  @override
  String get profile_firstname => 'መጠሪያ ስም';

  @override
  String get profile_lastname => 'ያኣባት ስም';

  @override
  String get profile_email => 'ኢ-ሜይል';

  @override
  String get profile_gender => 'ጾታ';

  @override
  String get enum_gender_male => 'ወንድ';

  @override
  String get enum_gender_female => 'ሴት';

  @override
  String get login_cell_number_textfield_hint => 'ስልክ ቁጥር';

  @override
  String get login_cell_number_empty_error => 'እባክዎን ስልክ ቁጥሩን በትክክለኛው ቅርጸት ያስገቡ';

  @override
  String get action_next => 'Next';

  @override
  String get verify_phone_code_empty_message => 'የማረጋገጫ ኮድ አልገባም።';

  @override
  String get wallet_activities_heading => 'Activity';

  @override
  String get menu_logout => 'ይውጡ';

  @override
  String get enum_gender_unknown => 'የማይታወቅ';

  @override
  String get enum_address_type_home => 'Home';

  @override
  String get enum_address_type_work => 'Work';

  @override
  String get enum_address_type_partner => 'Partner';

  @override
  String get enum_address_type_other => 'Other';

  @override
  String get message_notification_permission_denined_message => 'የማሳወቂያ ፈቃድ ቀደም ብሎ ተከልክሏል። አዲስ ትዕዛዝ ለማግኘት\\ ማሳወቂያዎች, ፈቃዱን ከመተግበሪያ ቅንጅቶች ማንቃት ይችላሉ።';

  @override
  String get message_notification_permission_title => 'የማሳወቂያ ፍቃድ';

  @override
  String get action_ok => 'እሺ';

  @override
  String get menu_website => 'Website';

  @override
  String get action_confirm_and_reserve_ride => 'ያረጋግጡ እና ጉዞ ያስይዙ';

  @override
  String get title_reserve_ride => 'ጉዞ ያስይዙ';

  @override
  String get error_region_unsupported => 'በዚህ አካባቢ ለጊዜው አገልግሎት አልጀመርንም';

  @override
  String get action_confirm => 'ያረጋግጡ';

  @override
  String get title_wait_time => 'Wait time';

  @override
  String get notice_tip_title => 'ተጨማሪ Tip መስጠት ይፈልጋሉ?';

  @override
  String get notice_tip_description => 'Tip መስጠት አማራጭ ነው። ለሹፌሩ የፈለጉትን ያህል መጠን Tip ማከል ዎይም መስጥት ይችላሉ።';

  @override
  String get action_pay_for_ride => 'ለአገልግልቱ ይክፈሉ።';

  @override
  String get action_confirm_and_pay => 'ያረጋግጡ እና ይክፈሉ';

  @override
  String get action_add_photo => 'ፎቶ ያስገቡ';

  @override
  String get complaint_submit_success_message => 'ቅሬታዎን ተቀብልናል። እባክዎን ስለጥያቄዎን የድጋፍ ወኪሎቻቸን እስኪገናኙ ይጠብቁ።';

  @override
  String get error_field_cant_be_empty => 'ባዶ መሆን አይቻልም';

  @override
  String get issue_description_placeholder => 'ስለጉዳይዎ ማብራሪያ ይጻፉ…';

  @override
  String get issue_subject_placeholder => 'Subject';

  @override
  String get issue_submit_description => 'በጉዞዎ ላይ ያለዎትን ማንኛውንም ችግር ሪፖርት ማድረግ ይችላሉ። ስለ በጉዳዩ በእጅ ስልኮ በመደውል እንረዳዎታለን.';

  @override
  String get issue_submit_title => 'ሪፖርት ስለሚያደርጉት ጉዳይ';

  @override
  String get issue_submit_button => 'ችግሮን ሪፖርት ያድርጉ';

  @override
  String get trip_information_title => 'የጉዞ መረጃ';

  @override
  String get payment_in_cash => 'ካሽ';

  @override
  String get payment_method_title => 'የመክፈያ ዘዴ';

  @override
  String get button_ride_safety => 'የጉዞ ደህንነት';

  @override
  String get status_title_driver_arrived => 'የመውሰጃ ቦታ ላይ ሾፌሩን ያግኙ';

  @override
  String get status_title_trip_started => 'ወደ መድረሻው በመሄድ ላይ ነው';

  @override
  String get welcome_card_subtitle => 'ወዴት ነው የምትሄደት?';

  @override
  String get welcome_card_textbox_placeholder => 'መድረሻዎ ወዴት ነው?';

  @override
  String welcome_card_greeting(Object firstName) {
    return 'Hello $firstName!';
  }

  @override
  String get login_title => 'ይግቡ';

  @override
  String get login_body => 'በመጀመሪያ፣ የጉዞ ቦታዎን ለማስያዝ በመለያ መግባት አለብዎት። የማረጋገጫ ኮድ ወደ ስልክ ቁጥርህ ይላካል።';

  @override
  String get terms_and_condition_text => 'አንብቤ ተስማምቻለሁ ';

  @override
  String get terms_and_condition_button => 'ውሎች እና ሁኔታዎች';

  @override
  String get login_verify_code_title => 'ኮድ ያስገቡ';

  @override
  String get login_verify_code_body => 'ኮድ ወደ ስልክ ቁጥርዎ ተልኳል።';

  @override
  String get action_continue => 'ይቀጥሉ';

  @override
  String get current_location => 'አሁን ያሉበት ቦታ';

  @override
  String get your_destination => 'የእርሶ መድረሻ';

  @override
  String get add_stop => 'ማቆሚያ ይጨምሩ';

  @override
  String get action_choose_on_map => 'በካርታው ላይ ይምረጡ';

  @override
  String get message_title_location => 'አካባቢ/ቦታ';

  @override
  String get message_body_location => 'አሁን ያሉበት ቦታ ከስልክዎ ጂፒኤስ ማግኘት አልቻልንም። እባክዎን የመፈለጊያ ቦታዎን በመጠቀም የመንሻ ቦታዎን ይምረጡ።';

  @override
  String get menu_reserved_rides => 'የተያዘ ጉዞ';

  @override
  String get reservation_empty_state_title => 'ጉዞ አልተያዘም!';

  @override
  String get reservation_empty_state_body => 'የወደፊት ቦታ ማስያዣዎችዎን በዋናው ማያ ገጽ ላይ ካደረጉት በኋላ ማየት ይችላሉ።';

  @override
  String get action_cancel_ride => 'ጉዞ ይሰርዙ';

  @override
  String get enum_address_type_gym => 'ጂም';

  @override
  String get enum_address_type_parent_house => 'የእርስዎ ቤት';

  @override
  String get enum_address_type_cafe => 'ካፌ';

  @override
  String get enum_address_type_park => 'ፓርክ';

  @override
  String get action_add_favorite_location => 'ተወዳጅ ቦታን ጨምር';

  @override
  String get favorite_locations_list_title => 'ተወዳጅ ቦታዎች';

  @override
  String get favorite_locations_list_body => 'በቀላሉ ለመድረስ የሚወዷቸውን ቦታዎች ማስቀመጥ ይችላሉ።';

  @override
  String get favorite_location_details_title => 'የሚወዱትን ቦታ ይሰይሙ';

  @override
  String get textbox_error_select_type_address => 'እባክዎ የአድራሻውን አይነት ይምረጡ';

  @override
  String get placeholder_type => 'ዓይነት';

  @override
  String get action_delete_account => 'መለያ ሰርዝ';

  @override
  String get message_delete_account_title => 'መለያ ስረዛ';

  @override
  String get message_delete_account_body => 'እርግጠኛ ነህ መለያህን መሰረዝ ትፈልጋለህ? መለያውን ወደነበረበት ለመመለስ በ30 ቀናት ውስጥ እንደገና መግባት ይችላሉ። ከዚህ ጊዜ በኋላ፣ ሁሉንም ቀሪ ክሬዲቶችዎን ጨምሮ ውሂብዎ ሙሉ በሙሉ ይወገዳል።';

  @override
  String get action_edit => 'አርትዕ';

  @override
  String get action_confirm_location => 'ያሉበትን ቦታ ያረጋግጡ';

  @override
  String get action_coupon_code => 'የኩፖን ኮድ';

  @override
  String get enter_coupon_dialog_title => 'የኩፖን ኮድ';

  @override
  String get enter_coupon_dialog_body => 'በዋጋው ላይ እንዲተገበር የኩፖን ኮድዎን ያስገቡ';

  @override
  String get enter_coupon_placeholder => 'የኩፖን ኮድ ያስገቡ';

  @override
  String get looking_dialog_title => 'ጉዞ አዞዋል';

  @override
  String get looking_dialog_body => 'ለእርስዎ ቅርብ የሆነውን ሹፌር እየፈለግን ነው።';

  @override
  String get action_cancel_request => 'ትዕዛዙን ይሰሪዙ';

  @override
  String get rate_ride_title => 'ጉዞህ እንዴት ነበር?';

  @override
  String get rate_ride_body => 'ለአሽከርካሪዎ ደረጃ በመስጠት ልምድዎን እንድናሻሽል ያግዙን።';

  @override
  String get rate_ride_good_points => 'ቆንጆ ነጥብ';

  @override
  String get rate_ride_negative_points => 'አሉታዊ ነጥብ';

  @override
  String get rate_ride_comment_title => 'አስተያየት ያክሉ';

  @override
  String get rate_ride_comment_placeholder => 'አስተያየትዎን ይፃፉ…';

  @override
  String get action_send_feedback => 'ግብረመልስ ይላኩ';

  @override
  String get action_ride_options => 'የጉዞ አማራጮች';

  @override
  String get ride_options_title => 'የጉዞ አማራጮች';

  @override
  String get ride_options_wait_time_action => 'የቆይታ ጊዜ';

  @override
  String get ride_safety_title => 'የጉዞ ደህንነት';

  @override
  String get ride_safety_share_trip_information => 'የጉዞ መረጃን ያጋሩ';

  @override
  String get ride_safety_sos => 'SOS';

  @override
  String get sos_title => 'የአደጋ ምልክት';

  @override
  String get sos_body => 'የአደጋ ምልክቱ ለአደጋ ጊዜ እርስዎን ለመርዳት እንደ ፖሊስ ያሉ ህግ አስከባሪዎች ያሉበት ድርስ ይመጣሉ። እባኮትን ይህንን የአደጋ ጥሪ እርስዎ አደጋ ላይ ሊወድቁ በሚችሉ ሁኔታዎች ውስጥ ብቻ ይጠቀሙ።';

  @override
  String get sos_sent_alert => 'SOS/የአደጋ ጊዜ ጥሪ ተልኳል።';

  @override
  String get sos_ok_action => 'ድንገተኛ አደጋ ነው።';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'I am on my way to $destination from $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' የሹፌሩ ስም $firstName $lastName እና የሞባይል ቁጥሩ  +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Trip has started on $startTime and i expect the trip to take around $duration minutes';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' I expect the trip itself take around $duration minutes once i get on the driver\'s car.';
  }

  @override
  String get announcements_empty_state_title => 'እስካሁን ምንም ማስታወቂያዎች የሉም!';

  @override
  String get announcements_empty_state_body => 'አዲስ ማስታወቂያዎች ሲመጡ እናሳውቅዎታለን።';

  @override
  String get action_set_location => 'ቦታውን ያዘጋጁ';

  @override
  String get trip_history_empty_state_title => 'ምንም የተምዘገበ የለም!';

  @override
  String get location_not_found_alert_dialog_title => 'ቦታ';

  @override
  String get location_not_found_alert_dialog_body => 'የእርስዎን የስልክ ጂፒኤስ በመጠቀም አሁን ያለዎትን ቦታ ማግኘት አልቻልንም። እባኮትን ከስልኮን መተግበሪያው መቼት በመጠቀም የስልኮን የአካባቢ ፍቃድ ያረጋግጡ። Alternatively, የመንሻ ቦታዎን ለመምረጥ ከላይ ያለውን የፍለጋ መስክ መጠቀም ይችላሉ.';

  @override
  String get gift_card_title => 'የስጦታ ኮድ ያስገቡ';

  @override
  String get gift_card_body => 'የስጦታ ካርድ ኮድዎን ያስገቡ';

  @override
  String get gift_card_text_placeholder => 'የስጦታ ካርድ ኮድ ያስገቡ';

  @override
  String get action_apply => 'ያመልክቱ';

  @override
  String get order_status_should_be_arrived => 'መድረስ አለበት';

  @override
  String order_status_arriving_in(Object minutes) {
    return 'Arriving in $minutes';
  }

  @override
  String get message_title_warning => 'ማስጠንቀቂያ';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'አሽከርካሪው ጉዞውን ከተቀበለ በኋላ የአገልግሎቱን መሰረዝ የመሰረዝ ቅጣት ይጣልበታል $fee. አረጋግጠዋል?';
  }

  @override
  String get confirm => 'ያረጋግጡ';

  @override
  String get add_credit_select_payment_method => 'የመክፈያ ዘዴን ይምረጡ፡-';

  @override
  String get add_credit_custom_credit_placeholder => 'ብጁ ክሬዲት ይጨምሩ';

  @override
  String get add_credit_custom_credit_text_placeholder => 'ብጁ';

  @override
  String get invoice_item_tip => 'ትፕ';

  @override
  String get invoice_item_wallet => 'ዋሌት';

  @override
  String get invoice_item_total => 'ጠቅላላ';

  @override
  String get add_credit_dialog_title => 'ክሬዲት ይጨምሩ';

  @override
  String get add_credit_choose_amount => 'መጠኑን ይምረጡ';

  @override
  String get action_ride_preferences => 'የጉዞ ምርጫዎች';

  @override
  String get ride_preferences_title => 'የጉዞ ምርጫዎች';

  @override
  String get action_confirm_and_continue => 'ያረጋግጡ እና ይቀጥሉ';

  @override
  String get action_see_reserved_rides => 'የተያዘውን ጉዞ ይመልከቱ';

  @override
  String get ride_reserved_dialog_title => 'የእርስዎ ጉዞ የተጠበቀ ነው።';

  @override
  String get ride_reserved_dialog_body => 'የዚህን ጉዞ የተያዙ መረጃዎችን ለማየት በmenu ውስጥ የተያዙ ጉዞዎችን መመልከት ይችላሉ።';

  @override
  String get alert_coupon_unavailable => 'ኩፖን የለም።';

  @override
  String minutes_format(Object minutes) {
    return '$minutes minutes';
  }

  @override
  String get action_back => 'ተመለስ';

  @override
  String wallet_card_title(Object appName) {
    return '$appName ዋሌት';
  }

  @override
  String get action_redeem_gift_card => 'የስጦታ ካርድ ይውሰዱ';

  @override
  String get order_status_canceled => 'ተሰርዟል።';

  @override
  String get action_skip_for_now => 'ለአሁን ይዝለሉት';

  @override
  String get onboarding_select_language_title => 'ቋንቋ ይምረጡ';

  @override
  String onboarding_first_page_title(Object appName) {
    return 'እንኳን በደህና መጡ ወደ $appName!';
  }

  @override
  String get onboarding_first_page_body => 'ብሉ ራይድ ለእርስዎ ምቾት የተነደፈ የታክሲ አገልግሎት \n ከሚወዷቸው ሾፌሮች ጋር ጉዞ ያድርጉ እና የመጓጓዣ ምርጫዎችዎን ይምረጡ';

  @override
  String get onboarding_second_page_title => 'አሁኑኑ ይሸለሙ!';

  @override
  String get onboarding_second_page_body => 'ለጓደኛዎ በመላክ ፣ ጉዞዎችን ለማጠናቀቅ እና ሌሎች ብዙ ተጨማሪ ጉርሻዎችን ያግኙ...';

  @override
  String get onboarding_sign_in_title => 'Sign in';

  @override
  String get onboarding_sign_in_body => 'ለመግባት እና ምቹ ጉዞ ለመጀመር ጥቂት ሰከንዶች ቀርተውታል።';

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
