import 'messages.dart';

/// The translations for Arabic (`ar`).
class SAr extends S {
  SAr([String locale = 'ar']) : super(locale);

  @override
  String get loading => 'تحميل';

  @override
  String get wallet_empty_state_message => 'لا يوجد بيانات سابقة';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'ضريبة القيمة المضافة';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'سحب';

  @override
  String get enum_rider_transaction_deduct_correction => 'تصحيح';

  @override
  String get enum_unknown => 'غير معروف';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'الدفع من خلال التطبيق';

  @override
  String get enum_rider_transaction_recharge_gift => 'هدية';

  @override
  String get enum_rider_transaction_recharge_correction => 'تصحيح';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'تحويل بنكي';

  @override
  String get top_up_sheet_pay_button => 'ادفع';

  @override
  String get service_selection_book_now => 'احجز الآن';

  @override
  String get action_cancel => 'إلغاء';

  @override
  String copyright_notice(Object company) {
    return '$company © كل الحقوق محفوظة لشركة ';
  }

  @override
  String get menu_about => 'حول';

  @override
  String get menu_login => 'تسجيل الدخول';

  @override
  String get menu_profile => 'الملف الشخصي';

  @override
  String get menu_wallet => 'المحفظة';

  @override
  String get menu_trip_history => 'تاريخ الرحلات';

  @override
  String get menu_announcements => 'الإشعارات';

  @override
  String get menu_saved_locations => 'الأماكن المحفوظة';

  @override
  String get action_save => 'حفظ';

  @override
  String get create_address_name_empty_error => 'الرجال ادخال اسم الموقع';

  @override
  String get create_address_title_textfield_hint => 'العنوان';

  @override
  String get action_delete => 'حذف';

  @override
  String get trip_history_empty_state_message => 'لا يوجد بيانات سابقة';

  @override
  String get profile_firstname => 'الاسم الأول';

  @override
  String get profile_lastname => 'الاسم الأخير';

  @override
  String get profile_email => 'الايميل';

  @override
  String get profile_gender => 'الجنس';

  @override
  String get enum_gender_male => 'ذكر';

  @override
  String get enum_gender_female => 'انثى';

  @override
  String get login_cell_number_textfield_hint => 'رقم الجوال';

  @override
  String get login_cell_number_empty_error => 'الرجال ادخال رقم الجوال بصيغة صحيحة';

  @override
  String get action_next => 'التالي';

  @override
  String get verify_phone_code_empty_message => 'لم يتم ادخال رمز التحقق';

  @override
  String get wallet_activities_heading => 'تفعيل';

  @override
  String get menu_logout => 'تسجيل الخروج';

  @override
  String get enum_gender_unknown => 'غير معروف';

  @override
  String get enum_address_type_home => 'الرئيسي';

  @override
  String get enum_address_type_work => 'العمل';

  @override
  String get enum_address_type_partner => 'شركاء';

  @override
  String get enum_address_type_other => 'اخرى';

  @override
  String get message_notification_permission_denined_message => 'لم يتم السماح باستقبال الاشعارات. تستطيع التفعيل الآن عن طريق الإعدادات In order to get new order\\\'s notifications you can enable the permission from app settings.';

  @override
  String get message_notification_permission_title => 'السماح بالتنبيهات،';

  @override
  String get action_ok => 'موافق';

  @override
  String get menu_website => 'الموقع';

  @override
  String get action_confirm_and_reserve_ride => 'التأكيد وحجز رحلة';

  @override
  String get title_reserve_ride => 'حجز رحلة';

  @override
  String get error_region_unsupported => 'لم يتم التعرف على المنطقة';

  @override
  String get action_confirm => 'تأكيد';

  @override
  String get title_wait_time => 'وقت الانتظار';

  @override
  String get notice_tip_title => 'هل تريد اضافة عمولة؟';

  @override
  String get notice_tip_description => 'يمكنك اضافة أي قيمة كعمولة للسائق';

  @override
  String get action_pay_for_ride => 'ادفع للرحلة';

  @override
  String get action_confirm_and_pay => 'تأكيد ودفع';

  @override
  String get action_add_photo => 'اضافة صورة';

  @override
  String get complaint_submit_success_message => 'تم ارسال الشكوى';

  @override
  String get error_field_cant_be_empty => 'لا يمكن ترك الخانة فارغة';

  @override
  String get issue_description_placeholder => 'اكتب وصف للمشكلة';

  @override
  String get issue_subject_placeholder => 'الموضوع';

  @override
  String get issue_submit_description => 'تستطيع رفع بلاغ بأي اشكالية وسوف يتم التواصل معك  في أقرب وقت ممكن';

  @override
  String get issue_submit_title => 'رفع بلاغ';

