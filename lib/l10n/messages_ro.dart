import 'messages.dart';

/// The translations for Romanian Moldavian Moldovan (`ro`).
class SRo extends S {
  SRo([String locale = 'ro']) : super(locale);

  @override
  String get loading => 'Se încarcă';

  @override
  String get wallet_empty_state_message => 'Nicio înregistrare în istoric.';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'Taxă de comandă';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'Retragere';

  @override
  String get enum_rider_transaction_deduct_correction => 'Corecție';

  @override
  String get enum_unknown => 'Necunoscut';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'Plată în aplicație';

  @override
  String get enum_rider_transaction_recharge_gift => 'Cadou';

  @override
  String get enum_rider_transaction_recharge_correction => 'Corecție';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'Transfer bancar';

  @override
  String get top_up_sheet_pay_button => 'Plată';

  @override
  String get service_selection_book_now => 'Rezervă acum';

  @override
  String get action_cancel => 'Anulează';

  @override
  String copyright_notice(Object company) {
    return 'Drepturi de autor © $company, Toate drepturile rezervate.';
  }

  @override
  String get menu_about => 'Despre';

  @override
  String get menu_login => 'Conectare';

  @override
  String get menu_profile => 'Profil';

  @override
  String get menu_wallet => 'Portofel';

  @override
  String get menu_trip_history => 'Istoric călătorii';

  @override
  String get menu_announcements => 'Anunțuri';

  @override
  String get menu_saved_locations => 'Locații salvate';

  @override
  String get action_save => 'Salvează';

  @override
  String get create_address_name_empty_error => 'Introduceți numele locației';

  @override
  String get create_address_title_textfield_hint => 'Titlu';

  @override
  String get action_delete => 'Șterge';

  @override
  String get trip_history_empty_state_message => 'Nicio comandă anterioară înregistrată.';

  @override
  String get profile_firstname => 'Prenume';

  @override
  String get profile_lastname => 'Nume';

  @override
  String get profile_email => 'E-mail';

  @override
  String get profile_gender => 'Gen';

  @override
  String get enum_gender_male => 'Masculin';

  @override
  String get enum_gender_female => 'Feminin';

  @override
  String get login_cell_number_textfield_hint => 'Număr de telefon';

  @override
  String get login_cell_number_empty_error => 'Introduceți numărul de telefon în format corect';

  @override
  String get action_next => 'Următorul';

  @override
  String get verify_phone_code_empty_message => 'Codul de verificare nu este introdus.';

  @override
  String get wallet_activities_heading => 'Activitate';

  @override
  String get menu_logout => 'Deconectare';

  @override
  String get enum_gender_unknown => 'Necunoscut';

  @override
  String get enum_address_type_home => 'Acasă';

  @override
  String get enum_address_type_work => 'Muncă';

  @override
  String get enum_address_type_partner => 'Partener';

  @override
  String get enum_address_type_other => 'Altul';

  @override
  String get message_notification_permission_denined_message => 'Permisiunea de notificare a fost refuzată anterior. Pentru a primi notificări pentru comenzile noi, puteți activa permisiunea din setările aplicației.';

  @override
  String get message_notification_permission_title => 'Permisiune notificare';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_website => 'Site web';

  @override
  String get action_confirm_and_reserve_ride => 'Confirmă și rezervă o cursă';

  @override
  String get title_reserve_ride => 'Rezervă o cursă';

  @override
  String get error_region_unsupported => 'Regiunea nu este suportată.';

  @override
  String get action_confirm => 'Confirmă';

  @override
  String get title_wait_time => 'Timp de așteptare';

  @override
  String get notice_tip_title => 'Doriți să adăugați o bacșiș?';

  @override
  String get notice_tip_description => 'Adăugarea bacșișului este opțională. Puteți adăuga orice sumă doriți ca bacșiș pentru șofer.';

  @override
  String get action_pay_for_ride => 'Plătiți călătoria';

  @override
  String get action_confirm_and_pay => 'Confirmați și plătiți';

  @override
  String get action_add_photo => 'Adăugați fotografie';

  @override
  String get complaint_submit_success_message => 'Plângerea a fost înregistrată. Vă rugăm să așteptați un contact din partea reprezentantului nostru de suport în legătură cu problema dvs.';

  @override
  String get error_field_cant_be_empty => 'Nu poate fi gol';

  @override
  String get issue_description_placeholder => 'Scrieți o descriere a problemei dvs...';

  @override
  String get issue_subject_placeholder => 'Subiect';

  @override
  String get issue_submit_description => 'Puteți raporta orice problemă pe care ați avut-o cu călătoria dvs. Vă vom ajuta cu problema într-un apel.';

  @override
  String get issue_submit_title => 'Raportați o problemă';

  @override
  String get issue_submit_button => 'Raportați problema';

  @override
  String get trip_information_title => 'Informații despre călătorie';

  @override
  String get payment_in_cash => 'Numerar';

