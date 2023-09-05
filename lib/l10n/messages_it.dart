import 'messages.dart';

/// The translations for Italian (`it`).
class SIt extends S {
  SIt([String locale = 'it']) : super(locale);

  @override
  String get loading => 'Caricamento';

  @override
  String get wallet_empty_state_message => 'Nessuna attività registrata.';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'Tariffa d\'Ordine';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'Prelievo';

  @override
  String get enum_rider_transaction_deduct_correction => 'Correzione';

  @override
  String get enum_unknown => 'Sconosciuto';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'Pagamento In-App';

  @override
  String get enum_rider_transaction_recharge_gift => 'Buono Regalo';

  @override
  String get enum_rider_transaction_recharge_correction => 'Correzione';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'Bonifico Bancario';

  @override
  String get top_up_sheet_pay_button => 'Paga';

  @override
  String get service_selection_book_now => 'Prenota ora';

  @override
  String get action_cancel => 'Annulla';

  @override
  String copyright_notice(Object company) {
    return 'Diritti d\'autore © $company, tutti i diritti riservati.';
  }

  @override
  String get menu_about => 'Informazioni';

  @override
  String get menu_login => 'Accedi';

  @override
  String get menu_profile => 'Il mio profilo';

  @override
  String get menu_wallet => 'Portafoglio';

  @override
  String get menu_trip_history => 'Storico Viaggi';

  @override
  String get menu_announcements => 'Annunci';

  @override
  String get menu_saved_locations => 'Luoghi Salvati';

  @override
  String get action_save => 'Salva';

  @override
  String get create_address_name_empty_error => 'Inserisci il nome del luogo';

  @override
  String get create_address_title_textfield_hint => 'Titolo';

  @override
  String get action_delete => 'Elimina';

  @override
  String get trip_history_empty_state_message => 'Nessun ordine passato è stato registrato.';

  @override
  String get profile_firstname => 'Nome';

  @override
  String get profile_lastname => 'Cognome';

  @override
  String get profile_email => 'E-Mail';

  @override
  String get profile_gender => 'Genere';

  @override
  String get enum_gender_male => 'Maschio';

  @override
  String get enum_gender_female => 'Femmina';

  @override
  String get login_cell_number_textfield_hint => 'Numero di cellulare';

  @override
  String get login_cell_number_empty_error => 'Inserisci il numero di telefono nel formato corretto';

  @override
  String get action_next => 'Avanti';

  @override
  String get verify_phone_code_empty_message => 'Il codice di verifica non è stato inserito.';

  @override
  String get wallet_activities_heading => 'Attività';

  @override
  String get menu_logout => 'Logout';

  @override
  String get enum_gender_unknown => 'Sconosciuto';

  @override
  String get enum_address_type_home => 'Casa';

  @override
  String get enum_address_type_work => 'Lavoro';

  @override
  String get enum_address_type_partner => 'Partner';

  @override
  String get enum_address_type_other => 'Altro';

  @override
  String get message_notification_permission_denined_message => 'Il permesso di notifica è stato negato in precedenza. Per ricevere le notifiche degli ordini, puoi abilitare il permesso dalle impostazioni dell\'app.';

  @override
  String get message_notification_permission_title => 'Permesso di notifica';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_website => 'Sito web';

  @override
  String get action_confirm_and_reserve_ride => 'Conferma e prenota il viaggio';

  @override
  String get title_reserve_ride => 'Prenota il viaggio';

  @override
  String get error_region_unsupported => 'La regione non è supportata.';

  @override
  String get action_confirm => 'Conferma';

  @override
  String get title_wait_time => 'Tempo di attesa';

  @override
  String get notice_tip_title => 'Vuoi aggiungere una mancia?';

  @override
  String get notice_tip_description => 'L\'aggiunta della mancia è facoltativa. Puoi aggiungere qualsiasi importo desiderato come mancia per il conducente.';

  @override
  String get action_pay_for_ride => 'Paga il viaggio';

  @override
  String get action_confirm_and_pay => 'Conferma e paga';

  @override
  String get action_add_photo => 'Aggiungi Foto';

  @override
  String get complaint_submit_success_message => 'Il reclamo è stato inviato. Attendi il contatto dal nostro rappresentante del supporto per la tua richiesta.';

  @override
  String get error_field_cant_be_empty => 'Non può essere vuoto';

  @override
  String get issue_description_placeholder => 'Scrivi una descrizione del problema...';

  @override
  String get issue_subject_placeholder => 'Oggetto';

  @override
  String get issue_submit_description => 'Puoi segnalare qualsiasi problema che hai avuto con il tuo viaggio. Ti aiuteremo con il problema in una chiamata.';

