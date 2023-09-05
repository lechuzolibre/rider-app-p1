import 'messages.dart';

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get loading => 'Loading';

  @override
  String get wallet_empty_state_message => 'No history recorded.';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'Order Fee';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'Withdraw';

  @override
  String get enum_rider_transaction_deduct_correction => 'Correction';

  @override
  String get enum_unknown => 'Unkonwn';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'In-app Payment';

  @override
  String get enum_rider_transaction_recharge_gift => 'Gift';

  @override
  String get enum_rider_transaction_recharge_correction => 'Correction';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'Bank Transfer';

  @override
  String get top_up_sheet_pay_button => 'Pay';

  @override
  String get service_selection_book_now => 'Book Now';

  @override
  String get action_cancel => 'Cancel';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, All rights reserved.';
  }

  @override
  String get menu_about => 'About';

  @override
  String get menu_login => 'Login';

  @override
  String get menu_profile => 'Profile';

  @override
  String get menu_wallet => 'Wallet';

  @override
  String get menu_trip_history => 'Trip History';

  @override
  String get menu_announcements => 'Announcements';

  @override
  String get menu_saved_locations => 'Saved Locations';

  @override
  String get action_save => 'Save';

  @override
  String get create_address_name_empty_error => 'Please enter name of location';

  @override
  String get create_address_title_textfield_hint => 'Title';

  @override
  String get action_delete => 'Delete';

  @override
  String get trip_history_empty_state_message => 'No past order has been recorded.';

  @override
  String get profile_firstname => 'First Name';

  @override
  String get profile_lastname => 'Last Name';

  @override
  String get profile_email => 'E-Mail';

  @override
  String get profile_gender => 'Gender';

  @override
  String get enum_gender_male => 'Male';

  @override
  String get enum_gender_female => 'Female';

  @override
  String get login_cell_number_textfield_hint => 'Cell Number';

  @override
  String get login_cell_number_empty_error => 'Please enter the phone number in correct format';

  @override
  String get action_next => 'Next';

  @override
  String get verify_phone_code_empty_message => 'Verification code is not entered.';

  @override
  String get wallet_activities_heading => 'Activity';

  @override
  String get menu_logout => 'Logout';

  @override
  String get enum_gender_unknown => 'Unknown';

  @override
  String get enum_address_type_home => 'Home';

  @override
  String get enum_address_type_work => 'Work';

  @override
  String get enum_address_type_partner => 'Partner';

  @override
  String get enum_address_type_other => 'Other';

  @override
  String get message_notification_permission_denined_message => 'Notification permission was denied previously. In order to get new order\\\'s notifications, you can enable the permission from app settings.';

  @override
  String get message_notification_permission_title => 'Notification Permission';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_website => 'Website';

  @override
  String get action_confirm_and_reserve_ride => 'Confirm & Reserve ride';

  @override
  String get title_reserve_ride => 'Reserve Ride';

  @override
  String get error_region_unsupported => 'Region is not supported.';

  @override
  String get action_confirm => 'Confirm';

  @override
  String get title_wait_time => 'Wait time';

  @override
  String get notice_tip_title => 'Would you like to add a tip?';

  @override
  String get notice_tip_description => 'Adding tip is optional. You can add any amount you like as a tip for the driver.';

  @override
  String get action_pay_for_ride => 'Pay for ride';

  @override
  String get action_confirm_and_pay => 'Confirm & Pay';

  @override
  String get action_add_photo => 'Add Photo';

  @override
  String get complaint_submit_success_message => 'Complaint is submitted. Please wait for a contact from our support representative about your inquiry.';

  @override
  String get error_field_cant_be_empty => 'Can not be empty';

  @override
  String get issue_description_placeholder => 'Write a description of your issue...';

  @override
  String get issue_subject_placeholder => 'Subject';

  @override
  String get issue_submit_description => 'You can report any issue you had with your ride. We will help you with the issue within a call.';

  @override
  String get issue_submit_title => 'Report an issue';

  @override
  String get issue_submit_button => 'Report issue';

  @override
  String get trip_information_title => 'Trip Information';

  @override
  String get payment_in_cash => 'Cash';

  @override
  String get payment_method_title => 'Payment Method';

  @override
  String get button_ride_safety => 'Ride Safety';

  @override
  String get status_title_driver_arrived => 'Meet driver at pickup point';

  @override
  String get status_title_trip_started => 'Heading to destination';

  @override
  String get welcome_card_subtitle => 'Where are you going?';

  @override
  String get welcome_card_textbox_placeholder => 'Where is your destination?';

  @override
  String welcome_card_greeting(Object firstName) {
    return 'Hello $firstName!';
  }

  @override
  String get login_title => 'Sign In';

  @override
  String get login_body => 'First, you must sign in to book your ride. A verification code will be sent to your phone number.';

  @override
  String get terms_and_condition_text => 'I have read and agree with ';

  @override
  String get terms_and_condition_button => 'Terms & Conditions';

  @override
  String get login_verify_code_title => 'Enter code';

  @override
  String get login_verify_code_body => 'Code has been sent to your phone number';

  @override
  String get action_continue => 'Continue';

  @override
  String get current_location => 'Current Location';

  @override
  String get your_destination => 'Your destination';

  @override
  String get add_stop => 'Add Stop';

  @override
  String get action_choose_on_map => 'choose on map';

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
  String get action_add_favorite_location => 'Add Favorite location';

  @override
  String get favorite_locations_list_title => 'Favorite locations';

  @override
  String get favorite_locations_list_body => 'You can save your favorite locations for easier access';

  @override
  String get favorite_location_details_title => 'Name your favorite location';

  @override
  String get textbox_error_select_type_address => 'Please select the type of address';

  @override
  String get placeholder_type => 'Type';

  @override
  String get action_delete_account => 'Delete Account';

  @override
  String get message_delete_account_title => 'Account deletion';

  @override
  String get message_delete_account_body => 'Are you sure you want to delete your account? You can log in again within 30 days to restore the account. After this period, your data gets completely removed, including all your remaining credits.';

  @override
  String get action_edit => 'Edit';

  @override
  String get action_confirm_location => 'Confirm location';

  @override
  String get action_coupon_code => 'Coupon Code';

  @override
  String get enter_coupon_dialog_title => 'Coupon Code';

  @override
  String get enter_coupon_dialog_body => 'Insert your coupon code to be applied to the price';

  @override
  String get enter_coupon_placeholder => 'Enter coupon code';

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
  String get rate_ride_good_points => 'Nice Points';

  @override
  String get rate_ride_negative_points => 'Negative Points';

  @override
  String get rate_ride_comment_title => 'Add comment';

  @override
  String get rate_ride_comment_placeholder => 'write your comment ...';

  @override
  String get action_send_feedback => 'Send Feedback';

  @override
  String get action_ride_options => 'Ride Options';

  @override
  String get ride_options_title => 'Ride Options';

  @override
  String get ride_options_wait_time_action => 'Wait time';

  @override
  String get ride_safety_title => 'Ride Safety';

  @override
  String get ride_safety_share_trip_information => 'Share trip information';

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
    return ' My driver name is $firstName $lastName, the mobile number is +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Trip has started on $startTime and I expect the trip to take approximately $duration minutes';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' I expect the trip to take approximately $duration minutes once I get into the driver\'s car.';
  }

  @override
  String get announcements_empty_state_title => 'No Announcements yet!';

  @override
  String get announcements_empty_state_body => 'We will notify you when new announcements comes.';

  @override
  String get action_set_location => 'Set Location';

  @override
  String get trip_history_empty_state_title => 'No Records!';

  @override
  String get location_not_found_alert_dialog_title => 'Location';

  @override
  String get location_not_found_alert_dialog_body => 'We could not get your current location using your device\'s GPS. Please check the device location permission for the app from the device\'s settings. Alternatively, you can use the search field above to select your pick-up point.';

  @override
  String get gift_card_title => 'Enter Gift Code';

  @override
  String get gift_card_body => 'Enter your gift card code';

  @override
  String get gift_card_text_placeholder => 'Enter gift card code';

  @override
  String get action_apply => 'Apply';

  @override
  String get order_status_should_be_arrived => 'On their way!';

  @override
  String order_status_arriving_in(Object minutes) {
    return 'Arriving in $minutes mins';
  }

  @override
  String get message_title_warning => 'Warning';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'Cancellation of service after the driver has accepted the trip is subject to a cancellation penalty of $fee. Do you confirm?';
  }

  @override
  String get confirm => 'Confirm';

  @override
  String get add_credit_select_payment_method => 'Select Payment Method:';

  @override
  String get add_credit_custom_credit_placeholder => 'Add Custom Credit';

  @override
  String get add_credit_custom_credit_text_placeholder => 'Custom';

  @override
  String get invoice_item_tip => 'Tip';

  @override
  String get invoice_item_wallet => 'Wallet';

  @override
  String get invoice_item_total => 'Total';

  @override
  String get add_credit_dialog_title => 'Add Credit';

  @override
  String get add_credit_choose_amount => 'Choose amount';

  @override
  String get action_ride_preferences => 'Ride Preferences';

  @override
  String get ride_preferences_title => 'Ride Preferences';

  @override
  String get action_confirm_and_continue => 'Confirm & Continue';

  @override
  String get action_see_reserved_rides => 'See reserved rides';

  @override
  String get ride_reserved_dialog_title => 'Your ride is reserved.';

  @override
  String get ride_reserved_dialog_body => 'You can check out reserved rides in the menu to see reserve information of this ride.';

  @override
  String get alert_coupon_unavailable => 'Coupon is unavailable';

  @override
  String minutes_format(Object minutes) {
    return '$minutes minutes';
  }

  @override
  String get action_back => 'Back';

  @override
  String wallet_card_title(Object appName) {
    return '$appName Wallet';
  }

  @override
  String get action_redeem_gift_card => 'Redeem Gift Card';

  @override
  String get order_status_canceled => 'Canceled';

  @override
  String get action_skip_for_now => 'Skip for now';

  @override
  String get onboarding_select_language_title => 'Select Language';

  @override
  String onboarding_first_page_title(Object appName) {
    return 'Welcome to $appName!';
  }

  @override
  String get onboarding_first_page_body => 'Taxi service designed for your comfort \n have Trips with your favorite drivers and choose your ride preferences';

  @override
  String get onboarding_second_page_title => 'Get rewarded!';

  @override
  String get onboarding_second_page_body => 'get extra bonuses for referring a friend, completing trips and many more...';

  @override
  String get onboarding_sign_in_title => 'Sign in';

  @override
  String get onboarding_sign_in_body => 'A few seconds away from signing in and starting a comfortable ride';

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
  String get login_enter_phone_subtitle => 'Sign in first to book your ride. We\'ll send a code to your phone.';

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
