// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it locale. All the
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
  String get localeName => 'it';

  static String m0(fee) =>
      "La cancelación del servicio después de que el conductor haya aceptado el viaje está sujeta a una penalización por cancelación de ${fee}. ¿Lo confirmas?";

  static String m1(company) =>
      "Diritti d\'autore © ${company}, tutti i diritti riservati.";

  static String m2(distance) => "${distance} ft";

  static String m3(distance) => "${distance} km";

  static String m4(distance) => "${distance} m";

  static String m5(distance) => "${distance} mi";

  static String m6(minutes) => "${minutes} minutos";

  static String m7(seconds) => "Resend code in ${seconds} seconds";

  static String m8(appName) => "¡Bienvenido a ${appName}!";

  static String m9(minutes) => "Llegará en ${minutes} minutos";

  static String m10(duration) =>
      "Espero que el viaje dure aproximadamente ${duration} minutos una vez que esté en el auto del conductor.";

  static String m11(startTime, duration) =>
      " The trip started on ${startTime}, and I expect the trip to take approximately ${duration} minutes.";

  static String m12(firstName, lastName, mobileNumber) =>
      " My driver\'s name is ${firstName} ${lastName}, and their mobile number is +${mobileNumber}.";

  static String m13(destination, pickup) =>
      "I am on my way to ${destination} from ${pickup}.";

  static String m14(appName) => "Billetera ${appName}";

  static String m15(firstName) => "Ciao ${firstName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_favorite_location":
            MessageLookupByLibrary.simpleMessage("Add Favorite Location"),
        "action_add_photo":
            MessageLookupByLibrary.simpleMessage("Aggiungi Foto"),
        "action_apply": MessageLookupByLibrary.simpleMessage("Aplicar"),
        "action_back": MessageLookupByLibrary.simpleMessage("Atrás"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Annulla"),
        "action_cancel_request":
            MessageLookupByLibrary.simpleMessage("Cancel Request"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("Cancel Ride"),
        "action_choose_on_map":
            MessageLookupByLibrary.simpleMessage("Choose on Map"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("Conferma"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("Confirmar y continuar"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("Conferma e paga"),
        "action_confirm_and_reserve_ride": MessageLookupByLibrary.simpleMessage(
            "Conferma e prenota il viaggio"),
        "action_confirm_location":
            MessageLookupByLibrary.simpleMessage("Confirm Location"),
        "action_continue": MessageLookupByLibrary.simpleMessage("Continue"),
        "action_coupon_code":
            MessageLookupByLibrary.simpleMessage("Coupon Code"),
        "action_delete": MessageLookupByLibrary.simpleMessage("Elimina"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("Delete Account"),
        "action_edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "action_next": MessageLookupByLibrary.simpleMessage("Avanti"),
        "action_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "action_pay_for_ride":
            MessageLookupByLibrary.simpleMessage("Paga il viaggio"),
        "action_redeem_gift_card":
            MessageLookupByLibrary.simpleMessage("Canjear Tarjeta de Regalo"),
        "action_resend_code":
            MessageLookupByLibrary.simpleMessage("Resend Code"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("Ride Options"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("Preferencias de viaje"),
        "action_save": MessageLookupByLibrary.simpleMessage("Salva"),
        "action_see_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Ver viajes reservados"),
        "action_send_feedback":
            MessageLookupByLibrary.simpleMessage("Send Feedback"),
        "action_set_location":
            MessageLookupByLibrary.simpleMessage("Establecer ubicación"),
        "action_skip_for_now":
            MessageLookupByLibrary.simpleMessage("Saltar por ahora"),
        "add_credit_choose_amount":
            MessageLookupByLibrary.simpleMessage("Seleccionar monto"),
        "add_credit_custom_credit_placeholder":
            MessageLookupByLibrary.simpleMessage(
                "Agregar crédito personalizado"),
        "add_credit_custom_credit_text_placeholder":
            MessageLookupByLibrary.simpleMessage("Personalizado"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("Agregar crédito"),
        "add_credit_select_payment_method":
            MessageLookupByLibrary.simpleMessage("Seleccionar método de pago:"),
        "add_stop": MessageLookupByLibrary.simpleMessage("Add Stop"),
        "alert_coupon_unavailable":
            MessageLookupByLibrary.simpleMessage("Cupón no disponible"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Te notificaremos cuando haya nuevos anuncios."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("¡Sin anuncios aún!"),
        "button_ride_safety":
            MessageLookupByLibrary.simpleMessage("Sicurezza del viaggio"),
        "cancelation_fee_confirmation_body": m0,
        "complaint_submit_error_message": MessageLookupByLibrary.simpleMessage(
            "The submission of your complaint was unsuccessful, likely due to connectivity issues. Please try again."),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Il reclamo è stato inviato. Attendi il contatto dal nostro rappresentante del supporto per la tua richiesta."),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
        "copyright_notice": m1,
        "create_address_name_empty_error":
            MessageLookupByLibrary.simpleMessage("Inserisci il nome del luogo"),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Titolo"),
        "current_location":
            MessageLookupByLibrary.simpleMessage("Current Location"),
        "distanceFeet": m2,
        "distanceKm": m3,
        "distanceMeters": m4,
        "distanceMiles": m5,
        "enter_coupon_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Enter your coupon code to apply it to the price."),
        "enter_coupon_dialog_title":
            MessageLookupByLibrary.simpleMessage("Coupon Code"),
        "enter_coupon_placeholder":
            MessageLookupByLibrary.simpleMessage("Enter Coupon Code"),
        "enum_address_type_cafe": MessageLookupByLibrary.simpleMessage("Cafe"),
        "enum_address_type_gym": MessageLookupByLibrary.simpleMessage("Gym"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("Casa"),
        "enum_address_type_other":
            MessageLookupByLibrary.simpleMessage("Altro"),
        "enum_address_type_parent_house":
            MessageLookupByLibrary.simpleMessage("Parent\'s House"),
        "enum_address_type_park": MessageLookupByLibrary.simpleMessage("Park"),
        "enum_address_type_partner":
            MessageLookupByLibrary.simpleMessage("Partner"),
        "enum_address_type_work":
            MessageLookupByLibrary.simpleMessage("Lavoro"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("Femmina"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("Maschio"),
        "enum_gender_unknown":
            MessageLookupByLibrary.simpleMessage("Sconosciuto"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("Correzione"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("Tariffa d\'Ordine"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("Prelievo"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Bonifico Bancario"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("Correzione"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("Buono Regalo"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("Pagamento In-App"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Sconosciuto"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Non può essere vuoto"),
        "error_region_unsupported": MessageLookupByLibrary.simpleMessage(
            "La regione non è supportata."),
        "favorite_location_details_title":
            MessageLookupByLibrary.simpleMessage("Name Your Favorite Location"),
        "favorite_locations_list_body": MessageLookupByLibrary.simpleMessage(
            "You can save your favorite locations for easier access."),
        "favorite_locations_list_title":
            MessageLookupByLibrary.simpleMessage("Favorite Locations"),
        "gift_card_body": MessageLookupByLibrary.simpleMessage(
            "Ingrese el código de su tarjeta de regalo"),
        "gift_card_text_placeholder": MessageLookupByLibrary.simpleMessage(
            "Ingresar código de tarjeta de regalo"),
        "gift_card_title":
            MessageLookupByLibrary.simpleMessage("Ingrese el código de regalo"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("Propina"),
        "invoice_item_total": MessageLookupByLibrary.simpleMessage("Total"),
        "invoice_item_wallet":
            MessageLookupByLibrary.simpleMessage("Billetera"),
        "issue_description_placeholder": MessageLookupByLibrary.simpleMessage(
            "Scrivi una descrizione del problema..."),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Oggetto"),
        "issue_submit_button":
            MessageLookupByLibrary.simpleMessage("Segnala problema"),
        "issue_submit_description": MessageLookupByLibrary.simpleMessage(
            "Puoi segnalare qualsiasi problema che hai avuto con il tuo viaggio. Ti aiuteremo con il problema in una chiamata."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Segnala un problema"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "loading": MessageLookupByLibrary.simpleMessage("Caricamento"),
        "location_not_found_alert_dialog_body":
            MessageLookupByLibrary.simpleMessage(
                "No pudimos obtener su ubicación actual utilizando el GPS de su dispositivo. Verifique el permiso de ubicación de la aplicación en la configuración del dispositivo. Alternativamente, puede usar el campo de búsqueda anterior para seleccionar su punto de recogida."),
        "location_not_found_alert_dialog_title":
            MessageLookupByLibrary.simpleMessage("Ubicación"),
        "login_body": MessageLookupByLibrary.simpleMessage(
            "To book a ride, you need to sign in first. A verification code will be sent to your phone number."),
        "login_cell_number_empty_error": MessageLookupByLibrary.simpleMessage(
            "Inserisci il numero di telefono nel formato corretto"),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Numero di cellulare"),
        "login_enter_phone_subtitle": MessageLookupByLibrary.simpleMessage(
            "To begin booking your ride, please sign in first. We will then send a code to your phone number."),
        "login_title": MessageLookupByLibrary.simpleMessage("Sign In"),
        "login_verify_code_body": MessageLookupByLibrary.simpleMessage(
            "The code has been sent to your phone number."),
        "login_verify_code_title":
            MessageLookupByLibrary.simpleMessage("Enter Verification Code"),
        "looking_dialog_body": MessageLookupByLibrary.simpleMessage(
            "We are looking for the nearest driver for you."),
        "looking_dialog_title":
            MessageLookupByLibrary.simpleMessage("Ride Requested"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("Informazioni"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("Annunci"),
        "menu_login": MessageLookupByLibrary.simpleMessage("Accedi"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Il mio profilo"),
        "menu_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Reserved Rides"),
        "menu_saved_locations":
            MessageLookupByLibrary.simpleMessage("Luoghi Salvati"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("Storico Viaggi"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Portafoglio"),
        "menu_website": MessageLookupByLibrary.simpleMessage("Sito web"),
        "message_body_location": MessageLookupByLibrary.simpleMessage(
            "We could not get your current location from your device\'s GPS. Please use the search field to select your pickup location."),
        "message_delete_account_body": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete your account? You can log in again within 30 days to restore the account. After this period, your data will be completely removed, including all your remaining credits."),
        "message_delete_account_title":
            MessageLookupByLibrary.simpleMessage("Account Deletion"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "Il permesso di notifica è stato negato in precedenza. Per ricevere le notifiche degli ordini, puoi abilitare il permesso dalle impostazioni dell\'app."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("Permesso di notifica"),
        "message_title_location":
            MessageLookupByLibrary.simpleMessage("Location"),
        "message_title_warning":
            MessageLookupByLibrary.simpleMessage("Advertencia"),
        "minutes_format": m6,
        "notice_resend_code_in_seconds": m7,
        "notice_tip_description": MessageLookupByLibrary.simpleMessage(
            "L\'aggiunta della mancia è facoltativa. Puoi aggiungere qualsiasi importo desiderato come mancia per il conducente."),
        "notice_tip_title":
            MessageLookupByLibrary.simpleMessage("Vuoi aggiungere una mancia?"),
        "onboarding_first_page_body": MessageLookupByLibrary.simpleMessage(
            "Servicio de taxi diseñado para tu comodidad \n Viaja con tus conductores favoritos y elige tus preferencias de viaje"),
        "onboarding_first_page_title": m8,
        "onboarding_second_page_body": MessageLookupByLibrary.simpleMessage(
            "Obtén bonificaciones extra por referir amigos, completar viajes y mucho más..."),
        "onboarding_second_page_title":
            MessageLookupByLibrary.simpleMessage("¡Obtén recompensas!"),
        "onboarding_select_language_title":
            MessageLookupByLibrary.simpleMessage("Selecciona el idioma"),
        "onboarding_sign_in_body": MessageLookupByLibrary.simpleMessage(
            "A solo unos segundos de iniciar sesión y comenzar un viaje cómodo"),
        "onboarding_sign_in_title":
            MessageLookupByLibrary.simpleMessage("Iniciar sesión"),
        "order_status_arriving_in": m9,
        "order_status_canceled":
            MessageLookupByLibrary.simpleMessage("Cancelado"),
        "order_status_should_be_arrived":
            MessageLookupByLibrary.simpleMessage("¡En camino!"),
        "payment_in_cash": MessageLookupByLibrary.simpleMessage("Contanti"),
        "payment_method_title":
            MessageLookupByLibrary.simpleMessage("Metodo di pagamento"),
        "placeholder_type": MessageLookupByLibrary.simpleMessage("Type"),
        "profile_email": MessageLookupByLibrary.simpleMessage("E-Mail"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("Nome"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("Genere"),
        "profile_lastname": MessageLookupByLibrary.simpleMessage("Cognome"),
        "rate_ride_body": MessageLookupByLibrary.simpleMessage(
            "Help us improve your experience by rating your driver"),
        "rate_ride_comment_placeholder":
            MessageLookupByLibrary.simpleMessage("Write your comment..."),
        "rate_ride_comment_title":
            MessageLookupByLibrary.simpleMessage("Add comment"),
        "rate_ride_good_points":
            MessageLookupByLibrary.simpleMessage("Good Points"),
        "rate_ride_negative_points":
            MessageLookupByLibrary.simpleMessage("Negative Points"),
        "rate_ride_title":
            MessageLookupByLibrary.simpleMessage("How was your ride?"),
        "register_title_name": MessageLookupByLibrary.simpleMessage("Name"),
        "register_title_verify_number":
            MessageLookupByLibrary.simpleMessage("Verify number"),
        "reservation_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "You will be able to see your future bookings once you make them on the main screen."),
        "reservation_empty_state_title":
            MessageLookupByLibrary.simpleMessage("No Reservations!"),
        "ride_options_title":
            MessageLookupByLibrary.simpleMessage("Ride Options"),
        "ride_options_wait_time_action":
            MessageLookupByLibrary.simpleMessage("Wait Time"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("Preferencias de viaje"),
        "ride_reserved_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Puedes ver los viajes reservados en el menú para ver la información de reserva de este viaje."),
        "ride_reserved_dialog_title":
            MessageLookupByLibrary.simpleMessage("Tu viaje está reservado."),
        "ride_safety_share_trip_information":
            MessageLookupByLibrary.simpleMessage("Share Trip Information"),
        "ride_safety_sos": MessageLookupByLibrary.simpleMessage("SOS"),
        "ride_safety_title":
            MessageLookupByLibrary.simpleMessage("Ride Safety"),
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("Prenota ora"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_trip_not_arrived_time": m10,
        "share_trip_started_time": m11,
        "share_trip_text_driver": m12,
        "share_trip_text_locations": m13,
        "sos_body": MessageLookupByLibrary.simpleMessage(
            "Distress signals are for emergencies and contacting authorities, such as the police or law enforcement. Please use the distress signal in the event that you experience an emergency and require immediate assistance."),
        "sos_ok_action":
            MessageLookupByLibrary.simpleMessage("It\'s an emergency"),
        "sos_send_error": MessageLookupByLibrary.simpleMessage(
            "There was a problem encountered while attempting to send your SOS signal. Please make another attempt or contact 911 directly."),
        "sos_sent_alert": MessageLookupByLibrary.simpleMessage("SOS is sent"),
        "sos_title": MessageLookupByLibrary.simpleMessage("Distress Signal"),
        "status_title_driver_arrived": MessageLookupByLibrary.simpleMessage(
            "Incontra il conducente al punto di ritiro"),
        "status_title_trip_started":
            MessageLookupByLibrary.simpleMessage("Direzione destinazione"),
        "terms_and_condition_button":
            MessageLookupByLibrary.simpleMessage("Terms & Conditions"),
        "terms_and_condition_text": MessageLookupByLibrary.simpleMessage(
            "I have read and agree to the "),
        "textbox_error_select_type_address":
            MessageLookupByLibrary.simpleMessage(
                "Please select the type of address."),
        "title_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Prenota il viaggio"),
        "title_wait_time":
            MessageLookupByLibrary.simpleMessage("Tempo di attesa"),
        "top_up_sheet_pay_button": MessageLookupByLibrary.simpleMessage("Paga"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage(
                "Nessun ordine passato è stato registrato."),
        "trip_history_empty_state_title":
            MessageLookupByLibrary.simpleMessage("¡Sin registros!"),
        "trip_information_title":
            MessageLookupByLibrary.simpleMessage("Informazioni sul viaggio"),
        "verify_phone_code_empty_message": MessageLookupByLibrary.simpleMessage(
            "Il codice di verifica non è stato inserito."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Attività"),
        "wallet_card_title": m14,
        "wallet_empty_state_message": MessageLookupByLibrary.simpleMessage(
            "Nessuna attività registrata."),
        "welcome_card_greeting": m15,
        "welcome_card_subtitle":
            MessageLookupByLibrary.simpleMessage("Dove vuoi andare?"),
        "welcome_card_textbox_placeholder":
            MessageLookupByLibrary.simpleMessage("Qual è la tua destinazione?"),
        "your_destination":
            MessageLookupByLibrary.simpleMessage("Your Destination")
      };
}
