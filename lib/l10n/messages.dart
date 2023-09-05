import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'messages_am.dart';
import 'messages_ar.dart';
import 'messages_bn.dart';
import 'messages_de.dart';
import 'messages_en.dart';
import 'messages_es.dart';
import 'messages_fa.dart';
import 'messages_fr.dart';
import 'messages_hi.dart';
import 'messages_hy.dart';
import 'messages_id.dart';
import 'messages_it.dart';
import 'messages_ja.dart';
import 'messages_ko.dart';
import 'messages_om.dart';
import 'messages_pt.dart';
import 'messages_ro.dart';
import 'messages_ru.dart';
import 'messages_sv.dart';
import 'messages_ur.dart';
import 'messages_zh.dart';

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/messages.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S)!;
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('am'),
    Locale('ar'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fr'),
    Locale('hi'),
    Locale('hy'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('om'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sv'),
    Locale('ur'),
    Locale('zh')
  ];

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// No description provided for @wallet_empty_state_message.
  ///
  /// In en, this message translates to:
  /// **'No history recorded.'**
  String get wallet_empty_state_message;

  /// No description provided for @enum_rider_transaction_deduct_order_fee.
  ///
  /// In en, this message translates to:
  /// **'Order Fee'**
  String get enum_rider_transaction_deduct_order_fee;

  /// No description provided for @enum_rider_transaction_deduct_withdraw.
  ///
  /// In en, this message translates to:
  /// **'Withdraw'**
  String get enum_rider_transaction_deduct_withdraw;

  /// No description provided for @enum_rider_transaction_deduct_correction.
  ///
  /// In en, this message translates to:
  /// **'Correction'**
  String get enum_rider_transaction_deduct_correction;

  /// No description provided for @enum_unknown.
  ///
  /// In en, this message translates to:
  /// **'Unkonwn'**
  String get enum_unknown;

  /// No description provided for @enum_rider_transaction_recharge_in_app_payment.
  ///
  /// In en, this message translates to:
  /// **'In-app Payment'**
  String get enum_rider_transaction_recharge_in_app_payment;

  /// No description provided for @enum_rider_transaction_recharge_gift.
  ///
  /// In en, this message translates to:
  /// **'Gift'**
  String get enum_rider_transaction_recharge_gift;

  /// No description provided for @enum_rider_transaction_recharge_correction.
  ///
  /// In en, this message translates to:
  /// **'Correction'**
  String get enum_rider_transaction_recharge_correction;

  /// No description provided for @enum_rider_transaction_recharge_bank_transfer.
  ///
  /// In en, this message translates to:
  /// **'Bank Transfer'**
  String get enum_rider_transaction_recharge_bank_transfer;

  /// No description provided for @top_up_sheet_pay_button.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get top_up_sheet_pay_button;

  /// No description provided for @service_selection_book_now.
  ///
  /// In en, this message translates to:
  /// **'Book Now'**
  String get service_selection_book_now;

  /// No description provided for @action_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get action_cancel;

  /// No description provided for @copyright_notice.
  ///
  /// In en, this message translates to:
  /// **'Copyright © {company}, All rights reserved.'**
  String copyright_notice(Object company);

  /// No description provided for @menu_about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get menu_about;

  /// No description provided for @menu_login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get menu_login;

  /// No description provided for @menu_profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get menu_profile;

  /// No description provided for @menu_wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get menu_wallet;

  /// No description provided for @menu_trip_history.
  ///
  /// In en, this message translates to:
  /// **'Trip History'**
  String get menu_trip_history;

  /// No description provided for @menu_announcements.
  ///
  /// In en, this message translates to:
  /// **'Announcements'**
  String get menu_announcements;

  /// No description provided for @menu_saved_locations.
  ///
  /// In en, this message translates to:
  /// **'Saved Locations'**
  String get menu_saved_locations;

  /// No description provided for @action_save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get action_save;

  /// No description provided for @create_address_name_empty_error.
  ///
  /// In en, this message translates to:
  /// **'Please enter name of location'**
  String get create_address_name_empty_error;

  /// No description provided for @create_address_title_textfield_hint.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get create_address_title_textfield_hint;

  /// No description provided for @action_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get action_delete;

  /// No description provided for @trip_history_empty_state_message.
  ///
  /// In en, this message translates to:
  /// **'No past order has been recorded.'**
  String get trip_history_empty_state_message;

  /// No description provided for @profile_firstname.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get profile_firstname;

  /// No description provided for @profile_lastname.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get profile_lastname;

  /// No description provided for @profile_email.
  ///
  /// In en, this message translates to:
  /// **'E-Mail'**
  String get profile_email;

  /// No description provided for @profile_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get profile_gender;

  /// No description provided for @enum_gender_male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get enum_gender_male;

  /// No description provided for @enum_gender_female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get enum_gender_female;

  /// No description provided for @login_cell_number_textfield_hint.
  ///
  /// In en, this message translates to:
  /// **'Cell Number'**
  String get login_cell_number_textfield_hint;

  /// No description provided for @login_cell_number_empty_error.
  ///
  /// In en, this message translates to:
  /// **'Please enter the phone number in correct format'**
  String get login_cell_number_empty_error;

  /// No description provided for @action_next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get action_next;

  /// No description provided for @verify_phone_code_empty_message.
  ///
  /// In en, this message translates to:
  /// **'Verification code is not entered.'**
  String get verify_phone_code_empty_message;

  /// No description provided for @wallet_activities_heading.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get wallet_activities_heading;

  /// No description provided for @menu_logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get menu_logout;

  /// No description provided for @enum_gender_unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get enum_gender_unknown;

  /// No description provided for @enum_address_type_home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get enum_address_type_home;

  /// No description provided for @enum_address_type_work.
  ///
  /// In en, this message translates to:
  /// **'Work'**
  String get enum_address_type_work;

  /// No description provided for @enum_address_type_partner.
  ///
  /// In en, this message translates to:
  /// **'Partner'**
  String get enum_address_type_partner;

  /// No description provided for @enum_address_type_other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get enum_address_type_other;

  /// No description provided for @message_notification_permission_denined_message.
  ///
  /// In en, this message translates to:
  /// **'Notification permission was denied previously. In order to get new order\\\'s notifications, you can enable the permission from app settings.'**
  String get message_notification_permission_denined_message;

  /// No description provided for @message_notification_permission_title.
  ///
  /// In en, this message translates to:
  /// **'Notification Permission'**
  String get message_notification_permission_title;

  /// No description provided for @action_ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get action_ok;

  /// No description provided for @menu_website.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get menu_website;

  /// No description provided for @action_confirm_and_reserve_ride.
  ///
  /// In en, this message translates to:
  /// **'Confirm & Reserve ride'**
  String get action_confirm_and_reserve_ride;

  /// No description provided for @title_reserve_ride.
  ///
  /// In en, this message translates to:
  /// **'Reserve Ride'**
  String get title_reserve_ride;

  /// No description provided for @error_region_unsupported.
  ///
  /// In en, this message translates to:
  /// **'Region is not supported.'**
  String get error_region_unsupported;

  /// No description provided for @action_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get action_confirm;

  /// No description provided for @title_wait_time.
  ///
  /// In en, this message translates to:
  /// **'Wait time'**
  String get title_wait_time;

  /// No description provided for @notice_tip_title.
  ///
  /// In en, this message translates to:
  /// **'Would you like to add a tip?'**
  String get notice_tip_title;

  /// No description provided for @notice_tip_description.
  ///
  /// In en, this message translates to:
  /// **'Adding tip is optional. You can add any amount you like as a tip for the driver.'**
  String get notice_tip_description;

  /// No description provided for @action_pay_for_ride.
  ///
  /// In en, this message translates to:
  /// **'Pay for ride'**
  String get action_pay_for_ride;

  /// No description provided for @action_confirm_and_pay.
  ///
  /// In en, this message translates to:
  /// **'Confirm & Pay'**
  String get action_confirm_and_pay;

  /// No description provided for @action_add_photo.
  ///
  /// In en, this message translates to:
  /// **'Add Photo'**
  String get action_add_photo;

  /// No description provided for @complaint_submit_success_message.
  ///
  /// In en, this message translates to:
  /// **'Complaint is submitted. Please wait for a contact from our support representative about your inquiry.'**
  String get complaint_submit_success_message;

  /// No description provided for @error_field_cant_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Can not be empty'**
  String get error_field_cant_be_empty;

  /// No description provided for @issue_description_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Write a description of your issue...'**
  String get issue_description_placeholder;

  /// No description provided for @issue_subject_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Subject'**
  String get issue_subject_placeholder;

  /// No description provided for @issue_submit_description.
  ///
  /// In en, this message translates to:
  /// **'You can report any issue you had with your ride. We will help you with the issue within a call.'**
  String get issue_submit_description;

  /// No description provided for @issue_submit_title.
  ///
  /// In en, this message translates to:
  /// **'Report an issue'**
  String get issue_submit_title;

  /// No description provided for @issue_submit_button.
  ///
  /// In en, this message translates to:
  /// **'Report issue'**
  String get issue_submit_button;

  /// No description provided for @trip_information_title.
  ///
  /// In en, this message translates to:
  /// **'Trip Information'**
  String get trip_information_title;

  /// No description provided for @payment_in_cash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get payment_in_cash;

  /// No description provided for @payment_method_title.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get payment_method_title;

  /// No description provided for @button_ride_safety.
  ///
  /// In en, this message translates to:
  /// **'Ride Safety'**
  String get button_ride_safety;

  /// No description provided for @status_title_driver_arrived.
  ///
  /// In en, this message translates to:
  /// **'Meet driver at pickup point'**
  String get status_title_driver_arrived;

  /// No description provided for @status_title_trip_started.
  ///
  /// In en, this message translates to:
  /// **'Heading to destination'**
  String get status_title_trip_started;

  /// No description provided for @welcome_card_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Where are you going?'**
  String get welcome_card_subtitle;

  /// No description provided for @welcome_card_textbox_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Where is your destination?'**
  String get welcome_card_textbox_placeholder;

  /// No description provided for @welcome_card_greeting.
  ///
  /// In en, this message translates to:
  /// **'Hello {firstName}!'**
  String welcome_card_greeting(Object firstName);

  /// No description provided for @login_title.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get login_title;

  /// No description provided for @login_body.
  ///
  /// In en, this message translates to:
  /// **'First, you must sign in to book your ride. A verification code will be sent to your phone number.'**
  String get login_body;

  /// No description provided for @terms_and_condition_text.
  ///
  /// In en, this message translates to:
  /// **'I have read and agree with '**
  String get terms_and_condition_text;

  /// No description provided for @terms_and_condition_button.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get terms_and_condition_button;

  /// No description provided for @login_verify_code_title.
  ///
  /// In en, this message translates to:
  /// **'Enter code'**
  String get login_verify_code_title;

  /// No description provided for @login_verify_code_body.
  ///
  /// In en, this message translates to:
  /// **'Code has been sent to your phone number'**
  String get login_verify_code_body;

  /// No description provided for @action_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get action_continue;

  /// No description provided for @current_location.
  ///
  /// In en, this message translates to:
  /// **'Current Location'**
  String get current_location;

  /// No description provided for @your_destination.
  ///
  /// In en, this message translates to:
  /// **'Your destination'**
  String get your_destination;

  /// No description provided for @add_stop.
  ///
  /// In en, this message translates to:
  /// **'Add Stop'**
  String get add_stop;

  /// No description provided for @action_choose_on_map.
  ///
  /// In en, this message translates to:
  /// **'choose on map'**
  String get action_choose_on_map;

  /// No description provided for @message_title_location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get message_title_location;

  /// No description provided for @message_body_location.
  ///
  /// In en, this message translates to:
  /// **'We could not get your current location from your device\'s GPS. Please use the search field to select your pickup location.'**
  String get message_body_location;

  /// No description provided for @menu_reserved_rides.
  ///
  /// In en, this message translates to:
  /// **'Reserved Rides'**
  String get menu_reserved_rides;

  /// No description provided for @reservation_empty_state_title.
  ///
  /// In en, this message translates to:
  /// **'No Reservations!'**
  String get reservation_empty_state_title;

  /// No description provided for @reservation_empty_state_body.
  ///
  /// In en, this message translates to:
  /// **'You will be able to see your future bookings once you make them on the main screen.'**
  String get reservation_empty_state_body;

  /// No description provided for @action_cancel_ride.
  ///
  /// In en, this message translates to:
  /// **'Cancel Ride'**
  String get action_cancel_ride;

  /// No description provided for @enum_address_type_gym.
  ///
  /// In en, this message translates to:
  /// **'Gym'**
  String get enum_address_type_gym;

  /// No description provided for @enum_address_type_parent_house.
  ///
  /// In en, this message translates to:
  /// **'Parent\'s House'**
  String get enum_address_type_parent_house;

  /// No description provided for @enum_address_type_cafe.
  ///
  /// In en, this message translates to:
  /// **'Cafe'**
  String get enum_address_type_cafe;

  /// No description provided for @enum_address_type_park.
  ///
  /// In en, this message translates to:
  /// **'Park'**
  String get enum_address_type_park;

  /// No description provided for @action_add_favorite_location.
  ///
  /// In en, this message translates to:
  /// **'Add Favorite location'**
  String get action_add_favorite_location;

  /// No description provided for @favorite_locations_list_title.
  ///
  /// In en, this message translates to:
  /// **'Favorite locations'**
  String get favorite_locations_list_title;

  /// No description provided for @favorite_locations_list_body.
  ///
  /// In en, this message translates to:
  /// **'You can save your favorite locations for easier access'**
  String get favorite_locations_list_body;

  /// No description provided for @favorite_location_details_title.
  ///
  /// In en, this message translates to:
  /// **'Name your favorite location'**
  String get favorite_location_details_title;

  /// No description provided for @textbox_error_select_type_address.
  ///
  /// In en, this message translates to:
  /// **'Please select the type of address'**
  String get textbox_error_select_type_address;

  /// No description provided for @placeholder_type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get placeholder_type;

  /// No description provided for @action_delete_account.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get action_delete_account;

  /// No description provided for @message_delete_account_title.
  ///
  /// In en, this message translates to:
  /// **'Account deletion'**
  String get message_delete_account_title;

  /// No description provided for @message_delete_account_body.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account? You can log in again within 30 days to restore the account. After this period, your data gets completely removed, including all your remaining credits.'**
  String get message_delete_account_body;

  /// No description provided for @action_edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get action_edit;

  /// No description provided for @action_confirm_location.
  ///
  /// In en, this message translates to:
  /// **'Confirm location'**
  String get action_confirm_location;

  /// No description provided for @action_coupon_code.
  ///
  /// In en, this message translates to:
  /// **'Coupon Code'**
  String get action_coupon_code;

  /// No description provided for @enter_coupon_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Coupon Code'**
  String get enter_coupon_dialog_title;

  /// No description provided for @enter_coupon_dialog_body.
  ///
  /// In en, this message translates to:
  /// **'Insert your coupon code to be applied to the price'**
  String get enter_coupon_dialog_body;

  /// No description provided for @enter_coupon_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter coupon code'**
  String get enter_coupon_placeholder;

  /// No description provided for @looking_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Ride Requested'**
  String get looking_dialog_title;

  /// No description provided for @looking_dialog_body.
  ///
  /// In en, this message translates to:
  /// **'We are looking for the nearest driver for you.'**
  String get looking_dialog_body;

  /// No description provided for @action_cancel_request.
  ///
  /// In en, this message translates to:
  /// **'Cancel Request'**
  String get action_cancel_request;

  /// No description provided for @rate_ride_title.
  ///
  /// In en, this message translates to:
  /// **'How was your ride?'**
  String get rate_ride_title;

  /// No description provided for @rate_ride_body.
  ///
  /// In en, this message translates to:
  /// **'Help us improve your experience by rating your driver'**
  String get rate_ride_body;

  /// No description provided for @rate_ride_good_points.
  ///
  /// In en, this message translates to:
  /// **'Nice Points'**
  String get rate_ride_good_points;

  /// No description provided for @rate_ride_negative_points.
  ///
  /// In en, this message translates to:
  /// **'Negative Points'**
  String get rate_ride_negative_points;

  /// No description provided for @rate_ride_comment_title.
  ///
  /// In en, this message translates to:
  /// **'Add comment'**
  String get rate_ride_comment_title;

  /// No description provided for @rate_ride_comment_placeholder.
  ///
  /// In en, this message translates to:
  /// **'write your comment ...'**
  String get rate_ride_comment_placeholder;

  /// No description provided for @action_send_feedback.
  ///
  /// In en, this message translates to:
  /// **'Send Feedback'**
  String get action_send_feedback;

  /// No description provided for @action_ride_options.
  ///
  /// In en, this message translates to:
  /// **'Ride Options'**
  String get action_ride_options;

  /// No description provided for @ride_options_title.
  ///
  /// In en, this message translates to:
  /// **'Ride Options'**
  String get ride_options_title;

  /// No description provided for @ride_options_wait_time_action.
  ///
  /// In en, this message translates to:
  /// **'Wait time'**
  String get ride_options_wait_time_action;

  /// No description provided for @ride_safety_title.
  ///
  /// In en, this message translates to:
  /// **'Ride Safety'**
  String get ride_safety_title;

  /// No description provided for @ride_safety_share_trip_information.
  ///
  /// In en, this message translates to:
  /// **'Share trip information'**
  String get ride_safety_share_trip_information;

  /// No description provided for @ride_safety_sos.
  ///
  /// In en, this message translates to:
  /// **'SOS'**
  String get ride_safety_sos;

  /// No description provided for @sos_title.
  ///
  /// In en, this message translates to:
  /// **'Distress Signal'**
  String get sos_title;

  /// No description provided for @sos_body.
  ///
  /// In en, this message translates to:
  /// **'Distress signals are for emergencies and contacting authorities, such as the police or law enforcement. Please use the distress signal in the event that you experience an emergency and require immediate assistance.'**
  String get sos_body;

  /// No description provided for @sos_sent_alert.
  ///
  /// In en, this message translates to:
  /// **'SOS is sent'**
  String get sos_sent_alert;

  /// No description provided for @sos_ok_action.
  ///
  /// In en, this message translates to:
  /// **'It\'s an emergency'**
  String get sos_ok_action;

  /// No description provided for @share_trip_text_locations.
  ///
  /// In en, this message translates to:
  /// **'I am on my way to {destination} from {pickup}.'**
  String share_trip_text_locations(Object destination, Object pickup);

  /// No description provided for @share_trip_text_driver.
  ///
  /// In en, this message translates to:
  /// **' My driver name is {firstName} {lastName}, the mobile number is +{mobileNumber}.'**
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber);

  /// No description provided for @share_trip_started_time.
  ///
  /// In en, this message translates to:
  /// **' Trip has started on {startTime} and I expect the trip to take approximately {duration} minutes'**
  String share_trip_started_time(Object startTime, Object duration);

  /// No description provided for @share_trip_not_arrived_time.
  ///
  /// In en, this message translates to:
  /// **' I expect the trip to take approximately {duration} minutes once I get into the driver\'s car.'**
  String share_trip_not_arrived_time(Object duration);

  /// No description provided for @announcements_empty_state_title.
  ///
  /// In en, this message translates to:
  /// **'No Announcements yet!'**
  String get announcements_empty_state_title;

  /// No description provided for @announcements_empty_state_body.
  ///
  /// In en, this message translates to:
  /// **'We will notify you when new announcements comes.'**
  String get announcements_empty_state_body;

  /// No description provided for @action_set_location.
  ///
  /// In en, this message translates to:
  /// **'Set Location'**
  String get action_set_location;

  /// No description provided for @trip_history_empty_state_title.
  ///
  /// In en, this message translates to:
  /// **'No Records!'**
  String get trip_history_empty_state_title;

  /// No description provided for @location_not_found_alert_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location_not_found_alert_dialog_title;

  /// No description provided for @location_not_found_alert_dialog_body.
  ///
  /// In en, this message translates to:
  /// **'We could not get your current location using your device\'s GPS. Please check the device location permission for the app from the device\'s settings. Alternatively, you can use the search field above to select your pick-up point.'**
  String get location_not_found_alert_dialog_body;

  /// No description provided for @gift_card_title.
  ///
  /// In en, this message translates to:
  /// **'Enter Gift Code'**
  String get gift_card_title;

  /// No description provided for @gift_card_body.
  ///
  /// In en, this message translates to:
  /// **'Enter your gift card code'**
  String get gift_card_body;

  /// No description provided for @gift_card_text_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter gift card code'**
  String get gift_card_text_placeholder;

  /// No description provided for @action_apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get action_apply;

  /// No description provided for @order_status_should_be_arrived.
  ///
  /// In en, this message translates to:
  /// **'On their way!'**
  String get order_status_should_be_arrived;

  /// No description provided for @order_status_arriving_in.
  ///
  /// In en, this message translates to:
  /// **'Arriving in {minutes} mins'**
  String order_status_arriving_in(Object minutes);

  /// No description provided for @message_title_warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get message_title_warning;

  /// No description provided for @cancelation_fee_confirmation_body.
  ///
  /// In en, this message translates to:
  /// **'Cancellation of service after the driver has accepted the trip is subject to a cancellation penalty of {fee}. Do you confirm?'**
  String cancelation_fee_confirmation_body(Object fee);

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @add_credit_select_payment_method.
  ///
  /// In en, this message translates to:
  /// **'Select Payment Method:'**
  String get add_credit_select_payment_method;

  /// No description provided for @add_credit_custom_credit_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Add Custom Credit'**
  String get add_credit_custom_credit_placeholder;

  /// No description provided for @add_credit_custom_credit_text_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get add_credit_custom_credit_text_placeholder;

  /// No description provided for @invoice_item_tip.
  ///
  /// In en, this message translates to:
  /// **'Tip'**
  String get invoice_item_tip;

  /// No description provided for @invoice_item_wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get invoice_item_wallet;

  /// No description provided for @invoice_item_total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get invoice_item_total;

  /// No description provided for @add_credit_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Add Credit'**
  String get add_credit_dialog_title;

  /// No description provided for @add_credit_choose_amount.
  ///
  /// In en, this message translates to:
  /// **'Choose amount'**
  String get add_credit_choose_amount;

  /// No description provided for @action_ride_preferences.
  ///
  /// In en, this message translates to:
  /// **'Ride Preferences'**
  String get action_ride_preferences;

  /// No description provided for @ride_preferences_title.
  ///
  /// In en, this message translates to:
  /// **'Ride Preferences'**
  String get ride_preferences_title;

  /// No description provided for @action_confirm_and_continue.
  ///
  /// In en, this message translates to:
  /// **'Confirm & Continue'**
  String get action_confirm_and_continue;

  /// No description provided for @action_see_reserved_rides.
  ///
  /// In en, this message translates to:
  /// **'See reserved rides'**
  String get action_see_reserved_rides;

  /// No description provided for @ride_reserved_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Your ride is reserved.'**
  String get ride_reserved_dialog_title;

  /// No description provided for @ride_reserved_dialog_body.
  ///
  /// In en, this message translates to:
  /// **'You can check out reserved rides in the menu to see reserve information of this ride.'**
  String get ride_reserved_dialog_body;

  /// No description provided for @alert_coupon_unavailable.
  ///
  /// In en, this message translates to:
  /// **'Coupon is unavailable'**
  String get alert_coupon_unavailable;

  /// No description provided for @minutes_format.
  ///
  /// In en, this message translates to:
  /// **'{minutes} minutes'**
  String minutes_format(Object minutes);

  /// No description provided for @action_back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get action_back;

  /// No description provided for @wallet_card_title.
  ///
  /// In en, this message translates to:
  /// **'{appName} Wallet'**
  String wallet_card_title(Object appName);

  /// No description provided for @action_redeem_gift_card.
  ///
  /// In en, this message translates to:
  /// **'Redeem Gift Card'**
  String get action_redeem_gift_card;

  /// No description provided for @order_status_canceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get order_status_canceled;

  /// No description provided for @action_skip_for_now.
  ///
  /// In en, this message translates to:
  /// **'Skip for now'**
  String get action_skip_for_now;

  /// No description provided for @onboarding_select_language_title.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get onboarding_select_language_title;

  /// No description provided for @onboarding_first_page_title.
  ///
  /// In en, this message translates to:
  /// **'Welcome to {appName}!'**
  String onboarding_first_page_title(Object appName);

  /// No description provided for @onboarding_first_page_body.
  ///
  /// In en, this message translates to:
  /// **'Taxi service designed for your comfort \n have Trips with your favorite drivers and choose your ride preferences'**
  String get onboarding_first_page_body;

  /// No description provided for @onboarding_second_page_title.
  ///
  /// In en, this message translates to:
  /// **'Get rewarded!'**
  String get onboarding_second_page_title;

  /// No description provided for @onboarding_second_page_body.
  ///
  /// In en, this message translates to:
  /// **'get extra bonuses for referring a friend, completing trips and many more...'**
  String get onboarding_second_page_body;

  /// No description provided for @onboarding_sign_in_title.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get onboarding_sign_in_title;

  /// No description provided for @onboarding_sign_in_body.
  ///
  /// In en, this message translates to:
  /// **'A few seconds away from signing in and starting a comfortable ride'**
  String get onboarding_sign_in_body;

  /// No description provided for @distanceMeters.
  ///
  /// In en, this message translates to:
  /// **'{distance} m'**
  String distanceMeters(String distance);

  /// No description provided for @distanceKm.
  ///
  /// In en, this message translates to:
  /// **'{distance} km'**
  String distanceKm(String distance);

  /// No description provided for @distanceFeet.
  ///
  /// In en, this message translates to:
  /// **'{distance} ft'**
  String distanceFeet(String distance);

  /// No description provided for @distanceMiles.
  ///
  /// In en, this message translates to:
  /// **'{distance} mi'**
  String distanceMiles(String distance);

  /// No description provided for @register_title_name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get register_title_name;

  /// No description provided for @register_title_verify_number.
  ///
  /// In en, this message translates to:
  /// **'Verify number'**
  String get register_title_verify_number;

  /// No description provided for @login_enter_phone_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in first to book your ride. We\'ll send a code to your phone.'**
  String get login_enter_phone_subtitle;

  /// No description provided for @action_resend_code.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get action_resend_code;

  /// No description provided for @notice_resend_code_in_seconds.
  ///
  /// In en, this message translates to:
  /// **'Resend code in {seconds} seconds'**
  String notice_resend_code_in_seconds(Object seconds);

  /// No description provided for @sos_send_error.
  ///
  /// In en, this message translates to:
  /// **'There was a problem encountered while attempting to send your SOS signal. Please make another attempt or contact 911 directly.'**
  String get sos_send_error;

  /// No description provided for @complaint_submit_error_message.
  ///
  /// In en, this message translates to:
  /// **'The submission of your complaint was unsuccessful, likely due to connectivity issues. Please try again.'**
  String get complaint_submit_error_message;

  /// No description provided for @languageSettings.
  ///
  /// In en, this message translates to:
  /// **'Language Settings'**
  String get languageSettings;

  /// No description provided for @mapSettings.
  ///
  /// In en, this message translates to:
  /// **'Map Settings'**
  String get mapSettings;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @actionYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get actionYes;

  /// No description provided for @actionNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get actionNo;

  /// No description provided for @messageConfirmAddressDelete.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this address?'**
  String get messageConfirmAddressDelete;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['am', 'ar', 'bn', 'de', 'en', 'es', 'fa', 'fr', 'hi', 'hy', 'id', 'it', 'ja', 'ko', 'om', 'pt', 'ro', 'ru', 'sv', 'ur', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'am': return SAm();
    case 'ar': return SAr();
    case 'bn': return SBn();
    case 'de': return SDe();
    case 'en': return SEn();
    case 'es': return SEs();
    case 'fa': return SFa();
    case 'fr': return SFr();
    case 'hi': return SHi();
    case 'hy': return SHy();
    case 'id': return SId();
    case 'it': return SIt();
    case 'ja': return SJa();
    case 'ko': return SKo();
    case 'om': return SOm();
    case 'pt': return SPt();
    case 'ro': return SRo();
    case 'ru': return SRu();
    case 'sv': return SSv();
    case 'ur': return SUr();
    case 'zh': return SZh();
  }

  throw FlutterError(
    'S.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
