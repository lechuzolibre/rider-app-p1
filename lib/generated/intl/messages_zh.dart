// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
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
  String get localeName => 'zh';

  static String m0(fee) => "司机接受行程后取消服务将收取 ${fee} 的取消罚款。你确认吗？";

  static String m1(company) => "版权所有 © ${company}，保留所有权利。";

  static String m2(distance) => "${distance} ft";

  static String m3(distance) => "${distance} km";

  static String m4(distance) => "${distance} m";

  static String m5(distance) => "${distance} mi";

  static String m6(minutes) => "${minutes} 分钟";

  static String m7(seconds) => "Resend code in ${seconds} seconds";

  static String m8(appName) => "欢迎来到 ${appName}！";

  static String m9(minutes) => "${minutes} 后到达";

  static String m10(duration) => " 我预计一旦我上了司机的车，行程本身大约需要 ${duration} 分钟。";

  static String m11(startTime, duration) =>
      " 行程已于 ${startTime} 开始，我预计行程大约需要 ${duration} 分钟";

  static String m12(firstName, lastName, mobileNumber) =>
      " 我的司机姓名是 ${firstName} ${lastName}，他的手机号码是 +${mobileNumber}。";

  static String m13(destination, pickup) =>
      "我正在从 ${pickup} 前往 ${destination} 的路上。";

  static String m14(appName) => "${appName} 钱包";

  static String m15(firstName) => "你好 ${firstName}！";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_favorite_location":
            MessageLookupByLibrary.simpleMessage("添加收藏位置"),
        "action_add_photo": MessageLookupByLibrary.simpleMessage("添加照片"),
        "action_apply": MessageLookupByLibrary.simpleMessage("申请"),
        "action_back": MessageLookupByLibrary.simpleMessage("后退"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "action_cancel_request": MessageLookupByLibrary.simpleMessage("取消请求"),
        "action_cancel_ride": MessageLookupByLibrary.simpleMessage("取消行程"),
        "action_choose_on_map": MessageLookupByLibrary.simpleMessage("在地图上选择"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("确认"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("确认并继续"),
        "action_confirm_and_pay": MessageLookupByLibrary.simpleMessage("确认并付款"),
        "action_confirm_and_reserve_ride":
            MessageLookupByLibrary.simpleMessage("确认并预订行程"),
        "action_confirm_location": MessageLookupByLibrary.simpleMessage("确认位置"),
        "action_continue": MessageLookupByLibrary.simpleMessage("继续"),
        "action_coupon_code": MessageLookupByLibrary.simpleMessage("优惠券代码"),
        "action_delete": MessageLookupByLibrary.simpleMessage("删除"),
        "action_delete_account": MessageLookupByLibrary.simpleMessage("删除帐户"),
        "action_edit": MessageLookupByLibrary.simpleMessage("编辑"),
        "action_next": MessageLookupByLibrary.simpleMessage("下一个"),
        "action_ok": MessageLookupByLibrary.simpleMessage("好的"),
        "action_pay_for_ride": MessageLookupByLibrary.simpleMessage("付车费"),
        "action_redeem_gift_card":
            MessageLookupByLibrary.simpleMessage("兑换礼品卡"),
        "action_resend_code":
            MessageLookupByLibrary.simpleMessage("Resend Code"),
        "action_ride_options": MessageLookupByLibrary.simpleMessage("骑行选项"),
        "action_ride_preferences": MessageLookupByLibrary.simpleMessage("乘坐偏好"),
        "action_save": MessageLookupByLibrary.simpleMessage("节省"),
        "action_see_reserved_rides":
            MessageLookupByLibrary.simpleMessage("查看预订的游乐设施"),
        "action_send_feedback": MessageLookupByLibrary.simpleMessage("发送反馈"),
        "action_set_location": MessageLookupByLibrary.simpleMessage("设置位置"),
        "action_skip_for_now": MessageLookupByLibrary.simpleMessage("暂时跳过"),
        "add_credit_choose_amount":
            MessageLookupByLibrary.simpleMessage("选择金额"),
        "add_credit_custom_credit_placeholder":
            MessageLookupByLibrary.simpleMessage("添加自定义信用"),
        "add_credit_custom_credit_text_placeholder":
            MessageLookupByLibrary.simpleMessage("风俗"),
        "add_credit_dialog_title": MessageLookupByLibrary.simpleMessage("添加信用"),
        "add_credit_select_payment_method":
            MessageLookupByLibrary.simpleMessage("选择付款方式："),
        "add_stop": MessageLookupByLibrary.simpleMessage("添加停止"),
        "alert_coupon_unavailable":
            MessageLookupByLibrary.simpleMessage("优惠券不可用"),
        "announcements_empty_state_body":
            MessageLookupByLibrary.simpleMessage("当有新的公告时，我们会通知您。"),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("暂无公告！"),
        "button_ride_safety": MessageLookupByLibrary.simpleMessage("乘坐安全"),
        "cancelation_fee_confirmation_body": m0,
        "complaint_submit_error_message": MessageLookupByLibrary.simpleMessage(
            "The submission of your complaint was unsuccessful, likely due to connectivity issues. Please try again."),
        "complaint_submit_success_message":
            MessageLookupByLibrary.simpleMessage("投诉已提交。请等待我们的支持代表就您的询问与您联系。"),
        "confirm": MessageLookupByLibrary.simpleMessage("确认"),
        "copyright_notice": m1,
        "create_address_name_empty_error":
            MessageLookupByLibrary.simpleMessage("请输入地点名称"),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("标题"),
        "current_location": MessageLookupByLibrary.simpleMessage("当前位置"),
        "distanceFeet": m2,
        "distanceKm": m3,
        "distanceMeters": m4,
        "distanceMiles": m5,
        "enter_coupon_dialog_body":
            MessageLookupByLibrary.simpleMessage("插入要应用于价格的优惠券代码"),
        "enter_coupon_dialog_title":
            MessageLookupByLibrary.simpleMessage("优惠券代码"),
        "enter_coupon_placeholder":
            MessageLookupByLibrary.simpleMessage("输入优惠券代码"),
        "enum_address_type_cafe": MessageLookupByLibrary.simpleMessage("咖啡店"),
        "enum_address_type_gym": MessageLookupByLibrary.simpleMessage("健身房"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("家"),
        "enum_address_type_other": MessageLookupByLibrary.simpleMessage("其他"),
        "enum_address_type_parent_house":
            MessageLookupByLibrary.simpleMessage("父母之家"),
        "enum_address_type_park": MessageLookupByLibrary.simpleMessage("公园"),
        "enum_address_type_partner": MessageLookupByLibrary.simpleMessage("伙伴"),
        "enum_address_type_work": MessageLookupByLibrary.simpleMessage("工作"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("女性"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("男性"),
        "enum_gender_unknown": MessageLookupByLibrary.simpleMessage("未知"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("更正"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("订购费"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("提取"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("银行转帐"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("更正"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("礼物"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("应用内支付"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("未知"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("不能为空"),
        "error_region_unsupported":
            MessageLookupByLibrary.simpleMessage("不支持区域。"),
        "favorite_location_details_title":
            MessageLookupByLibrary.simpleMessage("命名您最喜欢的位置"),
        "favorite_locations_list_body":
            MessageLookupByLibrary.simpleMessage("您可以保存您喜欢的位置以便于访问"),
        "favorite_locations_list_title":
            MessageLookupByLibrary.simpleMessage("最喜欢的地点"),
        "gift_card_body": MessageLookupByLibrary.simpleMessage("输入您的礼品卡代码"),
        "gift_card_text_placeholder":
            MessageLookupByLibrary.simpleMessage("输入礼品卡代码"),
        "gift_card_title": MessageLookupByLibrary.simpleMessage("输入礼品码"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("小费"),
        "invoice_item_total": MessageLookupByLibrary.simpleMessage("全部的"),
        "invoice_item_wallet": MessageLookupByLibrary.simpleMessage("钱包"),
        "issue_description_placeholder":
            MessageLookupByLibrary.simpleMessage("写下你的问题的描述..."),
        "issue_subject_placeholder": MessageLookupByLibrary.simpleMessage("主题"),
        "issue_submit_button": MessageLookupByLibrary.simpleMessage("报告问题"),
        "issue_submit_description": MessageLookupByLibrary.simpleMessage(
            "您可以报告您在骑行过程中遇到的任何问题。我们将在电话中帮助您解决问题。"),
        "issue_submit_title": MessageLookupByLibrary.simpleMessage("报告问题"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "loading": MessageLookupByLibrary.simpleMessage("正在加载"),
        "location_not_found_alert_dialog_body":
            MessageLookupByLibrary.simpleMessage(
                "我们无法使用您设备的 GPS 获取您的当前位置。请从设备的设置中检查应用程序的设备位置权限。或者，您可以使用上面的搜索字段来选择您的接送点。"),
        "location_not_found_alert_dialog_title":
            MessageLookupByLibrary.simpleMessage("地点"),
        "login_body": MessageLookupByLibrary.simpleMessage(
            "首先，您必须登录才能预订您的行程。验证码将发送到您的电话号码。"),
        "login_cell_number_empty_error":
            MessageLookupByLibrary.simpleMessage("请以正确的格式输入电话号码"),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("细胞数量"),
        "login_enter_phone_subtitle": MessageLookupByLibrary.simpleMessage(
            "To begin booking your ride, please sign in first. We will then send a code to your phone number."),
        "login_title": MessageLookupByLibrary.simpleMessage("登入"),
        "login_verify_code_body":
            MessageLookupByLibrary.simpleMessage("代码已发送到您的电话号码"),
        "login_verify_code_title": MessageLookupByLibrary.simpleMessage("输入代码"),
        "looking_dialog_body":
            MessageLookupByLibrary.simpleMessage("我们正在为您寻找最近的司机。"),
        "looking_dialog_title": MessageLookupByLibrary.simpleMessage("请求乘车"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("关于"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("公告"),
        "menu_login": MessageLookupByLibrary.simpleMessage("登录"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("登出"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("轮廓"),
        "menu_reserved_rides": MessageLookupByLibrary.simpleMessage("预约游乐设施"),
        "menu_saved_locations": MessageLookupByLibrary.simpleMessage("保存的位置"),
        "menu_trip_history": MessageLookupByLibrary.simpleMessage("旅行历史"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("钱包"),
        "menu_website": MessageLookupByLibrary.simpleMessage("网站"),
        "message_body_location": MessageLookupByLibrary.simpleMessage(
            "我们无法从您设备的 GPS 中获取您的当前位置。请使用搜索字段选择您的取件地点。"),
        "message_delete_account_body": MessageLookupByLibrary.simpleMessage(
            "您确定要删除您的帐户吗？您可以在 30 天内再次登录以恢复帐户。在此期间之后，您的数据将被完全删除，包括您所有剩余的信用。"),
        "message_delete_account_title":
            MessageLookupByLibrary.simpleMessage("帐户删除"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "通知权限之前被拒绝。为了获得新订单的通知，您可以从应用设置中启用权限。"),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("通知权限"),
        "message_title_location": MessageLookupByLibrary.simpleMessage("地点"),
        "message_title_warning": MessageLookupByLibrary.simpleMessage("警告"),
        "minutes_format": m6,
        "notice_resend_code_in_seconds": m7,
        "notice_tip_description": MessageLookupByLibrary.simpleMessage(
            "添加小费是可选的。您可以添加任何您喜欢的金额作为司机的小费。"),
        "notice_tip_title": MessageLookupByLibrary.simpleMessage("您要添加提示吗？"),
        "onboarding_first_page_body": MessageLookupByLibrary.simpleMessage(
            "专为您的舒适而设计的出租车服务\n 与您最喜欢的司机一起旅行并选择您的乘车偏好"),
        "onboarding_first_page_title": m8,
        "onboarding_second_page_body":
            MessageLookupByLibrary.simpleMessage("通过推荐朋友、完成旅行等获得额外奖励......"),
        "onboarding_second_page_title":
            MessageLookupByLibrary.simpleMessage("获得奖励！"),
        "onboarding_select_language_title":
            MessageLookupByLibrary.simpleMessage("选择语言"),
        "onboarding_sign_in_body":
            MessageLookupByLibrary.simpleMessage("只需几秒钟即可登录并开始舒适的骑行"),
        "onboarding_sign_in_title": MessageLookupByLibrary.simpleMessage("登入"),
        "order_status_arriving_in": m9,
        "order_status_canceled": MessageLookupByLibrary.simpleMessage("取消"),
        "order_status_should_be_arrived":
            MessageLookupByLibrary.simpleMessage("应该到达"),
        "payment_in_cash": MessageLookupByLibrary.simpleMessage("现金"),
        "payment_method_title": MessageLookupByLibrary.simpleMessage("付款方式"),
        "placeholder_type": MessageLookupByLibrary.simpleMessage("类型"),
        "profile_email": MessageLookupByLibrary.simpleMessage("电子邮件"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("名"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("性别"),
        "profile_lastname": MessageLookupByLibrary.simpleMessage("姓"),
        "rate_ride_body":
            MessageLookupByLibrary.simpleMessage("评价您的司机，帮助我们改善您的体验"),
        "rate_ride_comment_placeholder":
            MessageLookupByLibrary.simpleMessage("写下你的评论..."),
        "rate_ride_comment_title": MessageLookupByLibrary.simpleMessage("添加评论"),
        "rate_ride_good_points": MessageLookupByLibrary.simpleMessage("好点"),
        "rate_ride_negative_points": MessageLookupByLibrary.simpleMessage("负分"),
        "rate_ride_title": MessageLookupByLibrary.simpleMessage("你的骑行怎么样？"),
        "register_title_name": MessageLookupByLibrary.simpleMessage("Name"),
        "register_title_verify_number":
            MessageLookupByLibrary.simpleMessage("Verify number"),
        "reservation_empty_state_body":
            MessageLookupByLibrary.simpleMessage("在主屏幕上进行预订后，您将能够看到未来的预订。"),
        "reservation_empty_state_title":
            MessageLookupByLibrary.simpleMessage("无需预订！"),
        "ride_options_title": MessageLookupByLibrary.simpleMessage("骑行选项"),
        "ride_options_wait_time_action":
            MessageLookupByLibrary.simpleMessage("等待时间"),
        "ride_preferences_title": MessageLookupByLibrary.simpleMessage("乘坐偏好"),
        "ride_reserved_dialog_body": MessageLookupByLibrary.simpleMessage(
            "您可以在菜单中查看预订的游乐设施，以查看该游乐设施的预订信息。"),
        "ride_reserved_dialog_title":
            MessageLookupByLibrary.simpleMessage("您的行程已预订。"),
        "ride_safety_share_trip_information":
            MessageLookupByLibrary.simpleMessage("分享行程信息"),
        "ride_safety_sos": MessageLookupByLibrary.simpleMessage("求救"),
        "ride_safety_title": MessageLookupByLibrary.simpleMessage("乘坐安全"),
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("现在预订"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_trip_not_arrived_time": m10,
        "share_trip_started_time": m11,
        "share_trip_text_driver": m12,
        "share_trip_text_locations": m13,
        "sos_body": MessageLookupByLibrary.simpleMessage(
            "求救信号用于紧急情况，可能会代表您致电警察等当局。请仅在您可能处于危险中的紧急情况下使用此功能。"),
        "sos_ok_action": MessageLookupByLibrary.simpleMessage("这是紧急情况"),
        "sos_send_error": MessageLookupByLibrary.simpleMessage(
            "There was a problem encountered while attempting to send your SOS signal. Please make another attempt or contact 911 directly."),
        "sos_sent_alert": MessageLookupByLibrary.simpleMessage("SOS 已发送"),
        "sos_title": MessageLookupByLibrary.simpleMessage("求救信号"),
        "status_title_driver_arrived":
            MessageLookupByLibrary.simpleMessage("在接送点与司机会面"),
        "status_title_trip_started":
            MessageLookupByLibrary.simpleMessage("前往目的地"),
        "terms_and_condition_button":
            MessageLookupByLibrary.simpleMessage("条款和条件"),
        "terms_and_condition_text":
            MessageLookupByLibrary.simpleMessage("我已阅读并同意"),
        "textbox_error_select_type_address":
            MessageLookupByLibrary.simpleMessage("请选择地址类型"),
        "title_reserve_ride": MessageLookupByLibrary.simpleMessage("预留乘车"),
        "title_wait_time": MessageLookupByLibrary.simpleMessage("等待时间"),
        "top_up_sheet_pay_button": MessageLookupByLibrary.simpleMessage("支付"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage("没有记录过去的订单。"),
        "trip_history_empty_state_title":
            MessageLookupByLibrary.simpleMessage("没有记录！"),
        "trip_information_title": MessageLookupByLibrary.simpleMessage("行程信息"),
        "verify_phone_code_empty_message":
            MessageLookupByLibrary.simpleMessage("未输入验证码。"),
        "wallet_activities_heading": MessageLookupByLibrary.simpleMessage("活动"),
        "wallet_card_title": m14,
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("没有记录历史。"),
        "welcome_card_greeting": m15,
        "welcome_card_subtitle": MessageLookupByLibrary.simpleMessage("你要去哪里？"),
        "welcome_card_textbox_placeholder":
            MessageLookupByLibrary.simpleMessage("你的目的地在哪里？"),
        "your_destination": MessageLookupByLibrary.simpleMessage("你的目的地")
      };
}
