// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ro locale. All the
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
  String get localeName => 'ro';

  static String m0(fee) =>
      "Anularea serviciului după ce șoferul a acceptat călătoria implică o penalizare de anulare în valoare de ${fee}. Confirmați?";

  static String m1(company) =>
      "Drepturi de autor © ${company}, Toate drepturile rezervate.";

  static String m2(distance) => "${distance} ft";

  static String m3(distance) => "${distance} km";

  static String m4(distance) => "${distance} m";

  static String m5(distance) => "${distance} mi";

  static String m6(minutes) => "${minutes} minute";

  static String m7(seconds) => "Resend code in ${seconds} seconds";

  static String m8(appName) => "Bine ai venit la ${appName}!";

  static String m9(minutes) => "Sosire în ${minutes} minute";

  static String m10(duration) =>
      "Mă aștept ca călătoria să dureze aproximativ ${duration} minute odată ce mă urc în mașina șoferului.";

  static String m11(startTime, duration) =>
      " Călătoria a început la ${startTime} și mă aștept să dureze aproximativ ${duration} minute";

  static String m12(firstName, lastName, mobileNumber) =>
      " Numele șoferului meu este ${firstName} ${lastName}, numărul de telefon mobil este +${mobileNumber}.";

  static String m13(destination, pickup) =>
      "Sunt în drum spre ${destination} din ${pickup}.";

  static String m14(appName) => "${appName} Portofel";

  static String m15(firstName) => "Bună ${firstName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_favorite_location":
            MessageLookupByLibrary.simpleMessage("Adaugă locație favorită"),
        "action_add_photo":
            MessageLookupByLibrary.simpleMessage("Adăugați fotografie"),
        "action_apply": MessageLookupByLibrary.simpleMessage("Aplică"),
        "action_back": MessageLookupByLibrary.simpleMessage("Înapoi"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Anulează"),
        "action_cancel_request":
            MessageLookupByLibrary.simpleMessage("Anulați solicitarea"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("Anulează călătoria"),
        "action_choose_on_map":
            MessageLookupByLibrary.simpleMessage("alegeți de pe hartă"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("Confirmă"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("Confirmă și Continuă"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("Confirmați și plătiți"),
        "action_confirm_and_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Confirmă și rezervă o cursă"),
        "action_confirm_location":
            MessageLookupByLibrary.simpleMessage("Confirmați locația"),
        "action_continue": MessageLookupByLibrary.simpleMessage("Continuați"),
        "action_coupon_code": MessageLookupByLibrary.simpleMessage("Cod cupon"),
        "action_delete": MessageLookupByLibrary.simpleMessage("Șterge"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("Ștergeți contul"),
        "action_edit": MessageLookupByLibrary.simpleMessage("Editați"),
        "action_next": MessageLookupByLibrary.simpleMessage("Următorul"),
        "action_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "action_pay_for_ride":
            MessageLookupByLibrary.simpleMessage("Plătiți călătoria"),
        "action_redeem_gift_card":
            MessageLookupByLibrary.simpleMessage("Răscumpără Card Cadou"),
        "action_resend_code":
            MessageLookupByLibrary.simpleMessage("Resend Code"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("Opțiuni de călătorie"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("Preferințe de Călătorie"),
        "action_save": MessageLookupByLibrary.simpleMessage("Salvează"),
        "action_see_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Vezi Călătorii Rezervate"),
        "action_send_feedback":
            MessageLookupByLibrary.simpleMessage("Trimiteți feedback"),
        "action_set_location":
            MessageLookupByLibrary.simpleMessage("Setează Locația"),
        "action_skip_for_now":
            MessageLookupByLibrary.simpleMessage("Omitere pentru acum"),
        "add_credit_choose_amount":
            MessageLookupByLibrary.simpleMessage("Alege suma"),
        "add_credit_custom_credit_placeholder":
            MessageLookupByLibrary.simpleMessage("Adaugă Credit Personalizat"),
        "add_credit_custom_credit_text_placeholder":
            MessageLookupByLibrary.simpleMessage("Personalizat"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("Adaugă Credit"),
        "add_credit_select_payment_method":
            MessageLookupByLibrary.simpleMessage("Selectează Metoda de Plată:"),
        "add_stop": MessageLookupByLibrary.simpleMessage("Adăugați oprire"),
        "alert_coupon_unavailable":
            MessageLookupByLibrary.simpleMessage("Cuponul nu este disponibil"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Te vom notifica când apar noi anunțuri."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Nicio notificare încă!"),
        "button_ride_safety":
            MessageLookupByLibrary.simpleMessage("Siguranța călătoriei"),
        "cancelation_fee_confirmation_body": m0,
        "complaint_submit_error_message": MessageLookupByLibrary.simpleMessage(
            "The submission of your complaint was unsuccessful, likely due to connectivity issues. Please try again."),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Plângerea a fost înregistrată. Vă rugăm să așteptați un contact din partea reprezentantului nostru de suport în legătură cu problema dvs."),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmă"),
        "copyright_notice": m1,
        "create_address_name_empty_error":
            MessageLookupByLibrary.simpleMessage("Introduceți numele locației"),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Titlu"),
        "current_location":
            MessageLookupByLibrary.simpleMessage("Locația actuală"),
        "distanceFeet": m2,
        "distanceKm": m3,
        "distanceMeters": m4,
        "distanceMiles": m5,
        "enter_coupon_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Introduceți codul dvs. de cupon pentru a fi aplicat la preț"),
        "enter_coupon_dialog_title":
            MessageLookupByLibrary.simpleMessage("Cod cupon"),
        "enter_coupon_placeholder":
            MessageLookupByLibrary.simpleMessage("Introduceți codul cuponului"),
        "enum_address_type_cafe":
            MessageLookupByLibrary.simpleMessage("Cafenea"),
        "enum_address_type_gym":
            MessageLookupByLibrary.simpleMessage("Sală de sport"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("Acasă"),
        "enum_address_type_other":
            MessageLookupByLibrary.simpleMessage("Altul"),
        "enum_address_type_parent_house":
            MessageLookupByLibrary.simpleMessage("Casa părinților"),
        "enum_address_type_park": MessageLookupByLibrary.simpleMessage("Parc"),
        "enum_address_type_partner":
            MessageLookupByLibrary.simpleMessage("Partener"),
        "enum_address_type_work": MessageLookupByLibrary.simpleMessage("Muncă"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("Feminin"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("Masculin"),
        "enum_gender_unknown":
            MessageLookupByLibrary.simpleMessage("Necunoscut"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("Corecție"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("Taxă de comandă"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("Retragere"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Transfer bancar"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("Corecție"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("Cadou"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("Plată în aplicație"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Necunoscut"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Nu poate fi gol"),
        "error_region_unsupported":
            MessageLookupByLibrary.simpleMessage("Regiunea nu este suportată."),
        "favorite_location_details_title":
            MessageLookupByLibrary.simpleMessage("Denumiți locația favorită"),
        "favorite_locations_list_body": MessageLookupByLibrary.simpleMessage(
            "Puteți salva locațiile dvs. favorite pentru un acces mai ușor"),
        "favorite_locations_list_title":
            MessageLookupByLibrary.simpleMessage("Locații favorite"),
        "gift_card_body":
            MessageLookupByLibrary.simpleMessage("Introdu codul tău cadou"),
        "gift_card_text_placeholder":
            MessageLookupByLibrary.simpleMessage("Introdu codul cadou"),
        "gift_card_title":
            MessageLookupByLibrary.simpleMessage("Introdu Codul Cadou"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("Sfat"),
        "invoice_item_total": MessageLookupByLibrary.simpleMessage("Total"),
        "invoice_item_wallet": MessageLookupByLibrary.simpleMessage("Portofel"),
        "issue_description_placeholder": MessageLookupByLibrary.simpleMessage(
            "Scrieți o descriere a problemei dvs..."),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Subiect"),
        "issue_submit_button":
            MessageLookupByLibrary.simpleMessage("Raportați problema"),
        "issue_submit_description": MessageLookupByLibrary.simpleMessage(
            "Puteți raporta orice problemă pe care ați avut-o cu călătoria dvs. Vă vom ajuta cu problema într-un apel."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Raportați o problemă"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "loading": MessageLookupByLibrary.simpleMessage("Se încarcă"),
        "location_not_found_alert_dialog_body":
            MessageLookupByLibrary.simpleMessage(
                "Nu am putut obține locația curentă a dispozitivului tău folosind GPS-ul. Verifică permisiunile de localizare pentru aplicație în setările dispozitivului. În mod alternativ, poți utiliza câmpul de căutare de mai sus pentru a selecta punctul de preluare."),
        "location_not_found_alert_dialog_title":
            MessageLookupByLibrary.simpleMessage("Locație"),
        "login_body": MessageLookupByLibrary.simpleMessage(
            "Mai întâi, trebuie să vă autentificați pentru a rezerva călătoria. Un cod de verificare va fi trimis la numărul dvs. de telefon."),
        "login_cell_number_empty_error": MessageLookupByLibrary.simpleMessage(
            "Introduceți numărul de telefon în format corect"),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Număr de telefon"),
        "login_enter_phone_subtitle": MessageLookupByLibrary.simpleMessage(
            "To begin booking your ride, please sign in first. We will then send a code to your phone number."),
        "login_title": MessageLookupByLibrary.simpleMessage("Autentificare"),
        "login_verify_code_body": MessageLookupByLibrary.simpleMessage(
            "Codul a fost trimis la numărul dvs. de telefon"),
        "login_verify_code_title":
            MessageLookupByLibrary.simpleMessage("Introduceți codul"),
        "looking_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Căutăm cel mai apropiat șofer pentru dvs."),
        "looking_dialog_title":
            MessageLookupByLibrary.simpleMessage("Solicitarea călătoriei"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("Despre"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("Anunțuri"),
        "menu_login": MessageLookupByLibrary.simpleMessage("Conectare"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Deconectare"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Profil"),
        "menu_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Călătorii rezervate"),
        "menu_saved_locations":
            MessageLookupByLibrary.simpleMessage("Locații salvate"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("Istoric călătorii"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Portofel"),
        "menu_website": MessageLookupByLibrary.simpleMessage("Site web"),
        "message_body_location": MessageLookupByLibrary.simpleMessage(
            "Nu am putut obține locația dvs. curentă de la GPS-ul dispozitivului. Utilizați câmpul de căutare pentru a selecta locația de preluare."),
        "message_delete_account_body": MessageLookupByLibrary.simpleMessage(
            "Sunteți sigur că doriți să ștergeți contul dvs.? Vă puteți conecta din nou în decurs de 30 de zile pentru a restaura contul. După această perioadă, datele dvs. vor fi complet eliminate, inclusiv toate creditele rămase."),
        "message_delete_account_title":
            MessageLookupByLibrary.simpleMessage("Ștergere cont"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "Permisiunea de notificare a fost refuzată anterior. Pentru a primi notificări pentru comenzile noi, puteți activa permisiunea din setările aplicației."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("Permisiune notificare"),
        "message_title_location":
            MessageLookupByLibrary.simpleMessage("Locație"),
        "message_title_warning":
            MessageLookupByLibrary.simpleMessage("Atenție"),
        "minutes_format": m6,
        "notice_resend_code_in_seconds": m7,
        "notice_tip_description": MessageLookupByLibrary.simpleMessage(
            "Adăugarea bacșișului este opțională. Puteți adăuga orice sumă doriți ca bacșiș pentru șofer."),
        "notice_tip_title": MessageLookupByLibrary.simpleMessage(
            "Doriți să adăugați o bacșiș?"),
        "onboarding_first_page_body": MessageLookupByLibrary.simpleMessage(
            "Serviciul de taxi conceput pentru confortul tău \n Ai călătorii cu șoferii preferați și alege preferințele de călătorie"),
        "onboarding_first_page_title": m8,
        "onboarding_second_page_body": MessageLookupByLibrary.simpleMessage(
            "primești bonusuri suplimentare pentru recomandarea unui prieten, finalizarea călătoriilor și multe altele..."),
        "onboarding_second_page_title":
            MessageLookupByLibrary.simpleMessage("Fii recompensat!"),
        "onboarding_select_language_title":
            MessageLookupByLibrary.simpleMessage("Selectează Limba"),
        "onboarding_sign_in_body": MessageLookupByLibrary.simpleMessage(
            "Ești la doar câțiva pași distanță de a te conecta și a începe o călătorie confortabilă"),
        "onboarding_sign_in_title":
            MessageLookupByLibrary.simpleMessage("Conectează-te"),
        "order_status_arriving_in": m9,
        "order_status_canceled":
            MessageLookupByLibrary.simpleMessage("Anulată"),
        "order_status_should_be_arrived":
            MessageLookupByLibrary.simpleMessage("În drum spre tine!"),
        "payment_in_cash": MessageLookupByLibrary.simpleMessage("Numerar"),
        "payment_method_title":
            MessageLookupByLibrary.simpleMessage("Metodă de plată"),
        "placeholder_type": MessageLookupByLibrary.simpleMessage("Tip"),
        "profile_email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("Prenume"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("Gen"),
        "profile_lastname": MessageLookupByLibrary.simpleMessage("Nume"),
        "rate_ride_body": MessageLookupByLibrary.simpleMessage(
            "Ajutați-ne să îmbunătățim experiența dvs. prin evaluarea șoferului dvs."),
        "rate_ride_comment_placeholder":
            MessageLookupByLibrary.simpleMessage("scrieți-vă comentariul..."),
        "rate_ride_comment_title":
            MessageLookupByLibrary.simpleMessage("Adăugați un comentariu"),
        "rate_ride_good_points":
            MessageLookupByLibrary.simpleMessage("Puncte pozitive"),
        "rate_ride_negative_points":
            MessageLookupByLibrary.simpleMessage("Puncte negative"),
        "rate_ride_title":
            MessageLookupByLibrary.simpleMessage("Cum a fost călătoria dvs.?"),
        "register_title_name": MessageLookupByLibrary.simpleMessage("Name"),
        "register_title_verify_number":
            MessageLookupByLibrary.simpleMessage("Verify number"),
        "reservation_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Vei putea vedea rezervările viitoare după ce le vei face pe ecranul principal."),
        "reservation_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Nicio rezervare!"),
        "ride_options_title":
            MessageLookupByLibrary.simpleMessage("Opțiuni de călătorie"),
        "ride_options_wait_time_action":
            MessageLookupByLibrary.simpleMessage("Timp de așteptare"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("Preferințe de Călătorie"),
        "ride_reserved_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Poți verifica călătoriile rezervate în meniu pentru a vedea informații despre această călătorie."),
        "ride_reserved_dialog_title": MessageLookupByLibrary.simpleMessage(
            "Călătoria ta este rezervată."),
        "ride_safety_share_trip_information":
            MessageLookupByLibrary.simpleMessage(
                "Partajarea informațiilor călătoriei"),
        "ride_safety_sos": MessageLookupByLibrary.simpleMessage("SOS"),
        "ride_safety_title":
            MessageLookupByLibrary.simpleMessage("Siguranța călătoriei"),
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("Rezervă acum"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_trip_not_arrived_time": m10,
        "share_trip_started_time": m11,
        "share_trip_text_driver": m12,
        "share_trip_text_locations": m13,
        "sos_body": MessageLookupByLibrary.simpleMessage(
            "Semnalele de detresă sunt pentru situații de urgență și contactarea autorităților, cum ar fi poliția sau forțele de ordine. Vă rugăm să utilizați semnalul de detresă în cazul în care întâmpinați o situație de urgență și aveți nevoie de asistență imediată."),
        "sos_ok_action":
            MessageLookupByLibrary.simpleMessage("Este o situație de urgență"),
        "sos_send_error": MessageLookupByLibrary.simpleMessage(
            "There was a problem encountered while attempting to send your SOS signal. Please make another attempt or contact 911 directly."),
        "sos_sent_alert": MessageLookupByLibrary.simpleMessage("SOS trimis"),
        "sos_title": MessageLookupByLibrary.simpleMessage("Semnal de detresă"),
        "status_title_driver_arrived": MessageLookupByLibrary.simpleMessage(
            "Întâlniți șoferul la punctul de preluare"),
        "status_title_trip_started":
            MessageLookupByLibrary.simpleMessage("Plecare spre destinație"),
        "terms_and_condition_button":
            MessageLookupByLibrary.simpleMessage("Termenii și condițiile"),
        "terms_and_condition_text": MessageLookupByLibrary.simpleMessage(
            "Am citit și sunt de acord cu "),
        "textbox_error_select_type_address":
            MessageLookupByLibrary.simpleMessage("Selectați tipul de adresă"),
        "title_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Rezervă o cursă"),
        "title_wait_time":
            MessageLookupByLibrary.simpleMessage("Timp de așteptare"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("Plată"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage(
                "Nicio comandă anterioară înregistrată."),
        "trip_history_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Nicio înregistrare!"),
        "trip_information_title":
            MessageLookupByLibrary.simpleMessage("Informații despre călătorie"),
        "verify_phone_code_empty_message": MessageLookupByLibrary.simpleMessage(
            "Codul de verificare nu este introdus."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Activitate"),
        "wallet_card_title": m14,
        "wallet_empty_state_message": MessageLookupByLibrary.simpleMessage(
            "Nicio înregistrare în istoric."),
        "welcome_card_greeting": m15,
        "welcome_card_subtitle":
            MessageLookupByLibrary.simpleMessage("Unde mergeți?"),
        "welcome_card_textbox_placeholder":
            MessageLookupByLibrary.simpleMessage("Unde este destinația dvs.?"),
        "your_destination":
            MessageLookupByLibrary.simpleMessage("Destinația dvs.")
      };
}