  @override
  String get payment_method_title => 'Metodă de plată';

  @override
  String get button_ride_safety => 'Siguranța călătoriei';

  @override
  String get status_title_driver_arrived => 'Întâlniți șoferul la punctul de preluare';

  @override
  String get status_title_trip_started => 'Plecare spre destinație';

  @override
  String get welcome_card_subtitle => 'Unde mergeți?';

  @override
  String get welcome_card_textbox_placeholder => 'Unde este destinația dvs.?';

  @override
  String welcome_card_greeting(Object firstName) {
    return 'Bună $firstName!';
  }

  @override
  String get login_title => 'Autentificare';

  @override
  String get login_body => 'Mai întâi, trebuie să vă autentificați pentru a rezerva călătoria. Un cod de verificare va fi trimis la numărul dvs. de telefon.';

  @override
  String get terms_and_condition_text => 'Am citit și sunt de acord cu ';

  @override
  String get terms_and_condition_button => 'Termenii și condițiile';

  @override
  String get login_verify_code_title => 'Introduceți codul';

  @override
  String get login_verify_code_body => 'Codul a fost trimis la numărul dvs. de telefon';

  @override
  String get action_continue => 'Continuați';

  @override
  String get current_location => 'Locația actuală';

  @override
  String get your_destination => 'Destinația dvs.';

  @override
  String get add_stop => 'Adăugați oprire';

  @override
  String get action_choose_on_map => 'alegeți de pe hartă';

  @override
  String get message_title_location => 'Locație';

  @override
  String get message_body_location => 'Nu am putut obține locația dvs. curentă de la GPS-ul dispozitivului. Utilizați câmpul de căutare pentru a selecta locația de preluare.';

  @override
  String get menu_reserved_rides => 'Călătorii rezervate';

  @override
  String get reservation_empty_state_title => 'Nicio rezervare!';

  @override
  String get reservation_empty_state_body => 'Vei putea vedea rezervările viitoare după ce le vei face pe ecranul principal.';

  @override
  String get action_cancel_ride => 'Anulează călătoria';

  @override
  String get enum_address_type_gym => 'Sală de sport';

  @override
  String get enum_address_type_parent_house => 'Casa părinților';

  @override
  String get enum_address_type_cafe => 'Cafenea';

  @override
  String get enum_address_type_park => 'Parc';

  @override
  String get action_add_favorite_location => 'Adaugă locație favorită';

  @override
  String get favorite_locations_list_title => 'Locații favorite';

  @override
  String get favorite_locations_list_body => 'Puteți salva locațiile dvs. favorite pentru un acces mai ușor';

  @override
  String get favorite_location_details_title => 'Denumiți locația favorită';

  @override
  String get textbox_error_select_type_address => 'Selectați tipul de adresă';

  @override
  String get placeholder_type => 'Tip';

  @override
  String get action_delete_account => 'Ștergeți contul';

  @override
  String get message_delete_account_title => 'Ștergere cont';

  @override
  String get message_delete_account_body => 'Sunteți sigur că doriți să ștergeți contul dvs.? Vă puteți conecta din nou în decurs de 30 de zile pentru a restaura contul. După această perioadă, datele dvs. vor fi complet eliminate, inclusiv toate creditele rămase.';

  @override
  String get action_edit => 'Editați';

  @override
  String get action_confirm_location => 'Confirmați locația';

  @override
  String get action_coupon_code => 'Cod cupon';

  @override
  String get enter_coupon_dialog_title => 'Cod cupon';

  @override
  String get enter_coupon_dialog_body => 'Introduceți codul dvs. de cupon pentru a fi aplicat la preț';

  @override
  String get enter_coupon_placeholder => 'Introduceți codul cuponului';

  @override
  String get looking_dialog_title => 'Solicitarea călătoriei';

  @override
  String get looking_dialog_body => 'Căutăm cel mai apropiat șofer pentru dvs.';

  @override
  String get action_cancel_request => 'Anulați solicitarea';

  @override
  String get rate_ride_title => 'Cum a fost călătoria dvs.?';

  @override
  String get rate_ride_body => 'Ajutați-ne să îmbunătățim experiența dvs. prin evaluarea șoferului dvs.';

  @override
  String get rate_ride_good_points => 'Puncte pozitive';

  @override
  String get rate_ride_negative_points => 'Puncte negative';

  @override
  String get rate_ride_comment_title => 'Adăugați un comentariu';

  @override
  String get rate_ride_comment_placeholder => 'scrieți-vă comentariul...';

  @override
  String get action_send_feedback => 'Trimiteți feedback';

  @override
  String get action_ride_options => 'Opțiuni de călătorie';

  @override
  String get ride_options_title => 'Opțiuni de călătorie';

  @override
  String get ride_options_wait_time_action => 'Timp de așteptare';

  @override
  String get ride_safety_title => 'Siguranța călătoriei';

