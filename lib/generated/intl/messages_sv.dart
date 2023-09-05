// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sv locale. All the
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
  String get localeName => 'sv';

  static String m0(fee) =>
      "Om du avbryter efter att föraren har accepterat turen kan det medföja en extra kostnad på ${fee}. Bekräftar du?";

  static String m1(company) =>
      "Copyright © ${company}, Alla rättigheter förbehållna.";

  static String m2(distance) => "${distance} ft";

  static String m3(distance) => "${distance} km";

  static String m4(distance) => "${distance} m";

  static String m5(distance) => "${distance} mi";

  static String m6(minutes) => "${minutes} minuter";

  static String m7(seconds) => "Resend code in ${seconds} seconds";

  static String m8(appName) => "Välkommen till ${appName}!";

  static String m9(minutes) => "Ankomst inom ${minutes}";

  static String m10(duration) =>
      " Jag förväntar att resan tar ungefär ${duration} minuter när jag kommer till förarens bil.";

  static String m11(startTime, duration) =>
      " Resa har börjat ${startTime} och förväntas ta ${duration} minuter";

  static String m12(firstName, lastName, mobileNumber) =>
      " Mitt namn är ${firstName} ${lastName} och mitt mobilnummer som förare är +${mobileNumber}.";

  static String m13(destination, pickup) =>
      "Jag är på väg till ${destination} från ${pickup}.";

  static String m14(appName) => "${appName} Plånbok";

  static String m15(firstName) => "Hallå${firstName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_favorite_location":
            MessageLookupByLibrary.simpleMessage("Lägg till platser"),
        "action_add_photo":
            MessageLookupByLibrary.simpleMessage("Lägg till foto"),
        "action_apply": MessageLookupByLibrary.simpleMessage("Ansök"),
        "action_back": MessageLookupByLibrary.simpleMessage("Tillbaka"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Avbryt"),
        "action_cancel_request":
            MessageLookupByLibrary.simpleMessage("Avbryt begäran"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("Avbryt Resa"),
        "action_choose_on_map":
            MessageLookupByLibrary.simpleMessage("Välj på karta"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("Godkänn"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("Bekräfta & Fortsätt"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("Godkänn & Betala"),
        "action_confirm_and_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Bekräfta & Reservera resa"),
        "action_confirm_location":
            MessageLookupByLibrary.simpleMessage("Bekräfta plats"),
        "action_continue": MessageLookupByLibrary.simpleMessage("Fortsätt"),
        "action_coupon_code":
            MessageLookupByLibrary.simpleMessage("Kupong Kod"),
        "action_delete": MessageLookupByLibrary.simpleMessage("Radera"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("Radera Konto"),
        "action_edit": MessageLookupByLibrary.simpleMessage("Redigera"),
        "action_next": MessageLookupByLibrary.simpleMessage("Nästa"),
        "action_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "action_pay_for_ride":
            MessageLookupByLibrary.simpleMessage("Betala för resan"),
        "action_redeem_gift_card":
            MessageLookupByLibrary.simpleMessage("Lös in Presentkort"),
        "action_resend_code":
            MessageLookupByLibrary.simpleMessage("Resend Code"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("Resealternativ"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("Preferenser"),
        "action_save": MessageLookupByLibrary.simpleMessage("Spara"),
        "action_see_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Se reserverade resor"),
        "action_send_feedback":
            MessageLookupByLibrary.simpleMessage("Skicka Feedback"),
        "action_set_location":
            MessageLookupByLibrary.simpleMessage("Ställ in Plats"),
        "action_skip_for_now": MessageLookupByLibrary.simpleMessage("Skippa"),
        "add_credit_choose_amount":
            MessageLookupByLibrary.simpleMessage("Välj summa"),
        "add_credit_custom_credit_placeholder":
            MessageLookupByLibrary.simpleMessage("Utöka din Kredit"),
        "add_credit_custom_credit_text_placeholder":
            MessageLookupByLibrary.simpleMessage("Belopp"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("Betala din resa"),
        "add_credit_select_payment_method":
            MessageLookupByLibrary.simpleMessage("Välj Betalningsmetod:"),
        "add_stop": MessageLookupByLibrary.simpleMessage("Lägg till hållplats"),
        "alert_coupon_unavailable":
            MessageLookupByLibrary.simpleMessage("Kupong är otillgänglig"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Vi kommer meddela dig när nyheter kommer."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Inga meddelanden än!"),
        "button_ride_safety":
            MessageLookupByLibrary.simpleMessage("Resa - Säkerhet"),
        "cancelation_fee_confirmation_body": m0,
        "complaint_submit_error_message": MessageLookupByLibrary.simpleMessage(
            "The submission of your complaint was unsuccessful, likely due to connectivity issues. Please try again."),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Klagomålet har skickats. Var god vänta på att vår support kontaktar er."),
        "confirm": MessageLookupByLibrary.simpleMessage("Bekräfta"),
        "copyright_notice": m1,
        "create_address_name_empty_error":
            MessageLookupByLibrary.simpleMessage("Var god ange namn och plats"),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Titel"),
        "current_location":
            MessageLookupByLibrary.simpleMessage("Nuvarande Plats"),
        "distanceFeet": m2,
        "distanceKm": m3,
        "distanceMeters": m4,
        "distanceMiles": m5,
        "enter_coupon_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Tryck in din kupong kod för att applicera den på priset"),
        "enter_coupon_dialog_title":
            MessageLookupByLibrary.simpleMessage("Kupong Kod"),
        "enter_coupon_placeholder":
            MessageLookupByLibrary.simpleMessage("Tryck in kupong kod"),
        "enum_address_type_cafe": MessageLookupByLibrary.simpleMessage("Cafe"),
        "enum_address_type_gym": MessageLookupByLibrary.simpleMessage("Gym"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("Hem"),
        "enum_address_type_other":
            MessageLookupByLibrary.simpleMessage("Annan"),
        "enum_address_type_parent_house":
            MessageLookupByLibrary.simpleMessage("Föräldrars Hus"),
        "enum_address_type_park": MessageLookupByLibrary.simpleMessage("Park"),
        "enum_address_type_partner":
            MessageLookupByLibrary.simpleMessage("Partner"),
        "enum_address_type_work":
            MessageLookupByLibrary.simpleMessage("Arbete"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("Kvinna"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("Man"),
        "enum_gender_unknown": MessageLookupByLibrary.simpleMessage("Okänd"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("Korrigering"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("Avgift"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("Utdrag"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Bank Överföring"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("Korrigering"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("Gåva"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("App Betalning"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Okänd"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Kan ej vara tom"),
        "error_region_unsupported":
            MessageLookupByLibrary.simpleMessage("Region stöds ej."),
        "favorite_location_details_title":
            MessageLookupByLibrary.simpleMessage("Namnge din favoritplats"),
        "favorite_locations_list_body": MessageLookupByLibrary.simpleMessage(
            "Du kan spara dina favoritplatser för enklare tillgång"),
        "favorite_locations_list_title":
            MessageLookupByLibrary.simpleMessage("Sparade Platser"),
        "gift_card_body":
            MessageLookupByLibrary.simpleMessage("Ange din Presentkortskod"),
        "gift_card_text_placeholder":
            MessageLookupByLibrary.simpleMessage("Ange Presentkortskod"),
        "gift_card_title":
            MessageLookupByLibrary.simpleMessage("Ange Presentkod"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("Dricks"),
        "invoice_item_total": MessageLookupByLibrary.simpleMessage("Total"),
        "invoice_item_wallet": MessageLookupByLibrary.simpleMessage("Plånbok"),
        "issue_description_placeholder": MessageLookupByLibrary.simpleMessage(
            "Var god beskriv ditt problem..."),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Ämne"),
        "issue_submit_button":
            MessageLookupByLibrary.simpleMessage("Rapportera problem"),
        "issue_submit_description": MessageLookupByLibrary.simpleMessage(
            "Du kan rapportera problem eller bekymmer med din resa. Vi hjälper dig med ett telefonsamtal."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Rapportera ett problem"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "loading": MessageLookupByLibrary.simpleMessage("Laddar"),
        "location_not_found_alert_dialog_body":
            MessageLookupByLibrary.simpleMessage(
                "Vi kunde ej hitta din nuvarande plats via din GPS. Var god kolla din apparats inställningar för tillgång till plats. Alternativt kan du använda sökfältet ovan för att välja din upphämtningsplats."),
        "location_not_found_alert_dialog_title":
            MessageLookupByLibrary.simpleMessage("Plats"),
        "login_body": MessageLookupByLibrary.simpleMessage(
            "Först, måste du logga in för att boka din tur. En verifikationskod kommer skickas till ditt mobilnummer."),
        "login_cell_number_empty_error": MessageLookupByLibrary.simpleMessage(
            "Var god ange telefon nummer i korrekt format"),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Mobilnummer"),
        "login_enter_phone_subtitle": MessageLookupByLibrary.simpleMessage(
            "To begin booking your ride, please sign in first. We will then send a code to your phone number."),
        "login_title": MessageLookupByLibrary.simpleMessage("Logga in"),
        "login_verify_code_body": MessageLookupByLibrary.simpleMessage(
            "En kod har skickats till ditt mobilnummer"),
        "login_verify_code_title":
            MessageLookupByLibrary.simpleMessage("Tryck in kod"),
        "looking_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Vi söker efter närmaste förare."),
        "looking_dialog_title":
            MessageLookupByLibrary.simpleMessage("Resa Begärd"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("Om"),
        "menu_announcements":
            MessageLookupByLibrary.simpleMessage("Meddelande"),
        "menu_login": MessageLookupByLibrary.simpleMessage("Login"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Logga Ut"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Profil"),
        "menu_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Reserverade Turer"),
        "menu_saved_locations":
            MessageLookupByLibrary.simpleMessage("Sparade Platser"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("Resor - Historik"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Plånbok"),
        "menu_website": MessageLookupByLibrary.simpleMessage("Webbsida"),
        "message_body_location": MessageLookupByLibrary.simpleMessage(
            "Vi kunde ej hitta din nuvarande plats via din GPS. Var god använd sökfältet för att välja din upphämtningsplats."),
        "message_delete_account_body": MessageLookupByLibrary.simpleMessage(
            "Är du säker att du vill radera ditt konto? Du kan logga in igen inom 30 dagar för att återställa kontot. Efter denna period, tar vi helt bort din data, inklusive återstående kredit."),
        "message_delete_account_title":
            MessageLookupByLibrary.simpleMessage("Kontoradering"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "Notifikationer var ej godkända förr. För att få nya order notifikationer kan du ge ditt godkännande under inställningar."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("Notifikation Tillåtelse"),
        "message_title_location": MessageLookupByLibrary.simpleMessage("Plats"),
        "message_title_warning":
            MessageLookupByLibrary.simpleMessage("Varning"),
        "minutes_format": m6,
        "notice_resend_code_in_seconds": m7,
        "notice_tip_description": MessageLookupByLibrary.simpleMessage(
            "Dricks är alternativt. Du kan lämna vilken summa du vill till föraren."),
        "notice_tip_title":
            MessageLookupByLibrary.simpleMessage("Vill du lämna dricks?"),
        "onboarding_first_page_body": MessageLookupByLibrary.simpleMessage(
            "Taxi service designad för din trivsel \n ha resor med dina favoritförare och välj dina preferenser"),
        "onboarding_first_page_title": m8,
        "onboarding_second_page_body": MessageLookupByLibrary.simpleMessage(
            "Få extra bonusar genom att rekommendera till en kompis, slutföra dina resor och mycket mer..."),
        "onboarding_second_page_title":
            MessageLookupByLibrary.simpleMessage("Skaffa bonus!"),
        "onboarding_select_language_title":
            MessageLookupByLibrary.simpleMessage("Välj Språk"),
        "onboarding_sign_in_body": MessageLookupByLibrary.simpleMessage(
            "Bara ett par steg ifrån att börja din resa"),
        "onboarding_sign_in_title":
            MessageLookupByLibrary.simpleMessage("Logga in"),
        "order_status_arriving_in": m9,
        "order_status_canceled":
            MessageLookupByLibrary.simpleMessage("Avbruten"),
        "order_status_should_be_arrived":
            MessageLookupByLibrary.simpleMessage("bör vara framme"),
        "payment_in_cash": MessageLookupByLibrary.simpleMessage("Pengar"),
        "payment_method_title":
            MessageLookupByLibrary.simpleMessage("Betalningsmetod"),
        "placeholder_type": MessageLookupByLibrary.simpleMessage("Typ"),
        "profile_email": MessageLookupByLibrary.simpleMessage("E-post"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("Förnamn"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("Kön"),
        "profile_lastname": MessageLookupByLibrary.simpleMessage("Efternamn"),
        "rate_ride_body": MessageLookupByLibrary.simpleMessage(
            "Hjälp oss förbättra din upplevelse genom att betygsätta din förare"),
        "rate_ride_comment_placeholder":
            MessageLookupByLibrary.simpleMessage("skriv din kommentar..."),
        "rate_ride_comment_title":
            MessageLookupByLibrary.simpleMessage("Skriv kommentar"),
        "rate_ride_good_points":
            MessageLookupByLibrary.simpleMessage("Goda Punkter"),
        "rate_ride_negative_points":
            MessageLookupByLibrary.simpleMessage("Negativa Punkter"),
        "rate_ride_title":
            MessageLookupByLibrary.simpleMessage("Hur var din resa?"),
        "register_title_name": MessageLookupByLibrary.simpleMessage("Name"),
        "register_title_verify_number":
            MessageLookupByLibrary.simpleMessage("Verify number"),
        "reservation_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Du kommer kunna se dina framtida bokningar när du gör dem via huvudsidan."),
        "reservation_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Inga Reservationer!"),
        "ride_options_title":
            MessageLookupByLibrary.simpleMessage("Resealternativ"),
        "ride_options_wait_time_action":
            MessageLookupByLibrary.simpleMessage("Väntetid"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("Preferenser"),
        "ride_reserved_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Du kan kolla dina reserverade resor i menyn för att se info om din resa."),
        "ride_reserved_dialog_title":
            MessageLookupByLibrary.simpleMessage("Din tur är reserverad."),
        "ride_safety_share_trip_information":
            MessageLookupByLibrary.simpleMessage("Dela reseinformation"),
        "ride_safety_sos": MessageLookupByLibrary.simpleMessage("SOS"),
        "ride_safety_title":
            MessageLookupByLibrary.simpleMessage("Resa - Säkerhet"),
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("Boka Nu"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_trip_not_arrived_time": m10,
        "share_trip_started_time": m11,
        "share_trip_text_driver": m12,
        "share_trip_text_locations": m13,
        "sos_body": MessageLookupByLibrary.simpleMessage(
            "Nödsignaler är för nödsituationer och kallelser på exempelvis polis kan göras åt dig. Var god använd endast detta verktyg i farliga nödsituationer."),
        "sos_ok_action":
            MessageLookupByLibrary.simpleMessage("Det är en Nödsituation"),
        "sos_send_error": MessageLookupByLibrary.simpleMessage(
            "There was a problem encountered while attempting to send your SOS signal. Please make another attempt or contact 911 directly."),
        "sos_sent_alert":
            MessageLookupByLibrary.simpleMessage("SOS har skickats"),
        "sos_title": MessageLookupByLibrary.simpleMessage("Nödsignal"),
        "status_title_driver_arrived": MessageLookupByLibrary.simpleMessage(
            "Möt förare vid upphämtningsplats"),
        "status_title_trip_started":
            MessageLookupByLibrary.simpleMessage("På väg till destination"),
        "terms_and_condition_button":
            MessageLookupByLibrary.simpleMessage("Villkor"),
        "terms_and_condition_text":
            MessageLookupByLibrary.simpleMessage("Jag har läst och godkänner "),
        "textbox_error_select_type_address":
            MessageLookupByLibrary.simpleMessage(
                "Var god välj typen av adress"),
        "title_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Reservera Resa"),
        "title_wait_time": MessageLookupByLibrary.simpleMessage("Väntetid"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("Betala"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage(
                "Inga tidigare resor har registrerats."),
        "trip_history_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Ingen historik registrerat!"),
        "trip_information_title":
            MessageLookupByLibrary.simpleMessage("Resa - Information"),
        "verify_phone_code_empty_message": MessageLookupByLibrary.simpleMessage(
            "Verifieringskod har ej angivits."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Aktivitet"),
        "wallet_card_title": m14,
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("Din plånbok är tom."),
        "welcome_card_greeting": m15,
        "welcome_card_subtitle":
            MessageLookupByLibrary.simpleMessage("Vart är du på väg?"),
        "welcome_card_textbox_placeholder":
            MessageLookupByLibrary.simpleMessage("Var är din destination?"),
        "your_destination":
            MessageLookupByLibrary.simpleMessage("Din destination")
      };
}
