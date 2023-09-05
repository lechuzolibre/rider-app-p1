import 'messages.dart';

/// The translations for Chinese (`zh`).
class SZh extends S {
  SZh([String locale = 'zh']) : super(locale);

  @override
  String get loading => '正在加载';

  @override
  String get wallet_empty_state_message => '没有记录历史。';

  @override
  String get enum_rider_transaction_deduct_order_fee => '订购费';

  @override
  String get enum_rider_transaction_deduct_withdraw => '提取';

  @override
  String get enum_rider_transaction_deduct_correction => '更正';

  @override
  String get enum_unknown => '未知';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => '应用内支付';

  @override
  String get enum_rider_transaction_recharge_gift => '礼物';

  @override
  String get enum_rider_transaction_recharge_correction => '更正';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => '银行转帐';

  @override
  String get top_up_sheet_pay_button => '支付';

  @override
  String get service_selection_book_now => '现在预订';

  @override
  String get action_cancel => '取消';

  @override
  String copyright_notice(Object company) {
    return '版权所有 © $company，保留所有权利。';
  }

  @override
  String get menu_about => '关于';

  @override
  String get menu_login => '登录';

  @override
  String get menu_profile => '轮廓';

  @override
  String get menu_wallet => '钱包';

  @override
  String get menu_trip_history => '旅行历史';

  @override
  String get menu_announcements => '公告';

  @override
  String get menu_saved_locations => '保存的位置';

  @override
  String get action_save => '节省';

  @override
  String get create_address_name_empty_error => '请输入地点名称';

  @override
  String get create_address_title_textfield_hint => '标题';

  @override
  String get action_delete => '删除';

  @override
  String get trip_history_empty_state_message => '没有记录过去的订单。';

  @override
  String get profile_firstname => '名';

  @override
  String get profile_lastname => '姓';

  @override
  String get profile_email => '电子邮件';

  @override
  String get profile_gender => '性别';

  @override
  String get enum_gender_male => '男性';

  @override
  String get enum_gender_female => '女性';

  @override
  String get login_cell_number_textfield_hint => '细胞数量';

  @override
  String get login_cell_number_empty_error => '请以正确的格式输入电话号码';

  @override
  String get action_next => '下一个';

  @override
  String get verify_phone_code_empty_message => '未输入验证码。';

  @override
  String get wallet_activities_heading => '活动';

  @override
  String get menu_logout => '登出';

  @override
  String get enum_gender_unknown => '未知';

  @override
  String get enum_address_type_home => '家';

  @override
  String get enum_address_type_work => '工作';

  @override
  String get enum_address_type_partner => '伙伴';

  @override
  String get enum_address_type_other => '其他';

  @override
  String get message_notification_permission_denined_message => '通知权限之前被拒绝。为了获得新订单的通知，您可以从应用设置中启用权限。';

  @override
  String get message_notification_permission_title => '通知权限';

  @override
  String get action_ok => '好的';

  @override
  String get menu_website => '网站';

  @override
  String get action_confirm_and_reserve_ride => '确认并预订行程';

  @override
  String get title_reserve_ride => '预留乘车';

  @override
  String get error_region_unsupported => '不支持区域。';

  @override
  String get action_confirm => '确认';

  @override
  String get title_wait_time => '等待时间';

  @override
  String get notice_tip_title => '您要添加提示吗？';

  @override
  String get notice_tip_description => '添加小费是可选的。您可以添加任何您喜欢的金额作为司机的小费。';

  @override
  String get action_pay_for_ride => '付车费';

  @override
  String get action_confirm_and_pay => '确认并付款';

  @override
  String get action_add_photo => '添加照片';

  @override
  String get complaint_submit_success_message => '投诉已提交。请等待我们的支持代表就您的询问与您联系。';

  @override
  String get error_field_cant_be_empty => '不能为空';

  @override
  String get issue_description_placeholder => '写下你的问题的描述...';

  @override
  String get issue_subject_placeholder => '主题';

  @override
  String get issue_submit_description => '您可以报告您在骑行过程中遇到的任何问题。我们将在电话中帮助您解决问题。';

  @override
  String get issue_submit_title => '报告问题';