  @override
  String get ride_safety_share_trip_information => 'Partajarea informațiilor călătoriei';

  @override
  String get ride_safety_sos => 'SOS';

  @override
  String get sos_title => 'Semnal de detresă';

  @override
  String get sos_body => 'Semnalele de detresă sunt pentru situații de urgență și contactarea autorităților, cum ar fi poliția sau forțele de ordine. Vă rugăm să utilizați semnalul de detresă în cazul în care întâmpinați o situație de urgență și aveți nevoie de asistență imediată.';

  @override
  String get sos_sent_alert => 'SOS trimis';

  @override
  String get sos_ok_action => 'Este o situație de urgență';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Sunt în drum spre $destination din $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Numele șoferului meu este $firstName $lastName, numărul de telefon mobil este +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Călătoria a început la $startTime și mă aștept să dureze aproximativ $duration minute';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'Mă aștept ca călătoria să dureze aproximativ $duration minute odată ce mă urc în mașina șoferului.';
  }

  @override
  String get announcements_empty_state_title => 'Nicio notificare încă!';

  @override
  String get announcements_empty_state_body => 'Te vom notifica când apar noi anunțuri.';

  @override
  String get action_set_location => 'Setează Locația';

  @override
  String get trip_history_empty_state_title => 'Nicio înregistrare!';

  @override
  String get location_not_found_alert_dialog_title => 'Locație';

  @override
  String get location_not_found_alert_dialog_body => 'Nu am putut obține locația curentă a dispozitivului tău folosind GPS-ul. Verifică permisiunile de localizare pentru aplicație în setările dispozitivului. În mod alternativ, poți utiliza câmpul de căutare de mai sus pentru a selecta punctul de preluare.';

  @override
  String get gift_card_title => 'Introdu Codul Cadou';

  @override
  String get gift_card_body => 'Introdu codul tău cadou';

  @override
  String get gift_card_text_placeholder => 'Introdu codul cadou';

  @override
  String get action_apply => 'Aplică';

  @override
  String get order_status_should_be_arrived => 'În drum spre tine!';

  @override
  String order_status_arriving_in(Object minutes) {
    return 'Sosire în $minutes minute';
  }

  @override
  String get message_title_warning => 'Atenție';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'Anularea serviciului după ce șoferul a acceptat călătoria implică o penalizare de anulare în valoare de $fee. Confirmați?';
  }

  @override
  String get confirm => 'Confirmă';

  @override
  String get add_credit_select_payment_method => 'Selectează Metoda de Plată:';

  @override
  String get add_credit_custom_credit_placeholder => 'Adaugă Credit Personalizat';

  @override
  String get add_credit_custom_credit_text_placeholder => 'Personalizat';

  @override
  String get invoice_item_tip => 'Sfat';

  @override
  String get invoice_item_wallet => 'Portofel';

  @override
  String get invoice_item_total => 'Total';

  @override
  String get add_credit_dialog_title => 'Adaugă Credit';

  @override
  String get add_credit_choose_amount => 'Alege suma';

  @override
  String get action_ride_preferences => 'Preferințe de Călătorie';

  @override
  String get ride_preferences_title => 'Preferințe de Călătorie';

  @override
  String get action_confirm_and_continue => 'Confirmă și Continuă';

  @override
  String get action_see_reserved_rides => 'Vezi Călătorii Rezervate';

  @override
  String get ride_reserved_dialog_title => 'Călătoria ta este rezervată.';

  @override
  String get ride_reserved_dialog_body => 'Poți verifica călătoriile rezervate în meniu pentru a vedea informații despre această călătorie.';

  @override
  String get alert_coupon_unavailable => 'Cuponul nu este disponibil';

  @override
  String minutes_format(Object minutes) {
    return '$minutes minute';
  }

  @override
  String get action_back => 'Înapoi';

  @override
  String wallet_card_title(Object appName) {
    return '$appName Portofel';
  }

  @override
  String get action_redeem_gift_card => 'Răscumpără Card Cadou';

  @override
  String get order_status_canceled => 'Anulată';

  @override
  String get action_skip_for_now => 'Omitere pentru acum';

  @override
  String get onboarding_select_language_title => 'Selectează Limba';

  @override
  String onboarding_first_page_title(Object appName) {
    return 'Bine ai venit la $appName!';
  }

  @override
  String get onboarding_first_page_body => 'Serviciul de taxi conceput pentru confortul tău \n Ai călătorii cu șoferii preferați și alege preferințele de călătorie';

  @override
  String get onboarding_second_page_title => 'Fii recompensat!';

  @override
  String get onboarding_second_page_body => 'primești bonusuri suplimentare pentru recomandarea unui prieten, finalizarea călătoriilor și multe altele...';

  @override
  String get onboarding_sign_in_title => 'Conectează-te';

  @override
  String get onboarding_sign_in_body => 'Ești la doar câțiva pași distanță de a te conecta și a începe o călătorie confortabilă';

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
