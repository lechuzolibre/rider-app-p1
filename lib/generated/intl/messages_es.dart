// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(fee) =>
      "La cancelación del servicio después de que el conductor haya aceptado el viaje está sujeta a una penalización por cancelación de ${fee}. ¿Confirmas?";

  static String m1(company) =>
      "Copyright © ${company}, Todos los derechos reservados.";

  static String m2(distance) => "${distance} ft";

  static String m3(distance) => "${distance} km";

  static String m4(distance) => "${distance} m";

  static String m5(distance) => "${distance} mi";

  static String m6(minutes) => "${minutes} minutos";

  static String m7(seconds) => "Resend code in ${seconds} seconds";

  static String m8(appName) => "¡Bienvenido a ${appName}!";

  static String m9(minutes) => "Llegando en ${minutes}";

  static String m10(duration) =>
      " Espero que el viaje en sí tome alrededor de ${duration} minutos una vez que suba al auto del conductor.";

  static String m11(startTime, duration) =>
      " El viaje comenzó el ${startTime} y espero que dure alrededor de ${duration} minutos";

  static String m12(firstName, lastName, mobileNumber) =>
      " El nombre de mi conductor es ${firstName} ${lastName} y su número de móvil es +${mobileNumber}.";

  static String m13(destination, pickup) =>
      "Estoy en camino a ${destination} desde ${pickup}.";

  static String m14(appName) => "Billetera ${appName}";

  static String m15(firstName) => "¡Hola, ${firstName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_favorite_location":
            MessageLookupByLibrary.simpleMessage("Agregar ubicación favorita"),
        "action_add_photo": MessageLookupByLibrary.simpleMessage("Añadir foto"),
        "action_apply": MessageLookupByLibrary.simpleMessage("Aplicar"),
        "action_back": MessageLookupByLibrary.simpleMessage("atrás"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "action_cancel_request":
            MessageLookupByLibrary.simpleMessage("Cancelar petición"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("Cancelar viaje"),
        "action_choose_on_map":
            MessageLookupByLibrary.simpleMessage("elige en el mapa"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("Confirmar y continuar"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("Confirmar y pagar"),
        "action_confirm_and_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Confirmar y reservar viaje"),
        "action_confirm_location":
            MessageLookupByLibrary.simpleMessage("Confirmar ubicación"),
        "action_continue": MessageLookupByLibrary.simpleMessage("Continuar"),
        "action_coupon_code":
            MessageLookupByLibrary.simpleMessage("Código promocional"),
        "action_delete": MessageLookupByLibrary.simpleMessage("Borrar"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("Borrar cuenta"),
        "action_edit": MessageLookupByLibrary.simpleMessage("Editar"),
        "action_next": MessageLookupByLibrary.simpleMessage("próximo"),
        "action_ok": MessageLookupByLibrary.simpleMessage("OK"),
        "action_pay_for_ride":
            MessageLookupByLibrary.simpleMessage("Pagar por el viaje"),
        "action_redeem_gift_card":
            MessageLookupByLibrary.simpleMessage("Canjear tarjeta de regalo"),
        "action_resend_code":
            MessageLookupByLibrary.simpleMessage("Resend Code"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("Opciones de viaje"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("Preferencias de viaje"),
        "action_save": MessageLookupByLibrary.simpleMessage("Ahorrar"),
        "action_see_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Ver viajes reservados"),
        "action_send_feedback":
            MessageLookupByLibrary.simpleMessage("Enviar comentarios"),
        "action_set_location":
            MessageLookupByLibrary.simpleMessage("Escoger localización"),
        "action_skip_for_now":
            MessageLookupByLibrary.simpleMessage("Saltar por ahora"),
        "add_credit_choose_amount":
            MessageLookupByLibrary.simpleMessage("Elija la cantidad"),
        "add_credit_custom_credit_placeholder":
            MessageLookupByLibrary.simpleMessage(
                "Agregar crédito personalizado"),
        "add_credit_custom_credit_text_placeholder":
            MessageLookupByLibrary.simpleMessage("Disfraz"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("Añadir crédito"),
        "add_credit_select_payment_method":
            MessageLookupByLibrary.simpleMessage(
                "Seleccione el método de pago:"),
        "add_stop": MessageLookupByLibrary.simpleMessage("Añadir parada"),
        "alert_coupon_unavailable":
            MessageLookupByLibrary.simpleMessage("El cupón no está disponible"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Te avisaremos cuando lleguen nuevos anuncios."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("¡Aún no hay anuncios!"),
        "button_ride_safety":
            MessageLookupByLibrary.simpleMessage("Seguridad en la conducción"),
        "cancelation_fee_confirmation_body": m0,
        "complaint_submit_error_message": MessageLookupByLibrary.simpleMessage(
            "The submission of your complaint was unsuccessful, likely due to connectivity issues. Please try again."),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Se presenta denuncia. Espere un contacto de nuestro representante de soporte sobre su consulta."),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
        "copyright_notice": m1,
        "create_address_name_empty_error": MessageLookupByLibrary.simpleMessage(
            "Por favor ingrese el nombre de la ubicación"),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Título"),
        "current_location":
            MessageLookupByLibrary.simpleMessage("Ubicación actual"),
        "distanceFeet": m2,
        "distanceKm": m3,
        "distanceMeters": m4,
        "distanceMiles": m5,
        "enter_coupon_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Introduce tu código de cupón para que se aplique al precio"),
        "enter_coupon_dialog_title":
            MessageLookupByLibrary.simpleMessage("Código promocional"),
        "enter_coupon_placeholder": MessageLookupByLibrary.simpleMessage(
            "Introduce el código de cupón"),
        "enum_address_type_cafe":
            MessageLookupByLibrary.simpleMessage("Cafetería"),
        "enum_address_type_gym":
            MessageLookupByLibrary.simpleMessage("Gimnasia"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("Hogar"),
        "enum_address_type_other": MessageLookupByLibrary.simpleMessage("Otro"),
        "enum_address_type_parent_house":
            MessageLookupByLibrary.simpleMessage("Casa de los padres"),
        "enum_address_type_park":
            MessageLookupByLibrary.simpleMessage("Parque"),
        "enum_address_type_partner":
            MessageLookupByLibrary.simpleMessage("Compañero"),
        "enum_address_type_work":
            MessageLookupByLibrary.simpleMessage("Trabajar"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("Femenino"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("Masculino"),
        "enum_gender_unknown":
            MessageLookupByLibrary.simpleMessage("Desconocido"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("Corrección"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("Tarifa de pedido"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("Retirar"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Transferencia bancaria"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("Corrección"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("Regalo"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("Pago en la aplicación"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Desconocido"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("No puede estar vacío"),
        "error_region_unsupported":
            MessageLookupByLibrary.simpleMessage("La región no es compatible."),
        "favorite_location_details_title": MessageLookupByLibrary.simpleMessage(
            "Nombra tu ubicación favorita"),
        "favorite_locations_list_body": MessageLookupByLibrary.simpleMessage(
            "Puede guardar sus ubicaciones favoritas para un acceso más fácil"),
        "favorite_locations_list_title":
            MessageLookupByLibrary.simpleMessage("Ubicaciones favoritas"),
        "gift_card_body": MessageLookupByLibrary.simpleMessage(
            "Introduce el código de tu tarjeta de regalo"),
        "gift_card_text_placeholder": MessageLookupByLibrary.simpleMessage(
            "Ingrese el código de la tarjeta de regalo"),
        "gift_card_title": MessageLookupByLibrary.simpleMessage(
            "Introduce el código de regalo"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("Consejo"),
        "invoice_item_total": MessageLookupByLibrary.simpleMessage("Total"),
        "invoice_item_wallet": MessageLookupByLibrary.simpleMessage("Cartera"),
        "issue_description_placeholder": MessageLookupByLibrary.simpleMessage(
            "Escribe una descripción de tu problema..."),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Tema"),
        "issue_submit_button":
            MessageLookupByLibrary.simpleMessage("Reportar problema"),
        "issue_submit_description": MessageLookupByLibrary.simpleMessage(
            "Puede informar cualquier problema que haya tenido con su viaje. Le ayudaremos con el problema dentro de una llamada."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Reportar un problema"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "loading": MessageLookupByLibrary.simpleMessage("Cargando"),
        "location_not_found_alert_dialog_body":
            MessageLookupByLibrary.simpleMessage(
                "No pudimos obtener su ubicación actual usando el GPS de su dispositivo. Verifique el permiso de ubicación del dispositivo para la aplicación desde la configuración del dispositivo. Alternativamente, puede usar el campo de búsqueda de arriba para seleccionar su punto de recogida."),
        "location_not_found_alert_dialog_title":
            MessageLookupByLibrary.simpleMessage("Ubicación"),
        "login_body": MessageLookupByLibrary.simpleMessage(
            "Primero, debe iniciar sesión para reservar su viaje. Se enviará un código de verificación a su número de teléfono."),
        "login_cell_number_empty_error": MessageLookupByLibrary.simpleMessage(
            "Ingrese el número de teléfono en el formato correcto"),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Numero de celular"),
        "login_enter_phone_subtitle": MessageLookupByLibrary.simpleMessage(
            "To begin booking your ride, please sign in first. We will then send a code to your phone number."),
        "login_title": MessageLookupByLibrary.simpleMessage("Registrarse"),
        "login_verify_code_body": MessageLookupByLibrary.simpleMessage(
            "El código ha sido enviado a su número de teléfono"),
        "login_verify_code_title":
            MessageLookupByLibrary.simpleMessage("Introduzca el código"),
        "looking_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Estamos buscando el conductor más cercano para usted."),
        "looking_dialog_title":
            MessageLookupByLibrary.simpleMessage("Viaje solicitado"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("Sobre"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("Anuncios"),
        "menu_login": MessageLookupByLibrary.simpleMessage("Acceso"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Perfil"),
        "menu_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Viajes reservados"),
        "menu_saved_locations":
            MessageLookupByLibrary.simpleMessage("Ubicaciones guardadas"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("Historial de viajes"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Cartera"),
        "menu_website": MessageLookupByLibrary.simpleMessage("Sitio web"),
        "message_body_location": MessageLookupByLibrary.simpleMessage(
            "No pudimos obtener su ubicación actual del GPS de su dispositivo. Utilice el campo de búsqueda para seleccionar su lugar de recogida."),
        "message_delete_account_body": MessageLookupByLibrary.simpleMessage(
            "¿Está seguro de que desea eliminar su cuenta? Puede iniciar sesión nuevamente dentro de los 30 días para restaurar la cuenta. Después de este período, sus datos se eliminan por completo, incluidos todos sus créditos restantes."),
        "message_delete_account_title":
            MessageLookupByLibrary.simpleMessage("Eliminación de cuenta"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "El permiso de notificación fue denegado anteriormente. Para recibir notificaciones de nuevos pedidos, puede habilitar el permiso desde la configuración de la aplicación."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("Permiso de notificación"),
        "message_title_location":
            MessageLookupByLibrary.simpleMessage("Ubicación"),
        "message_title_warning":
            MessageLookupByLibrary.simpleMessage("Advertencia"),
        "minutes_format": m6,
        "notice_resend_code_in_seconds": m7,
        "notice_tip_description": MessageLookupByLibrary.simpleMessage(
            "Agregar propina es opcional. Puede agregar la cantidad que desee como propina para el conductor."),
        "notice_tip_title":
            MessageLookupByLibrary.simpleMessage("¿Quieres añadir un consejo?"),
        "onboarding_first_page_body": MessageLookupByLibrary.simpleMessage(
            "Servicio de taxi diseñado para tu comodidad\n tenga viajes con sus conductores favoritos y elija sus preferencias de viaje"),
        "onboarding_first_page_title": m8,
        "onboarding_second_page_body": MessageLookupByLibrary.simpleMessage(
            "obtén bonos extra por recomendar a un amigo, completar viajes y mucho más..."),
        "onboarding_second_page_title":
            MessageLookupByLibrary.simpleMessage("¡Ser recompensado!"),
        "onboarding_select_language_title":
            MessageLookupByLibrary.simpleMessage("Seleccione el idioma"),
        "onboarding_sign_in_body": MessageLookupByLibrary.simpleMessage(
            "A unos segundos de iniciar sesión y comenzar un viaje cómodo"),
        "onboarding_sign_in_title":
            MessageLookupByLibrary.simpleMessage("Iniciar sesión"),
        "order_status_arriving_in": m9,
        "order_status_canceled":
            MessageLookupByLibrary.simpleMessage("Cancelado"),
        "order_status_should_be_arrived":
            MessageLookupByLibrary.simpleMessage("debe ser llegado"),
        "payment_in_cash": MessageLookupByLibrary.simpleMessage("Dinero"),
        "payment_method_title":
            MessageLookupByLibrary.simpleMessage("Método de pago"),
        "placeholder_type": MessageLookupByLibrary.simpleMessage("Escribe"),
        "profile_email": MessageLookupByLibrary.simpleMessage("Email"),
        "profile_firstname":
            MessageLookupByLibrary.simpleMessage("Primer nombre"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("Género"),
        "profile_lastname": MessageLookupByLibrary.simpleMessage("Apellido"),
        "rate_ride_body": MessageLookupByLibrary.simpleMessage(
            "Ayúdanos a mejorar tu experiencia calificando a tu conductor"),
        "rate_ride_comment_placeholder":
            MessageLookupByLibrary.simpleMessage("escribe tu comentario..."),
        "rate_ride_comment_title":
            MessageLookupByLibrary.simpleMessage("Agregar comentario"),
        "rate_ride_good_points":
            MessageLookupByLibrary.simpleMessage("Buenos puntos"),
        "rate_ride_negative_points":
            MessageLookupByLibrary.simpleMessage("Puntos negativos"),
        "rate_ride_title":
            MessageLookupByLibrary.simpleMessage("¿Cómo estuvo tu viaje?"),
        "register_title_name": MessageLookupByLibrary.simpleMessage("Name"),
        "register_title_verify_number":
            MessageLookupByLibrary.simpleMessage("Verify number"),
        "reservation_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Podrás ver tus futuras reservas una vez que las realices en la pantalla principal."),
        "reservation_empty_state_title":
            MessageLookupByLibrary.simpleMessage("¡No reservaciones!"),
        "ride_options_title":
            MessageLookupByLibrary.simpleMessage("Opciones de viaje"),
        "ride_options_wait_time_action":
            MessageLookupByLibrary.simpleMessage("Tiempo de espera"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("Preferencias de viaje"),
        "ride_reserved_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Puede consultar los viajes reservados en el menú para ver la información de reserva de este viaje."),
        "ride_reserved_dialog_title":
            MessageLookupByLibrary.simpleMessage("Su viaje está reservado."),
        "ride_safety_share_trip_information":
            MessageLookupByLibrary.simpleMessage(
                "Compartir información de viaje"),
        "ride_safety_sos":
            MessageLookupByLibrary.simpleMessage("llamada de socorro"),
        "ride_safety_title":
            MessageLookupByLibrary.simpleMessage("Seguridad en la conducción"),
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("Reservar ahora"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_trip_not_arrived_time": m10,
        "share_trip_started_time": m11,
        "share_trip_text_driver": m12,
        "share_trip_text_locations": m13,
        "sos_body": MessageLookupByLibrary.simpleMessage(
            "Las señales de socorro son para emergencias y es posible que se realice una llamada a las autoridades, como la policía, en su nombre. Utilice esta función solo en emergencias en las que pueda estar en peligro."),
        "sos_ok_action":
            MessageLookupByLibrary.simpleMessage("Es una emergencia"),
        "sos_send_error": MessageLookupByLibrary.simpleMessage(
            "There was a problem encountered while attempting to send your SOS signal. Please make another attempt or contact 911 directly."),
        "sos_sent_alert": MessageLookupByLibrary.simpleMessage("Se envía SOS"),
        "sos_title": MessageLookupByLibrary.simpleMessage("Señal de socorro"),
        "status_title_driver_arrived": MessageLookupByLibrary.simpleMessage(
            "Conozca al conductor en el punto de recogida."),
        "status_title_trip_started":
            MessageLookupByLibrary.simpleMessage("Rumbo al destino"),
        "terms_and_condition_button":
            MessageLookupByLibrary.simpleMessage("Términos y condiciones"),
        "terms_and_condition_text": MessageLookupByLibrary.simpleMessage(
            "He leído y estoy de acuerdo con"),
        "textbox_error_select_type_address":
            MessageLookupByLibrary.simpleMessage(
                "Por favor seleccione el tipo de dirección"),
        "title_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Reservar viaje"),
        "title_wait_time":
            MessageLookupByLibrary.simpleMessage("Tiempo de espera"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("Pagar"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage(
                "No se ha registrado ningún pedido anterior."),
        "trip_history_empty_state_title":
            MessageLookupByLibrary.simpleMessage("¡No hay registros!"),
        "trip_information_title":
            MessageLookupByLibrary.simpleMessage("Información del viaje"),
        "verify_phone_code_empty_message": MessageLookupByLibrary.simpleMessage(
            "No se ingresa el código de verificación."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Actividad"),
        "wallet_card_title": m14,
        "wallet_empty_state_message": MessageLookupByLibrary.simpleMessage(
            "Sin antecedentes registrados."),
        "welcome_card_greeting": m15,
        "welcome_card_subtitle":
            MessageLookupByLibrary.simpleMessage("¿A dónde vas?"),
        "welcome_card_textbox_placeholder":
            MessageLookupByLibrary.simpleMessage("¿Dónde está tu destino?"),
        "your_destination": MessageLookupByLibrary.simpleMessage("Tu destino")
      };
}