  @override
  String get issue_submit_title => 'Segnala un problema';

  @override
  String get issue_submit_button => 'Segnala problema';

  @override
  String get trip_information_title => 'Informazioni sul viaggio';

  @override
  String get payment_in_cash => 'Contanti';

  @override
  String get payment_method_title => 'Metodo di pagamento';

  @override
  String get button_ride_safety => 'Sicurezza del viaggio';

  @override
  String get status_title_driver_arrived => 'Incontra il conducente al punto di ritiro';

  @override
  String get status_title_trip_started => 'Direzione destinazione';

  @override
  String get welcome_card_subtitle => 'Dove vuoi andare?';

  @override
  String get welcome_card_textbox_placeholder => 'Qual è la tua destinazione?';

  @override
  String welcome_card_greeting(Object firstName) {
    return 'Ciao $firstName!';
  }

  @override
  String get login_title => 'Sign In';

  @override
  String get login_body => 'To book a ride, you need to sign in first. A verification code will be sent to your phone number.';

  @override
  String get terms_and_condition_text => 'I have read and agree to the ';

  @override
  String get terms_and_condition_button => 'Terms & Conditions';

  @override
  String get login_verify_code_title => 'Enter Verification Code';

  @override
  String get login_verify_code_body => 'The code has been sent to your phone number.';

  @override
  String get action_continue => 'Continue';

  @override
  String get current_location => 'Current Location';

  @override
  String get your_destination => 'Your Destination';

  @override
  String get add_stop => 'Add Stop';

  @override
  String get action_choose_on_map => 'Choose on Map';

  @override
  String get message_title_location => 'Location';

  @override
  String get message_body_location => 'We could not get your current location from your device\'s GPS. Please use the search field to select your pickup location.';

  @override
  String get menu_reserved_rides => 'Reserved Rides';

  @override
  String get reservation_empty_state_title => 'No Reservations!';

  @override
  String get reservation_empty_state_body => 'You will be able to see your future bookings once you make them on the main screen.';

  @override
  String get action_cancel_ride => 'Cancel Ride';

  @override
  String get enum_address_type_gym => 'Gym';

  @override
  String get enum_address_type_parent_house => 'Parent\'s House';

  @override
  String get enum_address_type_cafe => 'Cafe';

  @override
  String get enum_address_type_park => 'Park';

  @override
  String get action_add_favorite_location => 'Add Favorite Location';

  @override
  String get favorite_locations_list_title => 'Favorite Locations';

  @override
  String get favorite_locations_list_body => 'You can save your favorite locations for easier access.';

  @override
  String get favorite_location_details_title => 'Name Your Favorite Location';

  @override
  String get textbox_error_select_type_address => 'Please select the type of address.';

  @override
  String get placeholder_type => 'Type';

  @override
  String get action_delete_account => 'Delete Account';

  @override
  String get message_delete_account_title => 'Account Deletion';

  @override
  String get message_delete_account_body => 'Are you sure you want to delete your account? You can log in again within 30 days to restore the account. After this period, your data will be completely removed, including all your remaining credits.';

  @override
  String get action_edit => 'Edit';

  @override
  String get action_confirm_location => 'Confirm Location';

  @override
  String get action_coupon_code => 'Coupon Code';

  @override
  String get enter_coupon_dialog_title => 'Coupon Code';

  @override
  String get enter_coupon_dialog_body => 'Enter your coupon code to apply it to the price.';

  @override
  String get enter_coupon_placeholder => 'Enter Coupon Code';

  @override
  String get looking_dialog_title => 'Ride Requested';

  @override
  String get looking_dialog_body => 'We are looking for the nearest driver for you.';

  @override
  String get action_cancel_request => 'Cancel Request';

  @override
  String get rate_ride_title => 'How was your ride?';

  @override
  String get rate_ride_body => 'Help us improve your experience by rating your driver';

  @override
  String get rate_ride_good_points => 'Good Points';

  @override
  String get rate_ride_negative_points => 'Negative Points';

  @override
  String get rate_ride_comment_title => 'Add comment';

  @override
  String get rate_ride_comment_placeholder => 'Write your comment...';

  @override
  String get action_send_feedback => 'Send Feedback';

  @override
  String get action_ride_options => 'Ride Options';

  @override
  String get ride_options_title => 'Ride Options';

  @override
  String get ride_options_wait_time_action => 'Wait Time';

  @override
  String get ride_safety_title => 'Ride Safety';

  @override
  String get ride_safety_share_trip_information => 'Share Trip Information';

  @override
  String get ride_safety_sos => 'SOS';

