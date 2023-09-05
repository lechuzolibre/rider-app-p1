import 'messages.dart';

/// The translations for Swedish (`sv`).
class SSv extends S {
  SSv([String locale = 'sv']) : super(locale);

  @override
  String get loading => 'Laddar';

  @override
  String get wallet_empty_state_message => 'Din plånbok är tom.';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'Avgift';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'Utdrag';

  @override
  String get enum_rider_transaction_deduct_correction => 'Korrigering';

  @override
  String get enum_unknown => 'Okänd';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'App Betalning';

  @override
  String get enum_rider_transaction_recharge_gift => 'Gåva';

  @override
  String get enum_rider_transaction_recharge_correction => 'Korrigering';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'Bank Överföring';

  @override
  String get top_up_sheet_pay_button => 'Betala';

  @override
  String get service_selection_book_now => 'Boka Nu';

  @override
  String get action_cancel => 'Avbryt';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Alla rättigheter förbehållna.';
  }

  @override
  String get menu_about => 'Om';

  @override
  String get menu_login => 'Login';

  @override
  String get menu_profile => 'Profil';

  @override
  String get menu_wallet => 'Plånbok';

  @override
  String get menu_trip_history => 'Resor - Historik';

  @override
  String get menu_announcements => 'Meddelande';

  @override
  String get menu_saved_locations => 'Sparade Platser';

  @override
  String get action_save => 'Spara';

  @override
  String get create_address_name_empty_error => 'Var god ange namn och plats';

  @override
  String get create_address_title_textfield_hint => 'Titel';

  @override
  String get action_delete => 'Radera';

  @override
  String get trip_history_empty_state_message => 'Inga tidigare resor har registrerats.';

  @override
  String get profile_firstname => 'Förnamn';

  @override
  String get profile_lastname => 'Efternamn';

  @override
  String get profile_email => 'E-post';

  @override
  String get profile_gender => 'Kön';

  @override
  String get enum_gender_male => 'Man';

  @override
  String get enum_gender_female => 'Kvinna';

  @override
  String get login_cell_number_textfield_hint => 'Mobilnummer';

  @override
  String get login_cell_number_empty_error => 'Var god ange telefon nummer i korrekt format';

  @override
  String get action_next => 'Nästa';

  @override
  String get verify_phone_code_empty_message => 'Verifieringskod har ej angivits.';

  @override
  String get wallet_activities_heading => 'Aktivitet';

  @override
  String get menu_logout => 'Logga Ut';

  @override
  String get enum_gender_unknown => 'Okänd';

  @override
  String get enum_address_type_home => 'Hem';

  @override
  String get enum_address_type_work => 'Arbete';

  @override
  String get enum_address_type_partner => 'Partner';

  @override
  String get enum_address_type_other => 'Annan';

  @override
  String get message_notification_permission_denined_message => 'Notifikationer var ej godkända förr. För att få nya order notifikationer kan du ge ditt godkännande under inställningar.';

  @override
  String get message_notification_permission_title => 'Notifikation Tillåtelse';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_website => 'Webbsida';

  @override
  String get action_confirm_and_reserve_ride => 'Bekräfta & Reservera resa';

  @override
  String get title_reserve_ride => 'Reservera Resa';

  @override
  String get error_region_unsupported => 'Region stöds ej.';

  @override
  String get action_confirm => 'Godkänn';

  @override
  String get title_wait_time => 'Väntetid';

  @override
  String get notice_tip_title => 'Vill du lämna dricks?';

  @override
  String get notice_tip_description => 'Dricks är alternativt. Du kan lämna vilken summa du vill till föraren.';

  @override
  String get action_pay_for_ride => 'Betala för resan';

  @override
  String get action_confirm_and_pay => 'Godkänn & Betala';

  @override
  String get action_add_photo => 'Lägg till foto';

  @override
  String get complaint_submit_success_message => 'Klagomålet har skickats. Var god vänta på att vår support kontaktar er.';

  @override
  String get error_field_cant_be_empty => 'Kan ej vara tom';

  @override
  String get issue_description_placeholder => 'Var god beskriv ditt problem...';

  @override
  String get issue_subject_placeholder => 'Ämne';

  @override
  String get issue_submit_description => 'Du kan rapportera problem eller bekymmer med din resa. Vi hjälper dig med ett telefonsamtal.';

  @override
  String get issue_submit_title => 'Rapportera ett problem';

  @override
  String get issue_submit_button => 'Rapportera problem';

  @override
  String get trip_information_title => 'Resa - Information';

  @override
  String get payment_in_cash => 'Pengar';

  @override
  String get payment_method_title => 'Betalningsmetod';

  @override
  String get button_ride_safety => 'Resa - Säkerhet';

  @override
  String get status_title_driver_arrived => 'Möt förare vid upphämtningsplats';

  @override
  String get status_title_trip_started => 'På väg till destination';

  @override
  String get welcome_card_subtitle => 'Vart är du på väg?';

  @override
  String get welcome_card_textbox_placeholder => 'Var är din destination?';

  @override
  String welcome_card_greeting(Object firstName) {
    return 'Hallå$firstName!';
  }

  @override
  String get login_title => 'Logga in';

  @override
  String get login_body => 'Först, måste du logga in för att boka din tur. En verifikationskod kommer skickas till ditt mobilnummer.';

  @override
  String get terms_and_condition_text => 'Jag har läst och godkänner ';

  @override
  String get terms_and_condition_button => 'Villkor';

  @override
  String get login_verify_code_title => 'Tryck in kod';

  @override
  String get login_verify_code_body => 'En kod har skickats till ditt mobilnummer';

  @override
  String get action_continue => 'Fortsätt';

  @override
  String get current_location => 'Nuvarande Plats';

  @override
  String get your_destination => 'Din destination';

  @override
  String get add_stop => 'Lägg till hållplats';

  @override
  String get action_choose_on_map => 'Välj på karta';

  @override
  String get message_title_location => 'Plats';

  @override
  String get message_body_location => 'Vi kunde ej hitta din nuvarande plats via din GPS. Var god använd sökfältet för att välja din upphämtningsplats.';

  @override
  String get menu_reserved_rides => 'Reserverade Turer';

  @override
  String get reservation_empty_state_title => 'Inga Reservationer!';

  @override
  String get reservation_empty_state_body => 'Du kommer kunna se dina framtida bokningar när du gör dem via huvudsidan.';

  @override
  String get action_cancel_ride => 'Avbryt Resa';

  @override
  String get enum_address_type_gym => 'Gym';

  @override
  String get enum_address_type_parent_house => 'Föräldrars Hus';

  @override
  String get enum_address_type_cafe => 'Cafe';

  @override
  String get enum_address_type_park => 'Park';

  @override
  String get action_add_favorite_location => 'Lägg till platser';

  @override
  String get favorite_locations_list_title => 'Sparade Platser';

  @override
  String get favorite_locations_list_body => 'Du kan spara dina favoritplatser för enklare tillgång';

  @override
  String get favorite_location_details_title => 'Namnge din favoritplats';

  @override
  String get textbox_error_select_type_address => 'Var god välj typen av adress';

  @override
  String get placeholder_type => 'Typ';

  @override
  String get action_delete_account => 'Radera Konto';

  @override
  String get message_delete_account_title => 'Kontoradering';

  @override
  String get message_delete_account_body => 'Är du säker att du vill radera ditt konto? Du kan logga in igen inom 30 dagar för att återställa kontot. Efter denna period, tar vi helt bort din data, inklusive återstående kredit.';

  @override
  String get action_edit => 'Redigera';

  @override
  String get action_confirm_location => 'Bekräfta plats';

  @override
  String get action_coupon_code => 'Kupong Kod';

  @override
  String get enter_coupon_dialog_title => 'Kupong Kod';

  @override
  String get enter_coupon_dialog_body => 'Tryck in din kupong kod för att applicera den på priset';

  @override
  String get enter_coupon_placeholder => 'Tryck in kupong kod';

  @override
  String get looking_dialog_title => 'Resa Begärd';

  @override
  String get looking_dialog_body => 'Vi söker efter närmaste förare.';

  @override
  String get action_cancel_request => 'Avbryt begäran';

  @override
  String get rate_ride_title => 'Hur var din resa?';

  @override
  String get rate_ride_body => 'Hjälp oss förbättra din upplevelse genom att betygsätta din förare';

  @override
  String get rate_ride_good_points => 'Goda Punkter';

  @override
  String get rate_ride_negative_points => 'Negativa Punkter';

  @override
  String get rate_ride_comment_title => 'Skriv kommentar';

  @override
  String get rate_ride_comment_placeholder => 'skriv din kommentar...';

  @override
  String get action_send_feedback => 'Skicka Feedback';

  @override
  String get action_ride_options => 'Resealternativ';

  @override
  String get ride_options_title => 'Resealternativ';

  @override
  String get ride_options_wait_time_action => 'Väntetid';

  @override
  String get ride_safety_title => 'Resa - Säkerhet';

  @override
  String get ride_safety_share_trip_information => 'Dela reseinformation';

  @override
  String get ride_safety_sos => 'SOS';

  @override
  String get sos_title => 'Nödsignal';

  @override
  String get sos_body => 'Nödsignaler är för nödsituationer och kallelser på exempelvis polis kan göras åt dig. Var god använd endast detta verktyg i farliga nödsituationer.';

  @override
  String get sos_sent_alert => 'SOS har skickats';

  @override
  String get sos_ok_action => 'Det är en Nödsituation';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Jag är på väg till $destination från $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Mitt namn är $firstName $lastName och mitt mobilnummer som förare är +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Resa har börjat $startTime och förväntas ta $duration minuter';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Jag förväntar att resan tar ungefär $duration minuter när jag kommer till förarens bil.';
  }

  @override
  String get announcements_empty_state_title => 'Inga meddelanden än!';

  @override
  String get announcements_empty_state_body => 'Vi kommer meddela dig när nyheter kommer.';

  @override
  String get action_set_location => 'Ställ in Plats';

  @override
  String get trip_history_empty_state_title => 'Ingen historik registrerat!';

  @override
  String get location_not_found_alert_dialog_title => 'Plats';

  @override
  String get location_not_found_alert_dialog_body => 'Vi kunde ej hitta din nuvarande plats via din GPS. Var god kolla din apparats inställningar för tillgång till plats. Alternativt kan du använda sökfältet ovan för att välja din upphämtningsplats.';

  @override
  String get gift_card_title => 'Ange Presentkod';

  @override
  String get gift_card_body => 'Ange din Presentkortskod';

  @override
  String get gift_card_text_placeholder => 'Ange Presentkortskod';

  @override
  String get action_apply => 'Ansök';

  @override
  String get order_status_should_be_arrived => 'bör vara framme';

  @override
  String order_status_arriving_in(Object minutes) {
    return 'Ankomst inom $minutes';
  }

  @override
  String get message_title_warning => 'Varning';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'Om du avbryter efter att föraren har accepterat turen kan det medföja en extra kostnad på $fee. Bekräftar du?';
  }

  @override
  String get confirm => 'Bekräfta';

  @override
  String get add_credit_select_payment_method => 'Välj Betalningsmetod:';

  @override
  String get add_credit_custom_credit_placeholder => 'Utöka din Kredit';

  @override
  String get add_credit_custom_credit_text_placeholder => 'Belopp';

  @override
  String get invoice_item_tip => 'Dricks';

  @override
  String get invoice_item_wallet => 'Plånbok';

  @override
  String get invoice_item_total => 'Total';

  @override
  String get add_credit_dialog_title => 'Betala din resa';

  @override
  String get add_credit_choose_amount => 'Välj summa';

  @override
  String get action_ride_preferences => 'Preferenser';

  @override
  String get ride_preferences_title => 'Preferenser';

  @override
  String get action_confirm_and_continue => 'Bekräfta & Fortsätt';

  @override
  String get action_see_reserved_rides => 'Se reserverade resor';

  @override
  String get ride_reserved_dialog_title => 'Din tur är reserverad.';

  @override
  String get ride_reserved_dialog_body => 'Du kan kolla dina reserverade resor i menyn för att se info om din resa.';

  @override
  String get alert_coupon_unavailable => 'Kupong är otillgänglig';

  @override
  String minutes_format(Object minutes) {
    return '$minutes minuter';
  }

  @override
  String get action_back => 'Tillbaka';

  @override
  String wallet_card_title(Object appName) {
    return '$appName Plånbok';
  }

  @override
  String get action_redeem_gift_card => 'Lös in Presentkort';

  @override
  String get order_status_canceled => 'Avbruten';

  @override
  String get action_skip_for_now => 'Skippa';

  @override
  String get onboarding_select_language_title => 'Välj Språk';

  @override
  String onboarding_first_page_title(Object appName) {
    return 'Välkommen till $appName!';
  }

  @override
  String get onboarding_first_page_body => 'Taxi service designad för din trivsel \n ha resor med dina favoritförare och välj dina preferenser';

  @override
  String get onboarding_second_page_title => 'Skaffa bonus!';

  @override
  String get onboarding_second_page_body => 'Få extra bonusar genom att rekommendera till en kompis, slutföra dina resor och mycket mer...';

  @override
  String get onboarding_sign_in_title => 'Logga in';

  @override
  String get onboarding_sign_in_body => 'Bara ett par steg ifrån att börja din resa';

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
