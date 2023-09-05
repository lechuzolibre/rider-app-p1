import 'messages.dart';

/// The translations for French (`fr`).
class SFr extends S {
  SFr([String locale = 'fr']) : super(locale);

  @override
  String get loading => 'Chargement';

  @override
  String get wallet_empty_state_message => 'Aucun historique enregistré.';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'Frais de commande';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'Se désister';

  @override
  String get enum_rider_transaction_deduct_correction => 'Correction';

  @override
  String get enum_unknown => 'Inconnu';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'Paiement intégré à l\'application';

  @override
  String get enum_rider_transaction_recharge_gift => 'Cadeau';

  @override
  String get enum_rider_transaction_recharge_correction => 'Correction';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'Virement';

  @override
  String get top_up_sheet_pay_button => 'Payer';

  @override
  String get service_selection_book_now => 'Reserve maintenant';

  @override
  String get action_cancel => 'Annuler';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Tous droits réservés.';
  }

  @override
  String get menu_about => 'À propos de';

  @override
  String get menu_login => 'Connexion';

  @override
  String get menu_profile => 'Profil';

  @override
  String get menu_wallet => 'Porte monnaie';

  @override
  String get menu_trip_history => 'Historique des trajets';

  @override
  String get menu_announcements => 'Annonces';

  @override
  String get menu_saved_locations => 'Emplacements enregistrés';

  @override
  String get action_save => 'sauvegarder';

  @override
  String get create_address_name_empty_error => 'Veuillez saisir le nom du lieu';

  @override
  String get create_address_title_textfield_hint => 'Titre';

  @override
  String get action_delete => 'Effacer';

  @override
  String get trip_history_empty_state_message => 'Aucune commande passée n\'a été enregistrée.';

  @override
  String get profile_firstname => 'Prénom';

  @override
  String get profile_lastname => 'Nom de famille';

  @override
  String get profile_email => 'E-mail';

  @override
  String get profile_gender => 'Le genre';

  @override
  String get enum_gender_male => 'Homme';

  @override
  String get enum_gender_female => 'Femelle';

  @override
  String get login_cell_number_textfield_hint => 'Numéro de téléphone';

  @override
  String get login_cell_number_empty_error => 'Veuillez saisir le numéro de téléphone au format correct';

  @override
  String get action_next => 'Prochain';

  @override
  String get verify_phone_code_empty_message => 'Le code de vérification n\'est pas entré.';

  @override
  String get wallet_activities_heading => 'Activité';

  @override
  String get menu_logout => 'Se déconnecter';

  @override
  String get enum_gender_unknown => 'Inconnue';

  @override
  String get enum_address_type_home => 'Maison';

  @override
  String get enum_address_type_work => 'Travailler';

  @override
  String get enum_address_type_partner => 'Partenaire';

  @override
  String get enum_address_type_other => 'Autre';

  @override
  String get message_notification_permission_denined_message => 'L\'autorisation de notification a été refusée précédemment. Afin d\'obtenir les notifications de nouvelle commande, vous pouvez activer l\'autorisation à partir des paramètres de l\'application.';

  @override
  String get message_notification_permission_title => 'Autorisation de notification';

  @override
  String get action_ok => 'D\'ACCORD';

  @override
  String get menu_website => 'Site Internet';

  @override
  String get action_confirm_and_reserve_ride => 'Confirmer et réserver le trajet';

  @override
  String get title_reserve_ride => 'Réserver un tour';

  @override
  String get error_region_unsupported => 'La région n\'est pas prise en charge.';

  @override
  String get action_confirm => 'Confirmer';

  @override
  String get title_wait_time => 'Temps d\'attente';

  @override
  String get notice_tip_title => 'Souhaitez-vous ajouter un conseil ?';

  @override
  String get notice_tip_description => 'L\'ajout d\'un pourboire est facultatif. Vous pouvez ajouter le montant de votre choix comme pourboire au chauffeur.';

  @override
  String get action_pay_for_ride => 'Payer pour le trajet';

  @override
  String get action_confirm_and_pay => 'Confirmer et payer';

  @override
  String get action_add_photo => 'Ajouter une photo';

  @override
  String get complaint_submit_success_message => 'La plainte est déposée. Veuillez attendre un contact de notre représentant du support au sujet de votre demande.';

  @override
  String get error_field_cant_be_empty => 'Ne peux pas être vide';

  @override
  String get issue_description_placeholder => 'Rédigez une description de votre problème...';

  @override
  String get issue_subject_placeholder => 'Matière';

  @override
  String get issue_submit_description => 'Vous pouvez signaler tout problème rencontré avec votre trajet. Nous vous aiderons à résoudre le problème dans le cadre d\'un appel.';

  @override
  String get issue_submit_title => 'Signaler un problème';

  @override
  String get issue_submit_button => 'Signaler un problème';

  @override
  String get trip_information_title => 'Informations sur le voyage';

  @override
  String get payment_in_cash => 'En espèces';

  @override
  String get payment_method_title => 'Mode de paiement';

  @override
  String get button_ride_safety => 'Sécurité de conduite';

  @override
  String get status_title_driver_arrived => 'Rencontrer le chauffeur au point de ramassage';

  @override
  String get status_title_trip_started => 'En route vers la destination';

  @override
  String get welcome_card_subtitle => 'Où allez-vous?';

  @override
  String get welcome_card_textbox_placeholder => 'Où est votre destination?';

  @override
  String welcome_card_greeting(Object firstName) {
    return 'Bonjour $firstName!';
  }

  @override
  String get login_title => 'S\'identifier';

  @override
  String get login_body => 'Tout d\'abord, vous devez vous connecter pour réserver votre course. Un code de vérification sera envoyé à votre numéro de téléphone.';

  @override
  String get terms_and_condition_text => 'J\'ai lu et suis d\'accord avec';

  @override
  String get terms_and_condition_button => 'termes et conditions';

  @override
  String get login_verify_code_title => 'Entrez le code';

  @override
  String get login_verify_code_body => 'Le code a été envoyé à votre numéro de téléphone';

  @override
  String get action_continue => 'Continuer';

  @override
  String get current_location => 'Localisation actuelle';

  @override
  String get your_destination => 'Votre destination';

  @override
  String get add_stop => 'Ajouter un arrêt';

  @override
  String get action_choose_on_map => 'choisir sur la carte';

  @override
  String get message_title_location => 'Emplacement';

  @override
  String get message_body_location => 'Nous n\'avons pas pu obtenir votre position actuelle à partir du GPS de votre appareil. Veuillez utiliser le champ de recherche pour sélectionner votre lieu de ramassage.';

  @override
  String get menu_reserved_rides => 'Manèges réservés';

  @override
  String get reservation_empty_state_title => 'Pas de réservations!';

  @override
  String get reservation_empty_state_body => 'Vous pourrez voir vos futures réservations une fois que vous les aurez effectuées sur l\'écran principal.';

  @override
  String get action_cancel_ride => 'Annuler le trajet';

  @override
  String get enum_address_type_gym => 'Gym';

  @override
  String get enum_address_type_parent_house => 'La maison des parents';

  @override
  String get enum_address_type_cafe => 'Café';

  @override
  String get enum_address_type_park => 'Se garer';

  @override
  String get action_add_favorite_location => 'Ajouter un lieu favori';

  @override
  String get favorite_locations_list_title => 'Lieux favoris';

  @override
  String get favorite_locations_list_body => 'Vous pouvez enregistrer vos emplacements favoris pour un accès plus facile';

  @override
  String get favorite_location_details_title => 'Nommez votre lieu préféré';

  @override
  String get textbox_error_select_type_address => 'Veuillez sélectionner le type d\'adresse';

  @override
  String get placeholder_type => 'Taper';

  @override
  String get action_delete_account => 'Supprimer le compte';

  @override
  String get message_delete_account_title => 'Suppression de compte';

  @override
  String get message_delete_account_body => 'Êtes-vous sûr de vouloir supprimer votre compte ? Vous pouvez vous reconnecter dans les 30 jours pour restaurer le compte. Après cette période, vos données sont complètement supprimées, y compris tous vos crédits restants.';

  @override
  String get action_edit => 'Éditer';

  @override
  String get action_confirm_location => 'Confirmer l\'emplacement';

  @override
  String get action_coupon_code => 'Code promo';

  @override
  String get enter_coupon_dialog_title => 'Code promo';

  @override
  String get enter_coupon_dialog_body => 'Insérez votre code promo à appliquer au prix';

  @override
  String get enter_coupon_placeholder => 'Entrer le code de réduction';

  @override
  String get looking_dialog_title => 'Course demandée';

  @override
  String get looking_dialog_body => 'Nous recherchons pour vous le chauffeur le plus proche.';

  @override
  String get action_cancel_request => 'Demande d\'annulation';

  @override
  String get rate_ride_title => 'Comment s\'est passé votre trajet ?';

  @override
  String get rate_ride_body => 'Aidez-nous à améliorer votre expérience en évaluant votre chauffeur';

  @override
  String get rate_ride_good_points => 'Points sympas';

  @override
  String get rate_ride_negative_points => 'Points négatifs';

  @override
  String get rate_ride_comment_title => 'Ajouter un commentaire';

  @override
  String get rate_ride_comment_placeholder => 'écrivez votre commentaire...';

  @override
  String get action_send_feedback => 'Envoyer des commentaires';

  @override
  String get action_ride_options => 'Options de trajet';

  @override
  String get ride_options_title => 'Options de trajet';

  @override
  String get ride_options_wait_time_action => 'Temps d\'attente';

  @override
  String get ride_safety_title => 'Sécurité de conduite';

  @override
  String get ride_safety_share_trip_information => 'Partager des informations sur le voyage';

  @override
  String get ride_safety_sos => 'SOS';

  @override
  String get sos_title => 'Signal de détresse';

  @override
  String get sos_body => 'Les signaux de détresse sont destinés aux urgences et les appels aux autorités telles que la police peuvent être effectués en votre nom. Veuillez n\'utiliser cette fonction qu\'en cas d\'urgence où vous pourriez être en danger.';

  @override
  String get sos_sent_alert => 'SOS est envoyé';

  @override
  String get sos_ok_action => 'C\'est une urgence';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Je suis en route pour $destination depuis $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Mon nom de chauffeur est $firstName $lastName et son numéro de portable est +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Le trajet a commencé le $startTime et je m\'attends à ce qu\'il dure environ $duration minutes';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Je m\'attends à ce que le trajet lui-même prenne environ $duration minutes une fois que je monte dans la voiture du conducteur.';
  }

  @override
  String get announcements_empty_state_title => 'Pas encore d\'annonces !';

  @override
  String get announcements_empty_state_body => 'Nous vous informerons lorsque de nouvelles annonces arriveront.';

  @override
  String get action_set_location => 'Définir l\'emplacement';

  @override
  String get trip_history_empty_state_title => 'Pas d\'enregistrements!';

  @override
  String get location_not_found_alert_dialog_title => 'Emplacement';

  @override
  String get location_not_found_alert_dialog_body => 'Nous n\'avons pas pu obtenir votre position actuelle à l\'aide du GPS de votre appareil. Veuillez vérifier l\'autorisation de localisation de l\'appareil pour l\'application à partir des paramètres de l\'appareil. Vous pouvez également utiliser le champ de recherche ci-dessus pour sélectionner votre point de prise en charge.';

  @override
  String get gift_card_title => 'Entrez le code cadeau';

  @override
  String get gift_card_body => 'Saisissez le code de votre carte cadeau';

  @override
  String get gift_card_text_placeholder => 'Entrez le code de la carte-cadeau';

  @override
  String get action_apply => 'Appliquer';

  @override
  String get order_status_should_be_arrived => 'devrait être arrivé';

  @override
  String order_status_arriving_in(Object minutes) {
    return 'Arrivée dans $minutes';
  }

  @override
  String get message_title_warning => 'Avertissement';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'L\'annulation du service après que le conducteur a accepté le voyage est soumise à une pénalité d\'annulation de $fee. Vous confirmez ?';
  }

  @override
  String get confirm => 'Confirmer';

  @override
  String get add_credit_select_payment_method => 'Sélectionnez le mode de paiement:';

  @override
  String get add_credit_custom_credit_placeholder => 'Ajouter un crédit personnalisé';

  @override
  String get add_credit_custom_credit_text_placeholder => 'Personnalisé';

  @override
  String get invoice_item_tip => 'Pointe';

  @override
  String get invoice_item_wallet => 'Porte monnaie';

  @override
  String get invoice_item_total => 'Total';

  @override
  String get add_credit_dialog_title => 'Ajouter un crédit';

  @override
  String get add_credit_choose_amount => 'Choisissez le montant';

  @override
  String get action_ride_preferences => 'Préférences de conduite';

  @override
  String get ride_preferences_title => 'Préférences de conduite';

  @override
  String get action_confirm_and_continue => 'Confirmer et continuer';

  @override
  String get action_see_reserved_rides => 'Voir les trajets réservés';

  @override
  String get ride_reserved_dialog_title => 'Votre trajet est réservé.';

  @override
  String get ride_reserved_dialog_body => 'Vous pouvez consulter les trajets réservés dans le menu pour voir les informations de réservation de ce trajet.';

  @override
  String get alert_coupon_unavailable => 'Le coupon n\'est pas disponible';

  @override
  String minutes_format(Object minutes) {
    return '$minutes minutes';
  }

  @override
  String get action_back => 'Retour';

  @override
  String wallet_card_title(Object appName) {
    return 'Portefeuille $appName';
  }

  @override
  String get action_redeem_gift_card => 'Échanger une carte-cadeau';

  @override
  String get order_status_canceled => 'Annulé';

  @override
  String get action_skip_for_now => 'Ignorer pour l\'instant';

  @override
  String get onboarding_select_language_title => 'Choisir la langue';

  @override
  String onboarding_first_page_title(Object appName) {
    return 'Bienvenue sur $appName!';
  }

  @override
  String get onboarding_first_page_body => 'Service de taxi conçu pour votre confort\n faites des trajets avec vos chauffeurs préférés et choisissez vos préférences de trajet';

  @override
  String get onboarding_second_page_title => 'Soyez récompensé !';

  @override
  String get onboarding_second_page_body => 'obtenez des bonus supplémentaires pour avoir parrainé un ami, effectué des voyages et bien d\'autres...';

  @override
  String get onboarding_sign_in_title => 'S\'identifier';

  @override
  String get onboarding_sign_in_body => 'À quelques secondes de la connexion et du démarrage d\'un trajet confortable';

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
