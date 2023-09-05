import 'messages.dart';

/// The translations for German (`de`).
class SDe extends S {
  SDe([String locale = 'de']) : super(locale);

  @override
  String get loading => 'Wird geladen';

  @override
  String get wallet_empty_state_message => 'Keine Historie aufgezeichnet.';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'Bestellgebühr';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'Abheben';

  @override
  String get enum_rider_transaction_deduct_correction => 'Korrektur';

  @override
  String get enum_unknown => 'Unbekannt';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'In-App-Zahlung';

  @override
  String get enum_rider_transaction_recharge_gift => 'Geschenk';

  @override
  String get enum_rider_transaction_recharge_correction => 'Korrektur';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'Banküberweisung';

  @override
  String get top_up_sheet_pay_button => 'Zahlen';

  @override
  String get service_selection_book_now => 'buchen Sie jetzt';

  @override
  String get action_cancel => 'Absagen';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Alle Rechte vorbehalten.';
  }

  @override
  String get menu_about => 'Um';

  @override
  String get menu_login => 'Anmeldung';

  @override
  String get menu_profile => 'Profil';

  @override
  String get menu_wallet => 'Geldbörse';

  @override
  String get menu_trip_history => 'Reiseverlauf';

  @override
  String get menu_announcements => 'Ankündigungen';

  @override
  String get menu_saved_locations => 'Gespeicherte Orte';

  @override
  String get action_save => 'Speichern';

  @override
  String get create_address_name_empty_error => 'Bitte Ortsnamen eingeben';

  @override
  String get create_address_title_textfield_hint => 'Titel';

  @override
  String get action_delete => 'Löschen';

  @override
  String get trip_history_empty_state_message => 'Es wurde keine frühere Bestellung aufgezeichnet.';

  @override
  String get profile_firstname => 'Vorname';

  @override
  String get profile_lastname => 'Nachname';

  @override
  String get profile_email => 'Email';

  @override
  String get profile_gender => 'Geschlecht';

  @override
  String get enum_gender_male => 'Männlich';

  @override
  String get enum_gender_female => 'Weiblich';

  @override
  String get login_cell_number_textfield_hint => 'Telefonnummer';

  @override
  String get login_cell_number_empty_error => 'Bitte geben Sie die Telefonnummer im richtigen Format ein';

  @override
  String get action_next => 'Nächste';

  @override
  String get verify_phone_code_empty_message => 'Der Bestätigungscode wurde nicht eingegeben.';

  @override
  String get wallet_activities_heading => 'Aktivität';

  @override
  String get menu_logout => 'Ausloggen';

  @override
  String get enum_gender_unknown => 'Unbekannt';

  @override
  String get enum_address_type_home => 'Heim';

  @override
  String get enum_address_type_work => 'Arbeit';

  @override
  String get enum_address_type_partner => 'Partner';

  @override
  String get enum_address_type_other => 'Sonstiges';

  @override
  String get message_notification_permission_denined_message => 'Die Benachrichtigungsberechtigung wurde zuvor verweigert. Um Benachrichtigungen über neue Bestellungen zu erhalten, können Sie die Berechtigung in den App-Einstellungen aktivieren.';

  @override
  String get message_notification_permission_title => 'Benachrichtigungsberechtigung';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_website => 'Webseite';

  @override
  String get action_confirm_and_reserve_ride => 'Fahrt bestätigen & reservieren';

  @override
  String get title_reserve_ride => 'Fahrt reservieren';

  @override
  String get error_region_unsupported => 'Region wird nicht unterstützt.';

  @override
  String get action_confirm => 'Bestätigen';

  @override
  String get title_wait_time => 'Wartezeit';

  @override
  String get notice_tip_title => 'Möchten Sie einen Tipp hinzufügen?';

  @override
  String get notice_tip_description => 'Das Hinzufügen von Trinkgeld ist optional. Sie können einen beliebigen Betrag als Trinkgeld für den Fahrer hinzufügen.';

  @override
  String get action_pay_for_ride => 'Fahrt bezahlen';

  @override
  String get action_confirm_and_pay => 'Bestätigen und bezahlen';

  @override
  String get action_add_photo => 'Foto hinzufügen';

  @override
  String get complaint_submit_success_message => 'Reklamation wird eingereicht. Bitte warten Sie auf eine Kontaktaufnahme von unserem Support-Mitarbeiter zu Ihrer Anfrage.';

  @override
  String get error_field_cant_be_empty => 'Kann nicht leer sein';

  @override
  String get issue_description_placeholder => 'Beschreiben Sie Ihr Problem ...';

  @override
  String get issue_subject_placeholder => 'Thema';

  @override
  String get issue_submit_description => 'Sie können jedes Problem melden, das Sie mit Ihrer Fahrt hatten. Wir helfen Ihnen bei dem Problem innerhalb eines Anrufs.';

  @override
  String get issue_submit_title => 'Ein Problem melden';

  @override
  String get issue_submit_button => 'Melde Probleme';

  @override
  String get trip_information_title => 'Reiseinformationen';

  @override
  String get payment_in_cash => 'Kasse';

  @override
  String get payment_method_title => 'Zahlungsmethode';

  @override
  String get button_ride_safety => 'Fahrsicherheit';

  @override
  String get status_title_driver_arrived => 'Treffen Sie den Fahrer am Abholpunkt';

  @override
  String get status_title_trip_started => 'Auf dem Weg zum Ziel';

  @override
  String get welcome_card_subtitle => 'Wo gehst du hin?';

  @override
  String get welcome_card_textbox_placeholder => 'Wo ist Ihr Ziel?';

  @override
  String welcome_card_greeting(Object firstName) {
    return 'Hallo $firstName!';
  }

  @override
  String get login_title => 'Einloggen';

  @override
  String get login_body => 'Zuerst müssen Sie sich anmelden, um Ihre Fahrt zu buchen. Ein Bestätigungscode wird an Ihre Telefonnummer gesendet.';

  @override
  String get terms_and_condition_text => 'Ich habe gelesen und stimme zu';

  @override
  String get terms_and_condition_button => 'Terms & amp; Bedingungen';

  @override
  String get login_verify_code_title => 'Code eingeben';

  @override
  String get login_verify_code_body => 'Der Code wurde an Ihre Telefonnummer gesendet';

  @override
  String get action_continue => 'Fortsetzen';

  @override
  String get current_location => 'Aktueller Standort';

  @override
  String get your_destination => 'Dein Ziel';

  @override
  String get add_stop => 'Stopp hinzufügen';

  @override
  String get action_choose_on_map => 'auf Karte auswählen';

  @override
  String get message_title_location => 'Ort';

  @override
  String get message_body_location => 'Wir konnten Ihren aktuellen Standort nicht vom GPS Ihres Geräts abrufen. Bitte verwenden Sie das Suchfeld, um Ihren Abholort auszuwählen.';

  @override
  String get menu_reserved_rides => 'Reservierte Fahrten';

  @override
  String get reservation_empty_state_title => 'Keine Reservierungen!';

  @override
  String get reservation_empty_state_body => 'Sie können Ihre zukünftigen Buchungen sehen, sobald Sie sie auf dem Hauptbildschirm vorgenommen haben.';

  @override
  String get action_cancel_ride => 'Fahrt abbrechen';

  @override
  String get enum_address_type_gym => 'Fitnessstudio';

  @override
  String get enum_address_type_parent_house => 'Elternhaus';

  @override
  String get enum_address_type_cafe => 'Cafe';

  @override
  String get enum_address_type_park => 'Park';

  @override
  String get action_add_favorite_location => 'Lieblingsort hinzufügen';

  @override
  String get favorite_locations_list_title => 'Lieblingsorte';

  @override
  String get favorite_locations_list_body => 'Sie können Ihre Lieblingsorte für einen einfacheren Zugriff speichern';

  @override
  String get favorite_location_details_title => 'Nennen Sie Ihren Lieblingsort';

  @override
  String get textbox_error_select_type_address => 'Bitte wählen Sie die Adressart aus';

  @override
  String get placeholder_type => 'Typ';

  @override
  String get action_delete_account => 'Konto löschen';

  @override
  String get message_delete_account_title => 'Kontolöschung';

  @override
  String get message_delete_account_body => 'Möchten Sie Ihr Konto wirklich löschen? Sie können sich innerhalb von 30 Tagen erneut anmelden, um das Konto wiederherzustellen. Nach diesem Zeitraum werden Ihre Daten vollständig entfernt, einschließlich aller Ihrer verbleibenden Credits.';

  @override
  String get action_edit => 'Bearbeiten';

  @override
  String get action_confirm_location => 'Standort bestätigen';

  @override
  String get action_coupon_code => 'Gutscheincode';

  @override
  String get enter_coupon_dialog_title => 'Gutscheincode';

  @override
  String get enter_coupon_dialog_body => 'Geben Sie Ihren Gutscheincode ein, der auf den Preis angewendet werden soll';

  @override
  String get enter_coupon_placeholder => 'Gutschein-Code eingeben';

  @override
  String get looking_dialog_title => 'Fahrt angefordert';

  @override
  String get looking_dialog_body => 'Wir suchen den nächstgelegenen Fahrer für Sie.';

  @override
  String get action_cancel_request => 'Anfrage abbrechen';

  @override
  String get rate_ride_title => 'Wie war deine Fahrt?';

  @override
  String get rate_ride_body => 'Helfen Sie uns, Ihr Erlebnis zu verbessern, indem Sie Ihren Fahrer bewerten';

  @override
  String get rate_ride_good_points => 'Schöne Punkte';

  @override
  String get rate_ride_negative_points => 'Negative Punkte';

  @override
  String get rate_ride_comment_title => 'Einen Kommentar hinzufügen';

  @override
  String get rate_ride_comment_placeholder => 'schreibe deinen kommentar...';

  @override
  String get action_send_feedback => 'Feedback abschicken';

  @override
  String get action_ride_options => 'Fahroptionen';

  @override
  String get ride_options_title => 'Fahroptionen';

  @override
  String get ride_options_wait_time_action => 'Wartezeit';

  @override
  String get ride_safety_title => 'Fahrsicherheit';

  @override
  String get ride_safety_share_trip_information => 'Teilen Sie Reiseinformationen';

  @override
  String get ride_safety_sos => 'SOS';

  @override
  String get sos_title => 'Notsignal';

  @override
  String get sos_body => 'Notsignale sind für Notfälle gedacht und es kann in Ihrem Namen ein Anruf bei Behörden wie der Polizei erfolgen. Bitte verwenden Sie diese Funktion nur in Notfällen, in denen Sie in Gefahr sein könnten.';

  @override
  String get sos_sent_alert => 'SOS wird gesendet';

  @override
  String get sos_ok_action => 'Es ist ein Notfall';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Ich bin auf dem Weg von $destination nach $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Mein Fahrername ist $firstName $lastName und seine Handynummer ist +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Die Fahrt hat um $startTime begonnen und ich rechne damit, dass die Fahrt etwa $duration Minuten dauern wird';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Ich schätze, die Fahrt selbst dauert ungefähr $duration Minuten, sobald ich in das Auto des Fahrers steige.';
  }

  @override
  String get announcements_empty_state_title => 'Noch keine Ankündigungen!';

  @override
  String get announcements_empty_state_body => 'Wir werden Sie benachrichtigen, wenn neue Ankündigungen kommen.';

  @override
  String get action_set_location => 'Ort festlegen';

  @override
  String get trip_history_empty_state_title => 'Keine Aufzeichnungen!';

  @override
  String get location_not_found_alert_dialog_title => 'Ort';

  @override
  String get location_not_found_alert_dialog_body => 'Wir konnten Ihren aktuellen Standort nicht mit dem GPS Ihres Geräts abrufen. Bitte überprüfen Sie die Standortberechtigung für die App in den Geräteeinstellungen. Alternativ können Sie das Suchfeld oben verwenden, um Ihren Abholpunkt auszuwählen.';

  @override
  String get gift_card_title => 'Geben Sie den Geschenkcode ein';

  @override
  String get gift_card_body => 'Geben Sie Ihren Geschenkkartencode ein';

  @override
  String get gift_card_text_placeholder => 'Geschenkkartencode eingeben';

  @override
  String get action_apply => 'Sich bewerben';

  @override
  String get order_status_should_be_arrived => 'sollte ankommen';

  @override
  String order_status_arriving_in(Object minutes) {
    return 'Ankunft in $minutes';
  }

  @override
  String get message_title_warning => 'Warnung';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'Bei einer Stornierung des Dienstes, nachdem der Fahrer die Fahrt angenommen hat, wird eine Stornogebühr von $fee erhoben. Bestätigen Sie?';
  }

  @override
  String get confirm => 'Bestätigen';

  @override
  String get add_credit_select_payment_method => 'Wählen Sie die Zahlungsmethode:';

  @override
  String get add_credit_custom_credit_placeholder => 'Benutzerdefinierten Kredit hinzufügen';

  @override
  String get add_credit_custom_credit_text_placeholder => 'Brauch';

  @override
  String get invoice_item_tip => 'Tipp';

  @override
  String get invoice_item_wallet => 'Geldbörse';

  @override
  String get invoice_item_total => 'Gesamt';

  @override
  String get add_credit_dialog_title => 'Guthaben hinzufügen';

  @override
  String get add_credit_choose_amount => 'Betrag wählen';

  @override
  String get action_ride_preferences => 'Fahrpräferenzen';

  @override
  String get ride_preferences_title => 'Fahrpräferenzen';

  @override
  String get action_confirm_and_continue => 'Bestätigung & weiter';

  @override
  String get action_see_reserved_rides => 'Siehe reservierte Fahrten';

  @override
  String get ride_reserved_dialog_title => 'Ihre Fahrt ist reserviert.';

  @override
  String get ride_reserved_dialog_body => 'Sie können reservierte Fahrten im Menü einsehen, um Reservierungsinformationen zu dieser Fahrt anzuzeigen.';

  @override
  String get alert_coupon_unavailable => 'Gutschein ist nicht verfügbar';

  @override
  String minutes_format(Object minutes) {
    return '$minutes Minuten';
  }

  @override
  String get action_back => 'Der Rücken';

  @override
  String wallet_card_title(Object appName) {
    return '$appName Geldbörse';
  }

  @override
  String get action_redeem_gift_card => 'Geschenkkarte einlösen';

  @override
  String get order_status_canceled => 'Abgesagt';

  @override
  String get action_skip_for_now => 'Für jetzt überspringen';

  @override
  String get onboarding_select_language_title => 'Sprache auswählen';

  @override
  String onboarding_first_page_title(Object appName) {
    return 'Willkommen bei $appName!';
  }

  @override
  String get onboarding_first_page_body => 'Taxiservice für Ihren Komfort\n Machen Sie Fahrten mit Ihren Lieblingsfahrern und wählen Sie Ihre Fahrpräferenzen';

  @override
  String get onboarding_second_page_title => 'Lassen Sie sich belohnen!';

  @override
  String get onboarding_second_page_body => 'Holen Sie sich zusätzliche Boni für die Empfehlung eines Freundes, das Abschließen von Reisen und vieles mehr ...';

  @override
  String get onboarding_sign_in_title => 'Einloggen';

  @override
  String get onboarding_sign_in_body => 'Wenige Sekunden von der Anmeldung und dem Start einer komfortablen Fahrt entfernt';

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
