import 'messages.dart';

/// The translations for Spanish Castilian (`es`).
class SEs extends S {
  SEs([String locale = 'es']) : super(locale);

  @override
  String get loading => 'Cargando';

  @override
  String get wallet_empty_state_message => 'Sin antecedentes registrados.';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'Tarifa de pedido';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'Retirar';

  @override
  String get enum_rider_transaction_deduct_correction => 'Corrección';

  @override
  String get enum_unknown => 'Desconocido';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'Pago en la aplicación';

  @override
  String get enum_rider_transaction_recharge_gift => 'Regalo';

  @override
  String get enum_rider_transaction_recharge_correction => 'Corrección';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'Transferencia bancaria';

  @override
  String get top_up_sheet_pay_button => 'Pagar';

  @override
  String get service_selection_book_now => 'Reservar ahora';

  @override
  String get action_cancel => 'Cancelar';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Todos los derechos reservados.';
  }

  @override
  String get menu_about => 'Sobre';

  @override
  String get menu_login => 'Acceso';

  @override
  String get menu_profile => 'Perfil';

  @override
  String get menu_wallet => 'Cartera';

  @override
  String get menu_trip_history => 'Historial de viajes';

  @override
  String get menu_announcements => 'Anuncios';

  @override
  String get menu_saved_locations => 'Ubicaciones guardadas';

  @override
  String get action_save => 'Ahorrar';

  @override
  String get create_address_name_empty_error => 'Por favor ingrese el nombre de la ubicación';

  @override
  String get create_address_title_textfield_hint => 'Título';

  @override
  String get action_delete => 'Borrar';

  @override
  String get trip_history_empty_state_message => 'No se ha registrado ningún pedido anterior.';

  @override
  String get profile_firstname => 'Primer nombre';

  @override
  String get profile_lastname => 'Apellido';

  @override
  String get profile_email => 'Email';

  @override
  String get profile_gender => 'Género';

  @override
  String get enum_gender_male => 'Masculino';

  @override
  String get enum_gender_female => 'Femenino';

  @override
  String get login_cell_number_textfield_hint => 'Numero de celular';

  @override
  String get login_cell_number_empty_error => 'Ingrese el número de teléfono en el formato correcto';

  @override
  String get action_next => 'próximo';

  @override
  String get verify_phone_code_empty_message => 'No se ingresa el código de verificación.';

  @override
  String get wallet_activities_heading => 'Actividad';

  @override
  String get menu_logout => 'Cerrar sesión';

  @override
  String get enum_gender_unknown => 'Desconocido';

  @override
  String get enum_address_type_home => 'Hogar';

  @override
  String get enum_address_type_work => 'Trabajar';

  @override
  String get enum_address_type_partner => 'Compañero';

  @override
  String get enum_address_type_other => 'Otro';

  @override
  String get message_notification_permission_denined_message => 'El permiso de notificación fue denegado anteriormente. Para recibir notificaciones de nuevos pedidos, puede habilitar el permiso desde la configuración de la aplicación.';

  @override
  String get message_notification_permission_title => 'Permiso de notificación';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_website => 'Sitio web';

  @override
  String get action_confirm_and_reserve_ride => 'Confirmar y reservar viaje';

  @override
  String get title_reserve_ride => 'Reservar viaje';

  @override
  String get error_region_unsupported => 'La región no es compatible.';

  @override
  String get action_confirm => 'Confirmar';

  @override
  String get title_wait_time => 'Tiempo de espera';

  @override
  String get notice_tip_title => '¿Quieres añadir un consejo?';

  @override
  String get notice_tip_description => 'Agregar propina es opcional. Puede agregar la cantidad que desee como propina para el conductor.';

  @override
  String get action_pay_for_ride => 'Pagar por el viaje';

  @override
  String get action_confirm_and_pay => 'Confirmar y pagar';

  @override
  String get action_add_photo => 'Añadir foto';

  @override
  String get complaint_submit_success_message => 'Se presenta denuncia. Espere un contacto de nuestro representante de soporte sobre su consulta.';

  @override
  String get error_field_cant_be_empty => 'No puede estar vacío';

  @override
  String get issue_description_placeholder => 'Escribe una descripción de tu problema...';

  @override
  String get issue_subject_placeholder => 'Tema';

  @override
  String get issue_submit_description => 'Puede informar cualquier problema que haya tenido con su viaje. Le ayudaremos con el problema dentro de una llamada.';

  @override
  String get issue_submit_title => 'Reportar un problema';

  @override
  String get issue_submit_button => 'Reportar problema';

  @override
  String get trip_information_title => 'Información del viaje';

  @override
  String get payment_in_cash => 'Dinero';

  @override
  String get payment_method_title => 'Método de pago';

  @override
  String get button_ride_safety => 'Seguridad en la conducción';

  @override
  String get status_title_driver_arrived => 'Conozca al conductor en el punto de recogida.';

  @override
  String get status_title_trip_started => 'Rumbo al destino';

  @override
  String get welcome_card_subtitle => '¿A dónde vas?';

  @override
  String get welcome_card_textbox_placeholder => '¿Dónde está tu destino?';

  @override
  String welcome_card_greeting(Object firstName) {
    return '¡Hola, $firstName!';
  }

  @override
  String get login_title => 'Registrarse';

  @override
  String get login_body => 'Primero, debe iniciar sesión para reservar su viaje. Se enviará un código de verificación a su número de teléfono.';

  @override
  String get terms_and_condition_text => 'He leído y estoy de acuerdo con';

  @override
  String get terms_and_condition_button => 'Términos y condiciones';

  @override
  String get login_verify_code_title => 'Introduzca el código';

  @override
  String get login_verify_code_body => 'El código ha sido enviado a su número de teléfono';

  @override
  String get action_continue => 'Continuar';

  @override
  String get current_location => 'Ubicación actual';

  @override
  String get your_destination => 'Tu destino';

  @override
  String get add_stop => 'Añadir parada';

  @override
  String get action_choose_on_map => 'elige en el mapa';

  @override
  String get message_title_location => 'Ubicación';

  @override
  String get message_body_location => 'No pudimos obtener su ubicación actual del GPS de su dispositivo. Utilice el campo de búsqueda para seleccionar su lugar de recogida.';

  @override
  String get menu_reserved_rides => 'Viajes reservados';

  @override
  String get reservation_empty_state_title => '¡No reservaciones!';

  @override
  String get reservation_empty_state_body => 'Podrás ver tus futuras reservas una vez que las realices en la pantalla principal.';

  @override
  String get action_cancel_ride => 'Cancelar viaje';

  @override
  String get enum_address_type_gym => 'Gimnasia';

  @override
  String get enum_address_type_parent_house => 'Casa de los padres';

  @override
  String get enum_address_type_cafe => 'Cafetería';

  @override
  String get enum_address_type_park => 'Parque';

  @override
  String get action_add_favorite_location => 'Agregar ubicación favorita';

  @override
  String get favorite_locations_list_title => 'Ubicaciones favoritas';

  @override
  String get favorite_locations_list_body => 'Puede guardar sus ubicaciones favoritas para un acceso más fácil';

  @override
  String get favorite_location_details_title => 'Nombra tu ubicación favorita';

  @override
  String get textbox_error_select_type_address => 'Por favor seleccione el tipo de dirección';

  @override
  String get placeholder_type => 'Escribe';

  @override
  String get action_delete_account => 'Borrar cuenta';

  @override
  String get message_delete_account_title => 'Eliminación de cuenta';

  @override
  String get message_delete_account_body => '¿Está seguro de que desea eliminar su cuenta? Puede iniciar sesión nuevamente dentro de los 30 días para restaurar la cuenta. Después de este período, sus datos se eliminan por completo, incluidos todos sus créditos restantes.';

  @override
  String get action_edit => 'Editar';

  @override
  String get action_confirm_location => 'Confirmar ubicación';

  @override
  String get action_coupon_code => 'Código promocional';

  @override
  String get enter_coupon_dialog_title => 'Código promocional';

  @override
  String get enter_coupon_dialog_body => 'Introduce tu código de cupón para que se aplique al precio';

  @override
  String get enter_coupon_placeholder => 'Introduce el código de cupón';

  @override
  String get looking_dialog_title => 'Viaje solicitado';

  @override
  String get looking_dialog_body => 'Estamos buscando el conductor más cercano para usted.';

  @override
  String get action_cancel_request => 'Cancelar petición';

  @override
  String get rate_ride_title => '¿Cómo estuvo tu viaje?';

  @override
  String get rate_ride_body => 'Ayúdanos a mejorar tu experiencia calificando a tu conductor';

  @override
  String get rate_ride_good_points => 'Buenos puntos';

  @override
  String get rate_ride_negative_points => 'Puntos negativos';

  @override
  String get rate_ride_comment_title => 'Agregar comentario';

  @override
  String get rate_ride_comment_placeholder => 'escribe tu comentario...';

  @override
  String get action_send_feedback => 'Enviar comentarios';

  @override
  String get action_ride_options => 'Opciones de viaje';

  @override
  String get ride_options_title => 'Opciones de viaje';

  @override
  String get ride_options_wait_time_action => 'Tiempo de espera';

  @override
  String get ride_safety_title => 'Seguridad en la conducción';

  @override
  String get ride_safety_share_trip_information => 'Compartir información de viaje';

  @override
  String get ride_safety_sos => 'llamada de socorro';

  @override
  String get sos_title => 'Señal de socorro';

  @override
  String get sos_body => 'Las señales de socorro son para emergencias y es posible que se realice una llamada a las autoridades, como la policía, en su nombre. Utilice esta función solo en emergencias en las que pueda estar en peligro.';

  @override
  String get sos_sent_alert => 'Se envía SOS';

  @override
  String get sos_ok_action => 'Es una emergencia';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Estoy en camino a $destination desde $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' El nombre de mi conductor es $firstName $lastName y su número de móvil es +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' El viaje comenzó el $startTime y espero que dure alrededor de $duration minutos';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Espero que el viaje en sí tome alrededor de $duration minutos una vez que suba al auto del conductor.';
  }

  @override
  String get announcements_empty_state_title => '¡Aún no hay anuncios!';

  @override
  String get announcements_empty_state_body => 'Te avisaremos cuando lleguen nuevos anuncios.';

  @override
  String get action_set_location => 'Escoger localización';

  @override
  String get trip_history_empty_state_title => '¡No hay registros!';

  @override
  String get location_not_found_alert_dialog_title => 'Ubicación';

  @override
  String get location_not_found_alert_dialog_body => 'No pudimos obtener su ubicación actual usando el GPS de su dispositivo. Verifique el permiso de ubicación del dispositivo para la aplicación desde la configuración del dispositivo. Alternativamente, puede usar el campo de búsqueda de arriba para seleccionar su punto de recogida.';

  @override
  String get gift_card_title => 'Introduce el código de regalo';

  @override
  String get gift_card_body => 'Introduce el código de tu tarjeta de regalo';

  @override
  String get gift_card_text_placeholder => 'Ingrese el código de la tarjeta de regalo';

  @override
  String get action_apply => 'Aplicar';

  @override
  String get order_status_should_be_arrived => 'debe ser llegado';

  @override
  String order_status_arriving_in(Object minutes) {
    return 'Llegando en $minutes';
  }

  @override
  String get message_title_warning => 'Advertencia';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'La cancelación del servicio después de que el conductor haya aceptado el viaje está sujeta a una penalización por cancelación de $fee. ¿Confirmas?';
  }

  @override
  String get confirm => 'Confirmar';

  @override
  String get add_credit_select_payment_method => 'Seleccione el método de pago:';

  @override
  String get add_credit_custom_credit_placeholder => 'Agregar crédito personalizado';

  @override
  String get add_credit_custom_credit_text_placeholder => 'Disfraz';

  @override
  String get invoice_item_tip => 'Consejo';

  @override
  String get invoice_item_wallet => 'Cartera';

  @override
  String get invoice_item_total => 'Total';

  @override
  String get add_credit_dialog_title => 'Añadir crédito';

  @override
  String get add_credit_choose_amount => 'Elija la cantidad';

  @override
  String get action_ride_preferences => 'Preferencias de viaje';

  @override
  String get ride_preferences_title => 'Preferencias de viaje';

  @override
  String get action_confirm_and_continue => 'Confirmar y continuar';

  @override
  String get action_see_reserved_rides => 'Ver viajes reservados';

  @override
  String get ride_reserved_dialog_title => 'Su viaje está reservado.';

  @override
  String get ride_reserved_dialog_body => 'Puede consultar los viajes reservados en el menú para ver la información de reserva de este viaje.';

  @override
  String get alert_coupon_unavailable => 'El cupón no está disponible';

  @override
  String minutes_format(Object minutes) {
    return '$minutes minutos';
  }

  @override
  String get action_back => 'atrás';

  @override
  String wallet_card_title(Object appName) {
    return 'Billetera $appName';
  }

  @override
  String get action_redeem_gift_card => 'Canjear tarjeta de regalo';

  @override
  String get order_status_canceled => 'Cancelado';

  @override
  String get action_skip_for_now => 'Saltar por ahora';

  @override
  String get onboarding_select_language_title => 'Seleccione el idioma';

  @override
  String onboarding_first_page_title(Object appName) {
    return '¡Bienvenido a $appName!';
  }

  @override
  String get onboarding_first_page_body => 'Servicio de taxi diseñado para tu comodidad\n tenga viajes con sus conductores favoritos y elija sus preferencias de viaje';

  @override
  String get onboarding_second_page_title => '¡Ser recompensado!';

  @override
  String get onboarding_second_page_body => 'obtén bonos extra por recomendar a un amigo, completar viajes y mucho más...';

  @override
  String get onboarding_sign_in_title => 'Iniciar sesión';

  @override
  String get onboarding_sign_in_body => 'A unos segundos de iniciar sesión y comenzar un viaje cómodo';

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