  @override
  String get issue_submit_button => 'رفع بلاغ';

  @override
  String get trip_information_title => 'معلومات الرحلة';

  @override
  String get payment_in_cash => 'نقدي';

  @override
  String get payment_method_title => 'طرق الدفع';

  @override
  String get button_ride_safety => 'سلامة الرحلة';

  @override
  String get status_title_driver_arrived => 'السائق على وشك الوصول';

  @override
  String get status_title_trip_started => 'ذاهب للوجهة';

  @override
  String get welcome_card_subtitle => 'إلى أين الوجهة';

  @override
  String get welcome_card_textbox_placeholder => 'أين وجهتك؟';

  @override
  String welcome_card_greeting(Object firstName) {
    return '$firstNameهلا ';
  }

  @override
  String get login_title => 'تسجيل الدخول';

  @override
  String get login_body => 'يجب تسجيل الدخول لحجز رحلة';

  @override
  String get terms_and_condition_text => 'تم القراءة والمواققة على الشروط';

  @override
  String get terms_and_condition_button => 'الشروط والاحكام';

  @override
  String get login_verify_code_title => 'ادخل الرمز';

  @override
  String get login_verify_code_body => 'تم ارسال الرمز إلى الجوال';

  @override
  String get action_continue => 'المتابعة';

  @override
  String get current_location => 'الموقع الحالي';

  @override
  String get your_destination => 'وجهتك';

  @override
  String get add_stop => 'اضافة نقطة';

  @override
  String get action_choose_on_map => 'اختيار على الخريطة';

  @override
  String get message_title_location => 'الموقع';

  @override
  String get message_body_location => 'لم يتم التعرف على موقعك الحالي، نرجو كتابة الموقع اعلاه';

  @override
  String get menu_reserved_rides => 'الرحلات المحجوزة';

  @override
  String get reservation_empty_state_title => 'لا حجوزات قادمة';

  @override
  String get reservation_empty_state_body => 'ستتمكن من رؤية حجوزاتك المستقبلية بعد الحجز ';

  @override
  String get action_cancel_ride => 'إلغاء الرحلة';

  @override
  String get enum_address_type_gym => 'نادي';

  @override
  String get enum_address_type_parent_house => 'بيت العائلة';

  @override
  String get enum_address_type_cafe => 'مقهى';

  @override
  String get enum_address_type_park => 'حديقة';

  @override
  String get action_add_favorite_location => 'اضافة المواقع المفضلة';

  @override
  String get favorite_locations_list_title => 'المواقع المفضلة';

  @override
  String get favorite_locations_list_body => 'تستطيع حفظ المواقع المفضلة لتسهيل عملية الوصول لهم';

  @override
  String get favorite_location_details_title => 'اسم الموقع المفضل';

  @override
  String get textbox_error_select_type_address => 'اختر نوع الموقع المفضل';

  @override
  String get placeholder_type => 'النوع';

  @override
  String get action_delete_account => 'حذف الحساب';

  @override
  String get message_delete_account_title => 'حذف الحساب';

  @override
  String get message_delete_account_body => 'هل أنت متأكد من حذف الحساب؟ تستطيع الدخول خلال 30 يوم لتنشيط الحساب. بعد هذه المدة سيتم حذف الحساب مع كافة بياناته شاملاً ذلك المبالغ المتبقية';

  @override
  String get action_edit => 'تعديل';

  @override
  String get action_confirm_location => 'تأكيد الموقع';

  @override
  String get action_coupon_code => 'رمز الخصم';

  @override
  String get enter_coupon_dialog_title => ' رمز الخصم';

  @override
  String get enter_coupon_dialog_body => 'ادخل رمز الخصم لتطبيقه على المبلغ';

  @override
  String get enter_coupon_placeholder => 'ادخال رمز الخصم';

  @override
  String get looking_dialog_title => 'تم ارسال طلب الرحلة';

  @override
  String get looking_dialog_body => 'يتم البحث على سائق';

  @override
  String get action_cancel_request => 'إلغاء الطلب';

  @override
  String get rate_ride_title => 'كيف كانت رحلتك؟';

  @override
  String get rate_ride_body => 'ساعدنا بتطوير الخدمة بتقييم قائد المركبة';

  @override
  String get rate_ride_good_points => 'نقاط ايجابية';

  @override
  String get rate_ride_negative_points => 'نقاط سلبية';

  @override
  String get rate_ride_comment_title => 'اضافة تعليق';

  @override
  String get rate_ride_comment_placeholder => 'اكتب تعليقك هنا';

  @override
  String get action_send_feedback => 'ارسال التعليق';

  @override
  String get action_ride_options => 'خيارات الرحلة';

