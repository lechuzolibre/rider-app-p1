// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(fee) =>
      "L\'annulation du service après que le conducteur a accepté le voyage est soumise à une pénalité d\'annulation de ${fee}. Vous confirmez ?";

  static String m1(company) => "Copyright © ${company}, Tous droits réservés.";

  static String m2(distance) => "${distance} ft";

  static String m3(distance) => "${distance} km";

  static String m4(distance) => "${distance} m";

  static String m5(distance) => "${distance} mi";

  static String m6(minutes) => "${minutes} minutes";

  static String m7(seconds) => "Resend code in ${seconds} seconds";

  static String m8(appName) => "Bienvenue sur ${appName}!";

  static String m9(minutes) => "Arrivée dans ${minutes}";

  static String m10(duration) =>
      " Je m\'attends à ce que le trajet lui-même prenne environ ${duration} minutes une fois que je monte dans la voiture du conducteur.";

  static String m11(startTime, duration) =>
      " Le trajet a commencé le ${startTime} et je m\'attends à ce qu\'il dure environ ${duration} minutes";

  static String m12(firstName, lastName, mobileNumber) =>
      " Mon nom de chauffeur est ${firstName} ${lastName} et son numéro de portable est +${mobileNumber}.";

  static String m13(destination, pickup) =>
      "Je suis en route pour ${destination} depuis ${pickup}.";

  static String m14(appName) => "Portefeuille ${appName}";

  static String m15(firstName) => "Bonjour ${firstName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_favorite_location":
            MessageLookupByLibrary.simpleMessage("Ajouter un lieu favori"),
        "action_add_photo":
            MessageLookupByLibrary.simpleMessage("Ajouter une photo"),
        "action_apply": MessageLookupByLibrary.simpleMessage("Appliquer"),
        "action_back": MessageLookupByLibrary.simpleMessage("Retour"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "action_cancel_request":
            MessageLookupByLibrary.simpleMessage("Demande d\'annulation"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("Annuler le trajet"),
        "action_choose_on_map":
            MessageLookupByLibrary.simpleMessage("choisir sur la carte"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("Confirmer"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("Confirmer et continuer"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("Confirmer et payer"),
        "action_confirm_and_reserve_ride": MessageLookupByLibrary.simpleMessage(
            "Confirmer et réserver le trajet"),
        "action_confirm_location":
            MessageLookupByLibrary.simpleMessage("Confirmer l\'emplacement"),
        "action_continue": MessageLookupByLibrary.simpleMessage("Continuer"),
        "action_coupon_code":
            MessageLookupByLibrary.simpleMessage("Code promo"),
        "action_delete": MessageLookupByLibrary.simpleMessage("Effacer"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("Supprimer le compte"),
        "action_edit": MessageLookupByLibrary.simpleMessage("Éditer"),
        "action_next": MessageLookupByLibrary.simpleMessage("Prochain"),
        "action_ok": MessageLookupByLibrary.simpleMessage("D\'ACCORD"),
        "action_pay_for_ride":
            MessageLookupByLibrary.simpleMessage("Payer pour le trajet"),
        "action_redeem_gift_card":
            MessageLookupByLibrary.simpleMessage("Échanger une carte-cadeau"),
        "action_resend_code":
            MessageLookupByLibrary.simpleMessage("Resend Code"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("Options de trajet"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("Préférences de conduite"),
        "action_save": MessageLookupByLibrary.simpleMessage("sauvegarder"),
        "action_see_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Voir les trajets réservés"),
        "action_send_feedback":
            MessageLookupByLibrary.simpleMessage("Envoyer des commentaires"),
        "action_set_location":
            MessageLookupByLibrary.simpleMessage("Définir l\'emplacement"),
        "action_skip_for_now":
            MessageLookupByLibrary.simpleMessage("Ignorer pour l\'instant"),
        "add_credit_choose_amount":
            MessageLookupByLibrary.simpleMessage("Choisissez le montant"),
        "add_credit_custom_credit_placeholder":
            MessageLookupByLibrary.simpleMessage(
                "Ajouter un crédit personnalisé"),
        "add_credit_custom_credit_text_placeholder":
            MessageLookupByLibrary.simpleMessage("Personnalisé"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("Ajouter un crédit"),
        "add_credit_select_payment_method":
            MessageLookupByLibrary.simpleMessage(
                "Sélectionnez le mode de paiement:"),
        "add_stop": MessageLookupByLibrary.simpleMessage("Ajouter un arrêt"),
        "alert_coupon_unavailable": MessageLookupByLibrary.simpleMessage(
            "Le coupon n\'est pas disponible"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Nous vous informerons lorsque de nouvelles annonces arriveront."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Pas encore d\'annonces !"),
        "button_ride_safety":
            MessageLookupByLibrary.simpleMessage("Sécurité de conduite"),
        "cancelation_fee_confirmation_body": m0,
        "complaint_submit_error_message": MessageLookupByLibrary.simpleMessage(
            "The submission of your complaint was unsuccessful, likely due to connectivity issues. Please try again."),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "La plainte est déposée. Veuillez attendre un contact de notre représentant du support au sujet de votre demande."),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmer"),
        "copyright_notice": m1,
        "create_address_name_empty_error": MessageLookupByLibrary.simpleMessage(
            "Veuillez saisir le nom du lieu"),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Titre"),
        "current_location":
            MessageLookupByLibrary.simpleMessage("Localisation actuelle"),
        "distanceFeet": m2,
        "distanceKm": m3,
        "distanceMeters": m4,
        "distanceMiles": m5,
        "enter_coupon_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Insérez votre code promo à appliquer au prix"),
        "enter_coupon_dialog_title":
            MessageLookupByLibrary.simpleMessage("Code promo"),
        "enter_coupon_placeholder":
            MessageLookupByLibrary.simpleMessage("Entrer le code de réduction"),
        "enum_address_type_cafe": MessageLookupByLibrary.simpleMessage("Café"),
        "enum_address_type_gym": MessageLookupByLibrary.simpleMessage("Gym"),
        "enum_address_type_home":
            MessageLookupByLibrary.simpleMessage("Maison"),
        "enum_address_type_other":
            MessageLookupByLibrary.simpleMessage("Autre"),
        "enum_address_type_parent_house":
            MessageLookupByLibrary.simpleMessage("La maison des parents"),
        "enum_address_type_park":
            MessageLookupByLibrary.simpleMessage("Se garer"),
        "enum_address_type_partner":
            MessageLookupByLibrary.simpleMessage("Partenaire"),
        "enum_address_type_work":
            MessageLookupByLibrary.simpleMessage("Travailler"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("Femelle"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("Homme"),
        "enum_gender_unknown": MessageLookupByLibrary.simpleMessage("Inconnue"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("Correction"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("Frais de commande"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("Se désister"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Virement"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("Correction"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("Cadeau"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage(
                "Paiement intégré à l\'application"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Inconnu"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Ne peux pas être vide"),
        "error_region_unsupported": MessageLookupByLibrary.simpleMessage(
            "La région n\'est pas prise en charge."),
        "favorite_location_details_title":
            MessageLookupByLibrary.simpleMessage("Nommez votre lieu préféré"),
        "favorite_locations_list_body": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez enregistrer vos emplacements favoris pour un accès plus facile"),
        "favorite_locations_list_title":
            MessageLookupByLibrary.simpleMessage("Lieux favoris"),
        "gift_card_body": MessageLookupByLibrary.simpleMessage(
            "Saisissez le code de votre carte cadeau"),
        "gift_card_text_placeholder": MessageLookupByLibrary.simpleMessage(
            "Entrez le code de la carte-cadeau"),
        "gift_card_title":
            MessageLookupByLibrary.simpleMessage("Entrez le code cadeau"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("Pointe"),
        "invoice_item_total": MessageLookupByLibrary.simpleMessage("Total"),
        "invoice_item_wallet":
            MessageLookupByLibrary.simpleMessage("Porte monnaie"),
        "issue_description_placeholder": MessageLookupByLibrary.simpleMessage(
            "Rédigez une description de votre problème..."),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Matière"),
        "issue_submit_button":
            MessageLookupByLibrary.simpleMessage("Signaler un problème"),
        "issue_submit_description": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez signaler tout problème rencontré avec votre trajet. Nous vous aiderons à résoudre le problème dans le cadre d\'un appel."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Signaler un problème"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "loading": MessageLookupByLibrary.simpleMessage("Chargement"),
        "location_not_found_alert_dialog_body":
            MessageLookupByLibrary.simpleMessage(
                "Nous n\'avons pas pu obtenir votre position actuelle à l\'aide du GPS de votre appareil. Veuillez vérifier l\'autorisation de localisation de l\'appareil pour l\'application à partir des paramètres de l\'appareil. Vous pouvez également utiliser le champ de recherche ci-dessus pour sélectionner votre point de prise en charge."),
        "location_not_found_alert_dialog_title":
            MessageLookupByLibrary.simpleMessage("Emplacement"),
        "login_body": MessageLookupByLibrary.simpleMessage(
            "Tout d\'abord, vous devez vous connecter pour réserver votre course. Un code de vérification sera envoyé à votre numéro de téléphone."),
        "login_cell_number_empty_error": MessageLookupByLibrary.simpleMessage(
            "Veuillez saisir le numéro de téléphone au format correct"),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Numéro de téléphone"),
        "login_enter_phone_subtitle": MessageLookupByLibrary.simpleMessage(
            "To begin booking your ride, please sign in first. We will then send a code to your phone number."),
        "login_title": MessageLookupByLibrary.simpleMessage("S\'identifier"),
        "login_verify_code_body": MessageLookupByLibrary.simpleMessage(
            "Le code a été envoyé à votre numéro de téléphone"),
        "login_verify_code_title":
            MessageLookupByLibrary.simpleMessage("Entrez le code"),
        "looking_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Nous recherchons pour vous le chauffeur le plus proche."),
        "looking_dialog_title":
            MessageLookupByLibrary.simpleMessage("Course demandée"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("À propos de"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("Annonces"),
        "menu_login": MessageLookupByLibrary.simpleMessage("Connexion"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Se déconnecter"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Profil"),
        "menu_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Manèges réservés"),
        "menu_saved_locations":
            MessageLookupByLibrary.simpleMessage("Emplacements enregistrés"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("Historique des trajets"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Porte monnaie"),
        "menu_website": MessageLookupByLibrary.simpleMessage("Site Internet"),
        "message_body_location": MessageLookupByLibrary.simpleMessage(
            "Nous n\'avons pas pu obtenir votre position actuelle à partir du GPS de votre appareil. Veuillez utiliser le champ de recherche pour sélectionner votre lieu de ramassage."),
        "message_delete_account_body": MessageLookupByLibrary.simpleMessage(
            "Êtes-vous sûr de vouloir supprimer votre compte ? Vous pouvez vous reconnecter dans les 30 jours pour restaurer le compte. Après cette période, vos données sont complètement supprimées, y compris tous vos crédits restants."),
        "message_delete_account_title":
            MessageLookupByLibrary.simpleMessage("Suppression de compte"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "L\'autorisation de notification a été refusée précédemment. Afin d\'obtenir les notifications de nouvelle commande, vous pouvez activer l\'autorisation à partir des paramètres de l\'application."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage(
                "Autorisation de notification"),
        "message_title_location":
            MessageLookupByLibrary.simpleMessage("Emplacement"),
        "message_title_warning":
            MessageLookupByLibrary.simpleMessage("Avertissement"),
        "minutes_format": m6,
        "notice_resend_code_in_seconds": m7,
        "notice_tip_description": MessageLookupByLibrary.simpleMessage(
            "L\'ajout d\'un pourboire est facultatif. Vous pouvez ajouter le montant de votre choix comme pourboire au chauffeur."),
        "notice_tip_title": MessageLookupByLibrary.simpleMessage(
            "Souhaitez-vous ajouter un conseil ?"),
        "onboarding_first_page_body": MessageLookupByLibrary.simpleMessage(
            "Service de taxi conçu pour votre confort\n faites des trajets avec vos chauffeurs préférés et choisissez vos préférences de trajet"),
        "onboarding_first_page_title": m8,
        "onboarding_second_page_body": MessageLookupByLibrary.simpleMessage(
            "obtenez des bonus supplémentaires pour avoir parrainé un ami, effectué des voyages et bien d\'autres..."),
        "onboarding_second_page_title":
            MessageLookupByLibrary.simpleMessage("Soyez récompensé !"),
        "onboarding_select_language_title":
            MessageLookupByLibrary.simpleMessage("Choisir la langue"),
        "onboarding_sign_in_body": MessageLookupByLibrary.simpleMessage(
            "À quelques secondes de la connexion et du démarrage d\'un trajet confortable"),
        "onboarding_sign_in_title":
            MessageLookupByLibrary.simpleMessage("S\'identifier"),
        "order_status_arriving_in": m9,
        "order_status_canceled": MessageLookupByLibrary.simpleMessage("Annulé"),
        "order_status_should_be_arrived":
            MessageLookupByLibrary.simpleMessage("devrait être arrivé"),
        "payment_in_cash": MessageLookupByLibrary.simpleMessage("En espèces"),
        "payment_method_title":
            MessageLookupByLibrary.simpleMessage("Mode de paiement"),
        "placeholder_type": MessageLookupByLibrary.simpleMessage("Taper"),
        "profile_email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("Prénom"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("Le genre"),
        "profile_lastname":
            MessageLookupByLibrary.simpleMessage("Nom de famille"),
        "rate_ride_body": MessageLookupByLibrary.simpleMessage(
            "Aidez-nous à améliorer votre expérience en évaluant votre chauffeur"),
        "rate_ride_comment_placeholder": MessageLookupByLibrary.simpleMessage(
            "écrivez votre commentaire..."),
        "rate_ride_comment_title":
            MessageLookupByLibrary.simpleMessage("Ajouter un commentaire"),
        "rate_ride_good_points":
            MessageLookupByLibrary.simpleMessage("Points sympas"),
        "rate_ride_negative_points":
            MessageLookupByLibrary.simpleMessage("Points négatifs"),
        "rate_ride_title": MessageLookupByLibrary.simpleMessage(
            "Comment s\'est passé votre trajet ?"),
        "register_title_name": MessageLookupByLibrary.simpleMessage("Name"),
        "register_title_verify_number":
            MessageLookupByLibrary.simpleMessage("Verify number"),
        "reservation_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Vous pourrez voir vos futures réservations une fois que vous les aurez effectuées sur l\'écran principal."),
        "reservation_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Pas de réservations!"),
        "ride_options_title":
            MessageLookupByLibrary.simpleMessage("Options de trajet"),
        "ride_options_wait_time_action":
            MessageLookupByLibrary.simpleMessage("Temps d\'attente"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("Préférences de conduite"),
        "ride_reserved_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez consulter les trajets réservés dans le menu pour voir les informations de réservation de ce trajet."),
        "ride_reserved_dialog_title":
            MessageLookupByLibrary.simpleMessage("Votre trajet est réservé."),
        "ride_safety_share_trip_information":
            MessageLookupByLibrary.simpleMessage(
                "Partager des informations sur le voyage"),
        "ride_safety_sos": MessageLookupByLibrary.simpleMessage("SOS"),
        "ride_safety_title":
            MessageLookupByLibrary.simpleMessage("Sécurité de conduite"),
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("Reserve maintenant"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_trip_not_arrived_time": m10,
        "share_trip_started_time": m11,
        "share_trip_text_driver": m12,
        "share_trip_text_locations": m13,
        "sos_body": MessageLookupByLibrary.simpleMessage(
            "Les signaux de détresse sont destinés aux urgences et les appels aux autorités telles que la police peuvent être effectués en votre nom. Veuillez n\'utiliser cette fonction qu\'en cas d\'urgence où vous pourriez être en danger."),
        "sos_ok_action":
            MessageLookupByLibrary.simpleMessage("C\'est une urgence"),
        "sos_send_error": MessageLookupByLibrary.simpleMessage(
            "There was a problem encountered while attempting to send your SOS signal. Please make another attempt or contact 911 directly."),
        "sos_sent_alert":
            MessageLookupByLibrary.simpleMessage("SOS est envoyé"),
        "sos_title": MessageLookupByLibrary.simpleMessage("Signal de détresse"),
        "status_title_driver_arrived": MessageLookupByLibrary.simpleMessage(
            "Rencontrer le chauffeur au point de ramassage"),
        "status_title_trip_started": MessageLookupByLibrary.simpleMessage(
            "En route vers la destination"),
        "terms_and_condition_button":
            MessageLookupByLibrary.simpleMessage("termes et conditions"),
        "terms_and_condition_text": MessageLookupByLibrary.simpleMessage(
            "J\'ai lu et suis d\'accord avec"),
        "textbox_error_select_type_address":
            MessageLookupByLibrary.simpleMessage(
                "Veuillez sélectionner le type d\'adresse"),
        "title_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Réserver un tour"),
        "title_wait_time":
            MessageLookupByLibrary.simpleMessage("Temps d\'attente"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("Payer"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage(
                "Aucune commande passée n\'a été enregistrée."),
        "trip_history_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Pas d\'enregistrements!"),
        "trip_information_title":
            MessageLookupByLibrary.simpleMessage("Informations sur le voyage"),
        "verify_phone_code_empty_message": MessageLookupByLibrary.simpleMessage(
            "Le code de vérification n\'est pas entré."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Activité"),
        "wallet_card_title": m14,
        "wallet_empty_state_message": MessageLookupByLibrary.simpleMessage(
            "Aucun historique enregistré."),
        "welcome_card_greeting": m15,
        "welcome_card_subtitle":
            MessageLookupByLibrary.simpleMessage("Où allez-vous?"),
        "welcome_card_textbox_placeholder":
            MessageLookupByLibrary.simpleMessage("Où est votre destination?"),
        "your_destination":
            MessageLookupByLibrary.simpleMessage("Votre destination")
      };
}