  @override
  String get issue_submit_button => '报告问题';

  @override
  String get trip_information_title => '行程信息';

  @override
  String get payment_in_cash => '现金';

  @override
  String get payment_method_title => '付款方式';

  @override
  String get button_ride_safety => '乘坐安全';

  @override
  String get status_title_driver_arrived => '在接送点与司机会面';

  @override
  String get status_title_trip_started => '前往目的地';

  @override
  String get welcome_card_subtitle => '你要去哪里？';

  @override
  String get welcome_card_textbox_placeholder => '你的目的地在哪里？';

  @override
  String welcome_card_greeting(Object firstName) {
    return '你好 $firstName！';
  }

  @override
  String get login_title => '登入';

  @override
  String get login_body => '首先，您必须登录才能预订您的行程。验证码将发送到您的电话号码。';

  @override
  String get terms_and_condition_text => '我已阅读并同意';

  @override
  String get terms_and_condition_button => '条款和条件';

  @override
  String get login_verify_code_title => '输入代码';

  @override
  String get login_verify_code_body => '代码已发送到您的电话号码';

  @override
  String get action_continue => '继续';

  @override
  String get current_location => '当前位置';

  @override
  String get your_destination => '你的目的地';

  @override
  String get add_stop => '添加停止';

  @override
  String get action_choose_on_map => '在地图上选择';

  @override
  String get message_title_location => '地点';

  @override
  String get message_body_location => '我们无法从您设备的 GPS 中获取您的当前位置。请使用搜索字段选择您的取件地点。';

  @override
  String get menu_reserved_rides => '预约游乐设施';

  @override
  String get reservation_empty_state_title => '无需预订！';

  @override
  String get reservation_empty_state_body => '在主屏幕上进行预订后，您将能够看到未来的预订。';

  @override
  String get action_cancel_ride => '取消行程';

  @override
  String get enum_address_type_gym => '健身房';

  @override
  String get enum_address_type_parent_house => '父母之家';

  @override
  String get enum_address_type_cafe => '咖啡店';

  @override
  String get enum_address_type_park => '公园';

  @override
  String get action_add_favorite_location => '添加收藏位置';

  @override
  String get favorite_locations_list_title => '最喜欢的地点';

  @override
  String get favorite_locations_list_body => '您可以保存您喜欢的位置以便于访问';

  @override
  String get favorite_location_details_title => '命名您最喜欢的位置';

  @override
  String get textbox_error_select_type_address => '请选择地址类型';

  @override
  String get placeholder_type => '类型';

  @override
  String get action_delete_account => '删除帐户';

  @override
  String get message_delete_account_title => '帐户删除';

  @override
  String get message_delete_account_body => '您确定要删除您的帐户吗？您可以在 30 天内再次登录以恢复帐户。在此期间之后，您的数据将被完全删除，包括您所有剩余的信用。';

  @override
  String get action_edit => '编辑';

  @override
  String get action_confirm_location => '确认位置';

  @override
  String get action_coupon_code => '优惠券代码';

  @override
  String get enter_coupon_dialog_title => '优惠券代码';

  @override
  String get enter_coupon_dialog_body => '插入要应用于价格的优惠券代码';

  @override
  String get enter_coupon_placeholder => '输入优惠券代码';

  @override
  String get looking_dialog_title => '请求乘车';

  @override
  String get looking_dialog_body => '我们正在为您寻找最近的司机。';

  @override
  String get action_cancel_request => '取消请求';

  @override
  String get rate_ride_title => '你的骑行怎么样？';

  @override
  String get rate_ride_body => '评价您的司机，帮助我们改善您的体验';

  @override
  String get rate_ride_good_points => '好点';

  @override
  String get rate_ride_negative_points => '负分';

  @override
  String get rate_ride_comment_title => '添加评论';

  @override
  String get rate_ride_comment_placeholder => '写下你的评论...';

  @override
  String get action_send_feedback => '发送反馈';

  @override
  String get action_ride_options => '骑行选项';

  @override
  String get ride_options_title => '骑行选项';

  @override
  String get ride_options_wait_time_action => '等待时间';

  @override
  String get ride_safety_title => '乘坐安全';

