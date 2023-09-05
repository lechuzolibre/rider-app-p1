// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(fee) =>
      "Bei einer Stornierung des Dienstes, nachdem der Fahrer die Fahrt angenommen hat, wird eine Stornogebühr von ${fee} erhoben. Bestätigen Sie?";

  static String m1(company) =>
      "Copyright © ${company}, Alle Rechte vorbehalten.";

  static String m2(distance) => "${distance} ft";

  static String m3(distance) => "${distance} km";

  static String m4(distance) => "${distance} m";

  static String m5(distance) => "${distance} mi";

  static String m6(minutes) => "${minutes} Minuten";

  static String m7(seconds) => "Resend code in ${seconds} seconds";

  static String m8(appName) => "Willkommen bei ${appName}!";

  static String m9(minutes) => "Ankunft in ${minutes}";

  static String m10(duration) =>
      " Ich schätze, die Fahrt selbst dauert ungefähr ${duration} Minuten, sobald ich in das Auto des Fahrers steige.";

  static String m11(startTime, duration) =>
      " Die Fahrt hat um ${startTime} begonnen und ich rechne damit, dass die Fahrt etwa ${duration} Minuten dauern wird";

  static String m12(firstName, lastName, mobileNumber) =>
      " Mein Fahrername ist ${firstName} ${lastName} und seine Handynummer ist +${mobileNumber}.";

  static String m13(destination, pickup) =>
      "Ich bin auf dem Weg von ${destination} nach ${pickup}.";

  static String m14(appName) => "${appName} Geldbörse";

  static String m15(firstName) => "Hallo ${firstName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_favorite_location":
            MessageLookupByLibrary.simpleMessage("Lieblingsort hinzufügen"),
        "action_add_photo":
            MessageLookupByLibrary.simpleMessage("Foto hinzufügen"),
        "action_apply": MessageLookupByLibrary.simpleMessage("Sich bewerben"),
        "action_back": MessageLookupByLibrary.simpleMessage("Der Rücken"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Absagen"),
        "action_cancel_request":
            MessageLookupByLibrary.simpleMessage("Anfrage abbrechen"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("Fahrt abbrechen"),
        "action_choose_on_map":
            MessageLookupByLibrary.simpleMessage("auf Karte auswählen"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("Bestätigen"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("Bestätigung & weiter"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("Bestätigen und bezahlen"),
        "action_confirm_and_reserve_ride": MessageLookupByLibrary.simpleMessage(
            "Fahrt bestätigen & reservieren"),
        "action_confirm_location":
            MessageLookupByLibrary.simpleMessage("Standort bestätigen"),
        "action_continue": MessageLookupByLibrary.simpleMessage("Fortsetzen"),
        "action_coupon_code":
            MessageLookupByLibrary.simpleMessage("Gutscheincode"),
        "action_delete": MessageLookupByLibrary.simpleMessage("Löschen"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("Konto löschen"),
        "action_edit": MessageLookupByLibrary.simpleMessage("Bearbeiten"),
        "action_next": MessageLookupByLibrary.simpleMessage("Nächste"),
        "action_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "action_pay_for_ride":
            MessageLookupByLibrary.simpleMessage("Fahrt bezahlen"),
        "action_redeem_gift_card":
            MessageLookupByLibrary.simpleMessage("Geschenkkarte einlösen"),
        "action_resend_code":
            MessageLookupByLibrary.simpleMessage("Resend Code"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("Fahroptionen"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("Fahrpräferenzen"),
        "action_save": MessageLookupByLibrary.simpleMessage("Speichern"),
        "action_see_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Siehe reservierte Fahrten"),
        "action_send_feedback":
            MessageLookupByLibrary.simpleMessage("Feedback abschicken"),
        "action_set_location":
            MessageLookupByLibrary.simpleMessage("Ort festlegen"),
        "action_skip_for_now":
            MessageLookupByLibrary.simpleMessage("Für jetzt überspringen"),
        "add_credit_choose_amount":
            MessageLookupByLibrary.simpleMessage("Betrag wählen"),
        "add_credit_custom_credit_placeholder":
            MessageLookupByLibrary.simpleMessage(
                "Benutzerdefinierten Kredit hinzufügen"),
        "add_credit_custom_credit_text_placeholder":
            MessageLookupByLibrary.simpleMessage("Brauch"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("Guthaben hinzufügen"),
        "add_credit_select_payment_method":
            MessageLookupByLibrary.simpleMessage(
                "Wählen Sie die Zahlungsmethode:"),
        "add_stop": MessageLookupByLibrary.simpleMessage("Stopp hinzufügen"),
        "alert_coupon_unavailable": MessageLookupByLibrary.simpleMessage(
            "Gutschein ist nicht verfügbar"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Wir werden Sie benachrichtigen, wenn neue Ankündigungen kommen."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Noch keine Ankündigungen!"),
        "button_ride_safety":
            MessageLookupByLibrary.simpleMessage("Fahrsicherheit"),
        "cancelation_fee_confirmation_body": m0,
        "complaint_submit_error_message": MessageLookupByLibrary.simpleMessage(
            "The submission of your complaint was unsuccessful, likely due to connectivity issues. Please try again."),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Reklamation wird eingereicht. Bitte warten Sie auf eine Kontaktaufnahme von unserem Support-Mitarbeiter zu Ihrer Anfrage."),
        "confirm": MessageLookupByLibrary.simpleMessage("Bestätigen"),
        "copyright_notice": m1,
        "create_address_name_empty_error":
            MessageLookupByLibrary.simpleMessage("Bitte Ortsnamen eingeben"),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Titel"),
        "current_location":
            MessageLookupByLibrary.simpleMessage("Aktueller Standort"),
        "distanceFeet": m2,
        "distanceKm": m3,
        "distanceMeters": m4,
        "distanceMiles": m5,
        "enter_coupon_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Geben Sie Ihren Gutscheincode ein, der auf den Preis angewendet werden soll"),
        "enter_coupon_dialog_title":
            MessageLookupByLibrary.simpleMessage("Gutscheincode"),
        "enter_coupon_placeholder":
            MessageLookupByLibrary.simpleMessage("Gutschein-Code eingeben"),
        "enum_address_type_cafe": MessageLookupByLibrary.simpleMessage("Cafe"),
        "enum_address_type_gym":
            MessageLookupByLibrary.simpleMessage("Fitnessstudio"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("Heim"),
        "enum_address_type_other":
            MessageLookupByLibrary.simpleMessage("Sonstiges"),
        "enum_address_type_parent_house":
            MessageLookupByLibrary.simpleMessage("Elternhaus"),
        "enum_address_type_park": MessageLookupByLibrary.simpleMessage("Park"),
        "enum_address_type_partner":
            MessageLookupByLibrary.simpleMessage("Partner"),
        "enum_address_type_work":
            MessageLookupByLibrary.simpleMessage("Arbeit"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("Weiblich"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("Männlich"),
        "enum_gender_unknown":
            MessageLookupByLibrary.simpleMessage("Unbekannt"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("Korrektur"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("Bestellgebühr"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("Abheben"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Banküberweisung"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("Korrektur"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("Geschenk"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("In-App-Zahlung"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Unbekannt"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Kann nicht leer sein"),
        "error_region_unsupported": MessageLookupByLibrary.simpleMessage(
            "Region wird nicht unterstützt."),
        "favorite_location_details_title": MessageLookupByLibrary.simpleMessage(
            "Nennen Sie Ihren Lieblingsort"),
        "favorite_locations_list_body": MessageLookupByLibrary.simpleMessage(
            "Sie können Ihre Lieblingsorte für einen einfacheren Zugriff speichern"),
        "favorite_locations_list_title":
            MessageLookupByLibrary.simpleMessage("Lieblingsorte"),
        "gift_card_body": MessageLookupByLibrary.simpleMessage(
            "Geben Sie Ihren Geschenkkartencode ein"),
        "gift_card_text_placeholder":
            MessageLookupByLibrary.simpleMessage("Geschenkkartencode eingeben"),
        "gift_card_title": MessageLookupByLibrary.simpleMessage(
            "Geben Sie den Geschenkcode ein"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("Tipp"),
        "invoice_item_total": MessageLookupByLibrary.simpleMessage("Gesamt"),
        "invoice_item_wallet":
            MessageLookupByLibrary.simpleMessage("Geldbörse"),
        "issue_description_placeholder": MessageLookupByLibrary.simpleMessage(
            "Beschreiben Sie Ihr Problem ..."),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Thema"),
        "issue_submit_button":
            MessageLookupByLibrary.simpleMessage("Melde Probleme"),
        "issue_submit_description": MessageLookupByLibrary.simpleMessage(
            "Sie können jedes Problem melden, das Sie mit Ihrer Fahrt hatten. Wir helfen Ihnen bei dem Problem innerhalb eines Anrufs."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Ein Problem melden"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "loading": MessageLookupByLibrary.simpleMessage("Wird geladen"),
        "location_not_found_alert_dialog_body":
            MessageLookupByLibrary.simpleMessage(
                "Wir konnten Ihren aktuellen Standort nicht mit dem GPS Ihres Geräts abrufen. Bitte überprüfen Sie die Standortberechtigung für die App in den Geräteeinstellungen. Alternativ können Sie das Suchfeld oben verwenden, um Ihren Abholpunkt auszuwählen."),
        "location_not_found_alert_dialog_title":
            MessageLookupByLibrary.simpleMessage("Ort"),
        "login_body": MessageLookupByLibrary.simpleMessage(
            "Zuerst müssen Sie sich anmelden, um Ihre Fahrt zu buchen. Ein Bestätigungscode wird an Ihre Telefonnummer gesendet."),
        "login_cell_number_empty_error": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie die Telefonnummer im richtigen Format ein"),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Telefonnummer"),
        "login_enter_phone_subtitle": MessageLookupByLibrary.simpleMessage(
            "To begin booking your ride, please sign in first. We will then send a code to your phone number."),
        "login_title": MessageLookupByLibrary.simpleMessage("Einloggen"),
        "login_verify_code_body": MessageLookupByLibrary.simpleMessage(
            "Der Code wurde an Ihre Telefonnummer gesendet"),
        "login_verify_code_title":
            MessageLookupByLibrary.simpleMessage("Code eingeben"),
        "looking_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Wir suchen den nächstgelegenen Fahrer für Sie."),
        "looking_dialog_title":
            MessageLookupByLibrary.simpleMessage("Fahrt angefordert"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("Um"),
        "menu_announcements":
            MessageLookupByLibrary.simpleMessage("Ankündigungen"),
        "menu_login": MessageLookupByLibrary.simpleMessage("Anmeldung"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Ausloggen"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Profil"),
        "menu_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Reservierte Fahrten"),
        "menu_saved_locations":
            MessageLookupByLibrary.simpleMessage("Gespeicherte Orte"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("Reiseverlauf"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Geldbörse"),
        "menu_website": MessageLookupByLibrary.simpleMessage("Webseite"),
        "message_body_location": MessageLookupByLibrary.simpleMessage(
            "Wir konnten Ihren aktuellen Standort nicht vom GPS Ihres Geräts abrufen. Bitte verwenden Sie das Suchfeld, um Ihren Abholort auszuwählen."),
        "message_delete_account_body": MessageLookupByLibrary.simpleMessage(
            "Möchten Sie Ihr Konto wirklich löschen? Sie können sich innerhalb von 30 Tagen erneut anmelden, um das Konto wiederherzustellen. Nach diesem Zeitraum werden Ihre Daten vollständig entfernt, einschließlich aller Ihrer verbleibenden Credits."),
        "message_delete_account_title":
            MessageLookupByLibrary.simpleMessage("Kontolöschung"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "Die Benachrichtigungsberechtigung wurde zuvor verweigert. Um Benachrichtigungen über neue Bestellungen zu erhalten, können Sie die Berechtigung in den App-Einstellungen aktivieren."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage(
                "Benachrichtigungsberechtigung"),
        "message_title_location": MessageLookupByLibrary.simpleMessage("Ort"),
        "message_title_warning":
            MessageLookupByLibrary.simpleMessage("Warnung"),
        "minutes_format": m6,
        "notice_resend_code_in_seconds": m7,
        "notice_tip_description": MessageLookupByLibrary.simpleMessage(
            "Das Hinzufügen von Trinkgeld ist optional. Sie können einen beliebigen Betrag als Trinkgeld für den Fahrer hinzufügen."),
        "notice_tip_title": MessageLookupByLibrary.simpleMessage(
            "Möchten Sie einen Tipp hinzufügen?"),
        "onboarding_first_page_body": MessageLookupByLibrary.simpleMessage(
            "Taxiservice für Ihren Komfort\n Machen Sie Fahrten mit Ihren Lieblingsfahrern und wählen Sie Ihre Fahrpräferenzen"),
        "onboarding_first_page_title": m8,
        "onboarding_second_page_body": MessageLookupByLibrary.simpleMessage(
            "Holen Sie sich zusätzliche Boni für die Empfehlung eines Freundes, das Abschließen von Reisen und vieles mehr ..."),
        "onboarding_second_page_title":
            MessageLookupByLibrary.simpleMessage("Lassen Sie sich belohnen!"),
        "onboarding_select_language_title":
            MessageLookupByLibrary.simpleMessage("Sprache auswählen"),
        "onboarding_sign_in_body": MessageLookupByLibrary.simpleMessage(
            "Wenige Sekunden von der Anmeldung und dem Start einer komfortablen Fahrt entfernt"),
        "onboarding_sign_in_title":
            MessageLookupByLibrary.simpleMessage("Einloggen"),
        "order_status_arriving_in": m9,
        "order_status_canceled":
            MessageLookupByLibrary.simpleMessage("Abgesagt"),
        "order_status_should_be_arrived":
            MessageLookupByLibrary.simpleMessage("sollte ankommen"),
        "payment_in_cash": MessageLookupByLibrary.simpleMessage("Kasse"),
        "payment_method_title":
            MessageLookupByLibrary.simpleMessage("Zahlungsmethode"),
        "placeholder_type": MessageLookupByLibrary.simpleMessage("Typ"),
        "profile_email": MessageLookupByLibrary.simpleMessage("Email"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("Vorname"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("Geschlecht"),
        "profile_lastname": MessageLookupByLibrary.simpleMessage("Nachname"),
        "rate_ride_body": MessageLookupByLibrary.simpleMessage(
            "Helfen Sie uns, Ihr Erlebnis zu verbessern, indem Sie Ihren Fahrer bewerten"),
        "rate_ride_comment_placeholder": MessageLookupByLibrary.simpleMessage(
            "schreibe deinen kommentar..."),
        "rate_ride_comment_title":
            MessageLookupByLibrary.simpleMessage("Einen Kommentar hinzufügen"),
        "rate_ride_good_points":
            MessageLookupByLibrary.simpleMessage("Schöne Punkte"),
        "rate_ride_negative_points":
            MessageLookupByLibrary.simpleMessage("Negative Punkte"),
        "rate_ride_title":
            MessageLookupByLibrary.simpleMessage("Wie war deine Fahrt?"),
        "register_title_name": MessageLookupByLibrary.simpleMessage("Name"),
        "register_title_verify_number":
            MessageLookupByLibrary.simpleMessage("Verify number"),
        "reservation_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Sie können Ihre zukünftigen Buchungen sehen, sobald Sie sie auf dem Hauptbildschirm vorgenommen haben."),
        "reservation_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Keine Reservierungen!"),
        "ride_options_title":
            MessageLookupByLibrary.simpleMessage("Fahroptionen"),
        "ride_options_wait_time_action":
            MessageLookupByLibrary.simpleMessage("Wartezeit"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("Fahrpräferenzen"),
        "ride_reserved_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Sie können reservierte Fahrten im Menü einsehen, um Reservierungsinformationen zu dieser Fahrt anzuzeigen."),
        "ride_reserved_dialog_title":
            MessageLookupByLibrary.simpleMessage("Ihre Fahrt ist reserviert."),
        "ride_safety_share_trip_information":
            MessageLookupByLibrary.simpleMessage(
                "Teilen Sie Reiseinformationen"),
        "ride_safety_sos": MessageLookupByLibrary.simpleMessage("SOS"),
        "ride_safety_title":
            MessageLookupByLibrary.simpleMessage("Fahrsicherheit"),
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("buchen Sie jetzt"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_trip_not_arrived_time": m10,
        "share_trip_started_time": m11,
        "share_trip_text_driver": m12,
        "share_trip_text_locations": m13,
        "sos_body": MessageLookupByLibrary.simpleMessage(
            "Notsignale sind für Notfälle gedacht und es kann in Ihrem Namen ein Anruf bei Behörden wie der Polizei erfolgen. Bitte verwenden Sie diese Funktion nur in Notfällen, in denen Sie in Gefahr sein könnten."),
        "sos_ok_action":
            MessageLookupByLibrary.simpleMessage("Es ist ein Notfall"),
        "sos_send_error": MessageLookupByLibrary.simpleMessage(
            "There was a problem encountered while attempting to send your SOS signal. Please make another attempt or contact 911 directly."),
        "sos_sent_alert":
            MessageLookupByLibrary.simpleMessage("SOS wird gesendet"),
        "sos_title": MessageLookupByLibrary.simpleMessage("Notsignal"),
        "status_title_driver_arrived": MessageLookupByLibrary.simpleMessage(
            "Treffen Sie den Fahrer am Abholpunkt"),
        "status_title_trip_started":
            MessageLookupByLibrary.simpleMessage("Auf dem Weg zum Ziel"),
        "terms_and_condition_button":
            MessageLookupByLibrary.simpleMessage("Terms & amp; Bedingungen"),
        "terms_and_condition_text": MessageLookupByLibrary.simpleMessage(
            "Ich habe gelesen und stimme zu"),
        "textbox_error_select_type_address":
            MessageLookupByLibrary.simpleMessage(
                "Bitte wählen Sie die Adressart aus"),
        "title_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Fahrt reservieren"),
        "title_wait_time": MessageLookupByLibrary.simpleMessage("Wartezeit"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("Zahlen"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage(
                "Es wurde keine frühere Bestellung aufgezeichnet."),
        "trip_history_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Keine Aufzeichnungen!"),
        "trip_information_title":
            MessageLookupByLibrary.simpleMessage("Reiseinformationen"),
        "verify_phone_code_empty_message": MessageLookupByLibrary.simpleMessage(
            "Der Bestätigungscode wurde nicht eingegeben."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Aktivität"),
        "wallet_card_title": m14,
        "wallet_empty_state_message": MessageLookupByLibrary.simpleMessage(
            "Keine Historie aufgezeichnet."),
        "welcome_card_greeting": m15,
        "welcome_card_subtitle":
            MessageLookupByLibrary.simpleMessage("Wo gehst du hin?"),
        "welcome_card_textbox_placeholder":
            MessageLookupByLibrary.simpleMessage("Wo ist Ihr Ziel?"),
        "your_destination": MessageLookupByLibrary.simpleMessage("Dein Ziel")
      };
}