  @override
  String get sos_title => 'Distress Signal';

  @override
  String get sos_body => 'Distress signals are for emergencies and contacting authorities, such as the police or law enforcement. Please use the distress signal in the event that you experience an emergency and require immediate assistance.';

  @override
  String get sos_sent_alert => 'SOS is sent';

  @override
  String get sos_ok_action => 'It\'s an emergency';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'I am on my way to $destination from $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' My driver\'s name is $firstName $lastName, and their mobile number is +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' The trip started on $startTime, and I expect the trip to take approximately $duration minutes.';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'Espero que el viaje dure aproximadamente $duration minutos una vez que esté en el auto del conductor.';
  }

  @override
  String get announcements_empty_state_title => '¡Sin anuncios aún!';

  @override
  String get announcements_empty_state_body => 'Te notificaremos cuando haya nuevos anuncios.';

  @override
  String get action_set_location => 'Establecer ubicación';

  @override
  String get trip_history_empty_state_title => '¡Sin registros!';

  @override
  String get location_not_found_alert_dialog_title => 'Ubicación';

  @override
  String get location_not_found_alert_dialog_body => 'No pudimos obtener su ubicación actual utilizando el GPS de su dispositivo. Verifique el permiso de ubicación de la aplicación en la configuración del dispositivo. Alternativamente, puede usar el campo de búsqueda anterior para seleccionar su punto de recogida.';

  @override
  String get gift_card_title => 'Ingrese el código de regalo';

  @override
  String get gift_card_body => 'Ingrese el código de su tarjeta de regalo';

  @override
  String get gift_card_text_placeholder => 'Ingresar código de tarjeta de regalo';

  @override
  String get action_apply => 'Aplicar';

  @override
  String get order_status_should_be_arrived => '¡En camino!';

  @override
  String order_status_arriving_in(Object minutes) {
    return 'Llegará en $minutes minutos';
  }

  @override
  String get message_title_warning => 'Advertencia';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'La cancelación del servicio después de que el conductor haya aceptado el viaje está sujeta a una penalización por cancelación de $fee. ¿Lo confirmas?';
  }

  @override
  String get confirm => 'Confirmar';

  @override
  String get add_credit_select_payment_method => 'Seleccionar método de pago:';

  @override
  String get add_credit_custom_credit_placeholder => 'Agregar crédito personalizado';

  @override
  String get add_credit_custom_credit_text_placeholder => 'Personalizado';

  @override
  String get invoice_item_tip => 'Propina';

  @override
  String get invoice_item_wallet => 'Billetera';

  @override
  String get invoice_item_total => 'Total';

  @override
  String get add_credit_dialog_title => 'Agregar crédito';

  @override
  String get add_credit_choose_amount => 'Seleccionar monto';

  @override
  String get action_ride_preferences => 'Preferencias de viaje';

  @override
  String get ride_preferences_title => 'Preferencias de viaje';

  @override
  String get action_confirm_and_continue => 'Confirmar y continuar';

  @override
  String get action_see_reserved_rides => 'Ver viajes reservados';

  @override
  String get ride_reserved_dialog_title => 'Tu viaje está reservado.';

  @override
  String get ride_reserved_dialog_body => 'Puedes ver los viajes reservados en el menú para ver la información de reserva de este viaje.';

  @override
  String get alert_coupon_unavailable => 'Cupón no disponible';

  @override
  String minutes_format(Object minutes) {
    return '$minutes minutos';
  }

  @override
  String get action_back => 'Atrás';

  @override
  String wallet_card_title(Object appName) {
    return 'Billetera $appName';
  }

  @override
  String get action_redeem_gift_card => 'Canjear Tarjeta de Regalo';

  @override
  String get order_status_canceled => 'Cancelado';

  @override
  String get action_skip_for_now => 'Saltar por ahora';

  @override
  String get onboarding_select_language_title => 'Selecciona el idioma';

  @override
  String onboarding_first_page_title(Object appName) {
    return '¡Bienvenido a $appName!';
  }

  @override
  String get onboarding_first_page_body => 'Servicio de taxi diseñado para tu comodidad \n Viaja con tus conductores favoritos y elige tus preferencias de viaje';

  @override
  String get onboarding_second_page_title => '¡Obtén recompensas!';

  @override
  String get onboarding_second_page_body => 'Obtén bonificaciones extra por referir amigos, completar viajes y mucho más...';

  @override
  String get onboarding_sign_in_title => 'Iniciar sesión';

  @override
  String get onboarding_sign_in_body => 'A solo unos segundos de iniciar sesión y comenzar un viaje cómodo';

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