  @override
  String get ride_options_title => 'خيارات الرحلة';

  @override
  String get ride_options_wait_time_action => 'وقت الانتظار';

  @override
  String get ride_safety_title => 'سلامة الرحلة';

  @override
  String get ride_safety_share_trip_information => 'مشاركة معلومات الرحلة';

  @override
  String get ride_safety_sos => 'خطر';

  @override
  String get sos_title => 'اشعار خطر';

  @override
  String get sos_body => 'نرجو استخدام هذه الميزة في اوقات الخطر';

  @override
  String get sos_sent_alert => 'طلب نجدة';

  @override
  String get sos_ok_action => 'خطير جداً';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return '$destination في طريقي إلى .';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return '$mobileNumber ورقم جوالي $lastName $firstName اسمي';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return 'دقيقة $duration وستنتهي خلال $startTime بدآت الرحلة';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'دقيقة $duration الوقت المتوقع';
  }

  @override
  String get announcements_empty_state_title => 'لا اشعارات حتى الآن';

  @override
  String get announcements_empty_state_body => '!من يصير في شيء جديد بنعلمك';

  @override
  String get action_set_location => 'حدد الموقع';

  @override
  String get trip_history_empty_state_title => 'لا بيانات سابقة';

  @override
  String get location_not_found_alert_dialog_title => 'الموقع';

  @override
  String get location_not_found_alert_dialog_body => 'لم يتم الوصول إلى موقعك، نرجو تحديد الموقع اعلاه';

  @override
  String get gift_card_title => 'ادخل رمز الخصم';

  @override
  String get gift_card_body => 'ادخل رمز الخصم';

  @override
  String get gift_card_text_placeholder => 'ادخل رمز الخصم';

  @override
  String get action_apply => 'تطبيق';

  @override
  String get order_status_should_be_arrived => 'على وشك الوصول';

  @override
  String order_status_arriving_in(Object minutes) {
    return ' $minutes يصل خلال';
  }

  @override
  String get message_title_warning => 'تحذير';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return '$fee الإلغاء بعد قبول قائد المركبة قد يعرضك لرسوم';
  }

  @override
  String get confirm => 'التأكيد';

  @override
  String get add_credit_select_payment_method => 'تحديد طريقة الدفع';

  @override
  String get add_credit_custom_credit_placeholder => 'اضف بطاقة الدفع';

  @override
  String get add_credit_custom_credit_text_placeholder => 'تخصيص';

  @override
  String get invoice_item_tip => 'عمولة';

  @override
  String get invoice_item_wallet => 'المحفظة';

  @override
  String get invoice_item_total => 'المجموع';

  @override
  String get add_credit_dialog_title => 'اضف بطاقة';

  @override
  String get add_credit_choose_amount => 'تحديد القيمة';

  @override
  String get action_ride_preferences => 'خيارات الرحلة';

  @override
  String get ride_preferences_title => 'خيارات الرحلة';

  @override
  String get action_confirm_and_continue => 'الموافقة والاستمرار';

  @override
  String get action_see_reserved_rides => 'الحجوزات المستقبلية';

  @override
  String get ride_reserved_dialog_title => 'تم حجز رحلتك';

  @override
  String get ride_reserved_dialog_body => 'يمكنك معرفة رحلاتك المستقبلية';

  @override
  String get alert_coupon_unavailable => 'ليس متوفر';

  @override
  String minutes_format(Object minutes) {
    return '$minutes دقيقة';
  }

  @override
  String get action_back => 'الخلف';

  @override
  String wallet_card_title(Object appName) {
    return '$appName المحفظة';
  }

  @override
  String get action_redeem_gift_card => 'استخدم رمز الخصم';

  @override
  String get order_status_canceled => 'ألغيت';

  @override
  String get action_skip_for_now => 'تخطي في الوقت الراهن';

  @override
  String get onboarding_select_language_title => 'اختار اللغة';

  @override
  String onboarding_first_page_title(Object appName) {
    return 'مرحبًا بك في $appName!';
  }

  @override
  String get onboarding_first_page_body => 'خدمة سيارات الأجرة مصممة لراحتك\n احصل على رحلات مع السائقين المفضلين لديك واختر ما تفضله';

  @override
  String get onboarding_second_page_title => 'تحصل على مكافأة!';

  @override
  String get onboarding_second_page_body => 'احصل على مكافآت إضافية لإحالة صديق وإكمال الرحلات وغيرها الكثير ...';

  @override
  String get onboarding_sign_in_title => 'تسجيل الدخول';

  @override
  String get onboarding_sign_in_body => 'على بعد ثوانٍ قليلة من تسجيل الدخول وبدء رحلة مريحة';

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