  @override
  String get ride_safety_share_trip_information => '分享行程信息';

  @override
  String get ride_safety_sos => '求救';

  @override
  String get sos_title => '求救信号';

  @override
  String get sos_body => '求救信号用于紧急情况，可能会代表您致电警察等当局。请仅在您可能处于危险中的紧急情况下使用此功能。';

  @override
  String get sos_sent_alert => 'SOS 已发送';

  @override
  String get sos_ok_action => '这是紧急情况';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return '我正在从 $pickup 前往 $destination 的路上。';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' 我的司机姓名是 $firstName $lastName，他的手机号码是 +$mobileNumber。';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' 行程已于 $startTime 开始，我预计行程大约需要 $duration 分钟';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' 我预计一旦我上了司机的车，行程本身大约需要 $duration 分钟。';
  }

  @override
  String get announcements_empty_state_title => '暂无公告！';

  @override
  String get announcements_empty_state_body => '当有新的公告时，我们会通知您。';

  @override
  String get action_set_location => '设置位置';

  @override
  String get trip_history_empty_state_title => '没有记录！';

  @override
  String get location_not_found_alert_dialog_title => '地点';

  @override
  String get location_not_found_alert_dialog_body => '我们无法使用您设备的 GPS 获取您的当前位置。请从设备的设置中检查应用程序的设备位置权限。或者，您可以使用上面的搜索字段来选择您的接送点。';

  @override
  String get gift_card_title => '输入礼品码';

  @override
  String get gift_card_body => '输入您的礼品卡代码';

  @override
  String get gift_card_text_placeholder => '输入礼品卡代码';

  @override
  String get action_apply => '申请';

  @override
  String get order_status_should_be_arrived => '应该到达';

  @override
  String order_status_arriving_in(Object minutes) {
    return '$minutes 后到达';
  }

  @override
  String get message_title_warning => '警告';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return '司机接受行程后取消服务将收取 $fee 的取消罚款。你确认吗？';
  }

  @override
  String get confirm => '确认';

  @override
  String get add_credit_select_payment_method => '选择付款方式：';

  @override
  String get add_credit_custom_credit_placeholder => '添加自定义信用';

  @override
  String get add_credit_custom_credit_text_placeholder => '风俗';

  @override
  String get invoice_item_tip => '小费';

  @override
  String get invoice_item_wallet => '钱包';

  @override
  String get invoice_item_total => '全部的';

  @override
  String get add_credit_dialog_title => '添加信用';

  @override
  String get add_credit_choose_amount => '选择金额';

  @override
  String get action_ride_preferences => '乘坐偏好';

  @override
  String get ride_preferences_title => '乘坐偏好';

  @override
  String get action_confirm_and_continue => '确认并继续';

  @override
  String get action_see_reserved_rides => '查看预订的游乐设施';

  @override
  String get ride_reserved_dialog_title => '您的行程已预订。';

  @override
  String get ride_reserved_dialog_body => '您可以在菜单中查看预订的游乐设施，以查看该游乐设施的预订信息。';

  @override
  String get alert_coupon_unavailable => '优惠券不可用';

  @override
  String minutes_format(Object minutes) {
    return '$minutes 分钟';
  }

  @override
  String get action_back => '后退';

  @override
  String wallet_card_title(Object appName) {
    return '$appName 钱包';
  }

  @override
  String get action_redeem_gift_card => '兑换礼品卡';

  @override
  String get order_status_canceled => '取消';

  @override
  String get action_skip_for_now => '暂时跳过';

  @override
  String get onboarding_select_language_title => '选择语言';

  @override
  String onboarding_first_page_title(Object appName) {
    return '欢迎来到 $appName！';
  }

  @override
  String get onboarding_first_page_body => '专为您的舒适而设计的出租车服务\n 与您最喜欢的司机一起旅行并选择您的乘车偏好';

  @override
  String get onboarding_second_page_title => '获得奖励！';

  @override
  String get onboarding_second_page_body => '通过推荐朋友、完成旅行等获得额外奖励......';

  @override
  String get onboarding_sign_in_title => '登入';

  @override
  String get onboarding_sign_in_body => '只需几秒钟即可登录并开始舒适的骑行';

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
