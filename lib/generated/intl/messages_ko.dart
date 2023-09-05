// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
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
  String get localeName => 'ko';

  static String m0(fee) =>
      "운전기사가 여행을 수락한 후 서비스를 취소하는 경우 ${fee} 의 취소 위약금이 부과됩니다. 확인합니까?";

  static String m1(company) => "Copyright © ${company}, All rights reserved.";

  static String m2(distance) => "${distance} ft";

  static String m3(distance) => "${distance} km";

  static String m4(distance) => "${distance} m";

  static String m5(distance) => "${distance} mi";

  static String m6(minutes) => "${minutes} 분";

  static String m7(seconds) => "Resend code in ${seconds} seconds";

  static String m8(appName) => "${appName} 에 오신 것을 환영합니다!";

  static String m9(minutes) => "${minutes} 후에 도착";

  static String m10(duration) =>
      " 운전기사의 차를 타고 이동하는 데 ${duration} 분 정도 소요될 것으로 예상합니다.";

  static String m11(startTime, duration) =>
      " 여행이 ${startTime} 에 시작되었으며 약 ${duration} 분 정도 소요될 것으로 예상됩니다.";

  static String m12(firstName, lastName, mobileNumber) =>
      " 제 드라이버 이름은 ${firstName} ${lastName} 이고 그의 휴대폰 번호는 +${mobileNumber} 입니다.";

  static String m13(destination, pickup) =>
      "${pickup} 에서 ${destination} 으로 가는 중입니다.";

  static String m14(appName) => "${appName} 지갑";

  static String m15(firstName) => "안녕하세요 ${firstName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_favorite_location":
            MessageLookupByLibrary.simpleMessage("즐겨찾는 위치 추가"),
        "action_add_photo": MessageLookupByLibrary.simpleMessage("사진 추가"),
        "action_apply": MessageLookupByLibrary.simpleMessage("적용하다"),
        "action_back": MessageLookupByLibrary.simpleMessage("뒤"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("취소"),
        "action_cancel_request": MessageLookupByLibrary.simpleMessage("요청 취소"),
        "action_cancel_ride": MessageLookupByLibrary.simpleMessage("승차 취소"),
        "action_choose_on_map": MessageLookupByLibrary.simpleMessage("지도에서 선택"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("확인하다"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("확인 및 계속"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("확인 및 지불"),
        "action_confirm_and_reserve_ride":
            MessageLookupByLibrary.simpleMessage("승차 확인 및 예약"),
        "action_confirm_location":
            MessageLookupByLibrary.simpleMessage("위치 확인"),
        "action_continue": MessageLookupByLibrary.simpleMessage("계속하다"),
        "action_coupon_code": MessageLookupByLibrary.simpleMessage("쿠폰 코드"),
        "action_delete": MessageLookupByLibrary.simpleMessage("삭제"),
        "action_delete_account": MessageLookupByLibrary.simpleMessage("계정 삭제"),
        "action_edit": MessageLookupByLibrary.simpleMessage("편집하다"),
        "action_next": MessageLookupByLibrary.simpleMessage("다음"),
        "action_ok": MessageLookupByLibrary.simpleMessage("확인"),
        "action_pay_for_ride": MessageLookupByLibrary.simpleMessage("요금 지불"),
        "action_redeem_gift_card":
            MessageLookupByLibrary.simpleMessage("기프트 카드 사용"),
        "action_resend_code":
            MessageLookupByLibrary.simpleMessage("Resend Code"),
        "action_ride_options": MessageLookupByLibrary.simpleMessage("라이드 옵션"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("라이드 기본 설정"),
        "action_save": MessageLookupByLibrary.simpleMessage("구하다"),
        "action_see_reserved_rides":
            MessageLookupByLibrary.simpleMessage("예약된 놀이기구 보기"),
        "action_send_feedback": MessageLookupByLibrary.simpleMessage("피드백 보내기"),
        "action_set_location": MessageLookupByLibrary.simpleMessage("위치 설정"),
        "action_skip_for_now": MessageLookupByLibrary.simpleMessage("일단은 스킵"),
        "add_credit_choose_amount":
            MessageLookupByLibrary.simpleMessage("금액 선택"),
        "add_credit_custom_credit_placeholder":
            MessageLookupByLibrary.simpleMessage("맞춤 크레딧 추가"),
        "add_credit_custom_credit_text_placeholder":
            MessageLookupByLibrary.simpleMessage("관습"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("크레딧 추가"),
        "add_credit_select_payment_method":
            MessageLookupByLibrary.simpleMessage("지불 방법 선택:"),
        "add_stop": MessageLookupByLibrary.simpleMessage("경유지 추가"),
        "alert_coupon_unavailable":
            MessageLookupByLibrary.simpleMessage("쿠폰을 사용할 수 없습니다."),
        "announcements_empty_state_body":
            MessageLookupByLibrary.simpleMessage("새로운 공지사항이 나오면 알려드리겠습니다."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("아직 공지가 없습니다!"),
        "button_ride_safety": MessageLookupByLibrary.simpleMessage("승차 안전"),
        "cancelation_fee_confirmation_body": m0,
        "complaint_submit_error_message": MessageLookupByLibrary.simpleMessage(
            "The submission of your complaint was unsuccessful, likely due to connectivity issues. Please try again."),
        "complaint_submit_success_message":
            MessageLookupByLibrary.simpleMessage(
                "불만 사항이 제출되었습니다. 귀하의 문의에 대한 지원 담당자의 연락을 기다리십시오."),
        "confirm": MessageLookupByLibrary.simpleMessage("확인하다"),
        "copyright_notice": m1,
        "create_address_name_empty_error":
            MessageLookupByLibrary.simpleMessage("위치 이름을 입력하세요."),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("제목"),
        "current_location": MessageLookupByLibrary.simpleMessage("현재 위치"),
        "distanceFeet": m2,
        "distanceKm": m3,
        "distanceMeters": m4,
        "distanceMiles": m5,
        "enter_coupon_dialog_body":
            MessageLookupByLibrary.simpleMessage("가격에 적용할 쿠폰 코드를 입력하세요."),
        "enter_coupon_dialog_title":
            MessageLookupByLibrary.simpleMessage("쿠폰 코드"),
        "enter_coupon_placeholder":
            MessageLookupByLibrary.simpleMessage("쿠폰 코드 입력"),
        "enum_address_type_cafe": MessageLookupByLibrary.simpleMessage("카페"),
        "enum_address_type_gym": MessageLookupByLibrary.simpleMessage("체육관"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("집"),
        "enum_address_type_other": MessageLookupByLibrary.simpleMessage("다른"),
        "enum_address_type_parent_house":
            MessageLookupByLibrary.simpleMessage("부모의 집"),
        "enum_address_type_park": MessageLookupByLibrary.simpleMessage("공원"),
        "enum_address_type_partner":
            MessageLookupByLibrary.simpleMessage("파트너"),
        "enum_address_type_work": MessageLookupByLibrary.simpleMessage("일하다"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("여성"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("남성"),
        "enum_gender_unknown": MessageLookupByLibrary.simpleMessage("알려지지 않은"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("보정"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("주문 수수료"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("철회하다"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("은행 송금"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("보정"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("선물"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("인앱 결제"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("불명"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("비워둘 수 없습니다."),
        "error_region_unsupported":
            MessageLookupByLibrary.simpleMessage("지역이 지원되지 않습니다."),
        "favorite_location_details_title":
            MessageLookupByLibrary.simpleMessage("좋아하는 위치 이름 지정"),
        "favorite_locations_list_body": MessageLookupByLibrary.simpleMessage(
            "더 쉽게 액세스할 수 있도록 즐겨찾는 위치를 저장할 수 있습니다."),
        "favorite_locations_list_title":
            MessageLookupByLibrary.simpleMessage("즐겨찾는 위치"),
        "gift_card_body":
            MessageLookupByLibrary.simpleMessage("기프트 카드 코드를 입력하세요."),
        "gift_card_text_placeholder":
            MessageLookupByLibrary.simpleMessage("기프트 카드 코드 입력"),
        "gift_card_title": MessageLookupByLibrary.simpleMessage("기프트 코드 입력"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("팁"),
        "invoice_item_total": MessageLookupByLibrary.simpleMessage("총"),
        "invoice_item_wallet": MessageLookupByLibrary.simpleMessage("지갑"),
        "issue_description_placeholder":
            MessageLookupByLibrary.simpleMessage("문제에 대한 설명을 작성하세요..."),
        "issue_subject_placeholder": MessageLookupByLibrary.simpleMessage("주제"),
        "issue_submit_button": MessageLookupByLibrary.simpleMessage("문제 신고"),
        "issue_submit_description": MessageLookupByLibrary.simpleMessage(
            "라이드와 관련된 모든 문제를 신고할 수 있습니다. 통화 내에서 문제를 도와드리겠습니다."),
        "issue_submit_title": MessageLookupByLibrary.simpleMessage("문제 신고"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "loading": MessageLookupByLibrary.simpleMessage("로딩 중"),
        "location_not_found_alert_dialog_body":
            MessageLookupByLibrary.simpleMessage(
                "장치의 GPS를 사용하여 현재 위치를 가져올 수 없습니다. 기기 설정에서 앱에 대한 기기 위치 권한을 확인하세요. 또는 위의 검색 필드를 사용하여 픽업 지점을 선택할 수 있습니다."),
        "location_not_found_alert_dialog_title":
            MessageLookupByLibrary.simpleMessage("위치"),
        "login_body": MessageLookupByLibrary.simpleMessage(
            "먼저 라이드를 예약하려면 로그인해야 합니다. 인증 코드가 귀하의 전화번호로 전송됩니다."),
        "login_cell_number_empty_error":
            MessageLookupByLibrary.simpleMessage("전화번호를 올바른 형식으로 입력하세요."),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("셀 번호"),
        "login_enter_phone_subtitle": MessageLookupByLibrary.simpleMessage(
            "To begin booking your ride, please sign in first. We will then send a code to your phone number."),
        "login_title": MessageLookupByLibrary.simpleMessage("로그인"),
        "login_verify_code_body":
            MessageLookupByLibrary.simpleMessage("코드가 귀하의 전화번호로 전송되었습니다"),
        "login_verify_code_title":
            MessageLookupByLibrary.simpleMessage("코드를 입력"),
        "looking_dialog_body":
            MessageLookupByLibrary.simpleMessage("가장 가까운 운전기사를 찾고 있습니다."),
        "looking_dialog_title": MessageLookupByLibrary.simpleMessage("라이드 요청"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("에 대한"),
        "menu_announcements": MessageLookupByLibrary.simpleMessage("공지사항"),
        "menu_login": MessageLookupByLibrary.simpleMessage("로그인"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("로그 아웃"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("프로필"),
        "menu_reserved_rides": MessageLookupByLibrary.simpleMessage("예약된 놀이기구"),
        "menu_saved_locations": MessageLookupByLibrary.simpleMessage("저장된 위치"),
        "menu_trip_history": MessageLookupByLibrary.simpleMessage("여행 이력"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("지갑"),
        "menu_website": MessageLookupByLibrary.simpleMessage("웹사이트"),
        "message_body_location": MessageLookupByLibrary.simpleMessage(
            "기기의 GPS에서 현재 위치를 가져올 수 없습니다. 검색 필드를 사용하여 픽업 위치를 선택하십시오."),
        "message_delete_account_body": MessageLookupByLibrary.simpleMessage(
            "계정을 삭제하시겠습니까? 30일 이내에 다시 로그인하여 계정을 복원할 수 있습니다. 이 기간이 지나면 남은 크레딧을 포함하여 데이터가 완전히 제거됩니다."),
        "message_delete_account_title":
            MessageLookupByLibrary.simpleMessage("계정 삭제"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "이전에 알림 권한이 거부되었습니다. 새로운 주문 알림을 받기 위해 앱 설정에서 권한을 활성화할 수 있습니다."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("알림 권한"),
        "message_title_location": MessageLookupByLibrary.simpleMessage("위치"),
        "message_title_warning": MessageLookupByLibrary.simpleMessage("경고"),
        "minutes_format": m6,
        "notice_resend_code_in_seconds": m7,
        "notice_tip_description": MessageLookupByLibrary.simpleMessage(
            "팁 추가는 선택 사항입니다. 운전자를 위한 팁으로 원하는 만큼 추가할 수 있습니다."),
        "notice_tip_title":
            MessageLookupByLibrary.simpleMessage("팁을 추가하시겠습니까?"),
        "onboarding_first_page_body": MessageLookupByLibrary.simpleMessage(
            "당신의 편안함을 위해 설계된 택시 서비스\n 좋아하는 드라이버와 여행을 하고 선호하는 라이드를 선택하세요."),
        "onboarding_first_page_title": m8,
        "onboarding_second_page_body": MessageLookupByLibrary.simpleMessage(
            "친구 추천, 여행 완료 등을 위한 추가 보너스를 받으세요..."),
        "onboarding_second_page_title":
            MessageLookupByLibrary.simpleMessage("보상을 받다!"),
        "onboarding_select_language_title":
            MessageLookupByLibrary.simpleMessage("언어 선택"),
        "onboarding_sign_in_body":
            MessageLookupByLibrary.simpleMessage("로그인하고 편안한 라이딩을 시작하기 몇 초 후"),
        "onboarding_sign_in_title": MessageLookupByLibrary.simpleMessage("로그인"),
        "order_status_arriving_in": m9,
        "order_status_canceled": MessageLookupByLibrary.simpleMessage("취소 된"),
        "order_status_should_be_arrived":
            MessageLookupByLibrary.simpleMessage("도착해야"),
        "payment_in_cash": MessageLookupByLibrary.simpleMessage("현금"),
        "payment_method_title": MessageLookupByLibrary.simpleMessage("지불 방법"),
        "placeholder_type": MessageLookupByLibrary.simpleMessage("유형"),
        "profile_email": MessageLookupByLibrary.simpleMessage("이메일"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("이름"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("성별"),
        "profile_lastname": MessageLookupByLibrary.simpleMessage("성"),
        "rate_ride_body": MessageLookupByLibrary.simpleMessage(
            "드라이버를 평가하여 경험을 개선할 수 있도록 도와주세요."),
        "rate_ride_comment_placeholder":
            MessageLookupByLibrary.simpleMessage("귀하의 의견을 작성 ..."),
        "rate_ride_comment_title":
            MessageLookupByLibrary.simpleMessage("댓글 추가"),
        "rate_ride_good_points":
            MessageLookupByLibrary.simpleMessage("나이스 포인트"),
        "rate_ride_negative_points":
            MessageLookupByLibrary.simpleMessage("마이너스 포인트"),
        "rate_ride_title": MessageLookupByLibrary.simpleMessage("승차감은 어땠나요?"),
        "register_title_name": MessageLookupByLibrary.simpleMessage("Name"),
        "register_title_verify_number":
            MessageLookupByLibrary.simpleMessage("Verify number"),
        "reservation_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "메인 화면에서 예약을 완료하면 향후 예약을 볼 수 있습니다."),
        "reservation_empty_state_title":
            MessageLookupByLibrary.simpleMessage("예약 불가!"),
        "ride_options_title": MessageLookupByLibrary.simpleMessage("라이드 옵션"),
        "ride_options_wait_time_action":
            MessageLookupByLibrary.simpleMessage("기다리는 시간"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("라이드 기본 설정"),
        "ride_reserved_dialog_body": MessageLookupByLibrary.simpleMessage(
            "메뉴에서 예약된 놀이기구를 확인하여 해당 놀이기구의 예약 정보를 볼 수 있습니다."),
        "ride_reserved_dialog_title":
            MessageLookupByLibrary.simpleMessage("당신의 라이드는 예약되어 있습니다."),
        "ride_safety_share_trip_information":
            MessageLookupByLibrary.simpleMessage("여행 정보 공유"),
        "ride_safety_sos": MessageLookupByLibrary.simpleMessage("위급 신호"),
        "ride_safety_title": MessageLookupByLibrary.simpleMessage("승차 안전"),
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("지금 예약"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_trip_not_arrived_time": m10,
        "share_trip_started_time": m11,
        "share_trip_text_driver": m12,
        "share_trip_text_locations": m13,
        "sos_body": MessageLookupByLibrary.simpleMessage(
            "조난 신호는 긴급 상황을 위한 것이며 경찰과 같은 당국에 전화를 걸 수 있습니다. 위험에 처할 수 있는 긴급 상황에서만 이 기능을 사용하십시오."),
        "sos_ok_action": MessageLookupByLibrary.simpleMessage("비상이다"),
        "sos_send_error": MessageLookupByLibrary.simpleMessage(
            "There was a problem encountered while attempting to send your SOS signal. Please make another attempt or contact 911 directly."),
        "sos_sent_alert": MessageLookupByLibrary.simpleMessage("SOS를 보낸다"),
        "sos_title": MessageLookupByLibrary.simpleMessage("조난 신호"),
        "status_title_driver_arrived":
            MessageLookupByLibrary.simpleMessage("픽업 지점에서 운전기사를 만나세요."),
        "status_title_trip_started":
            MessageLookupByLibrary.simpleMessage("목적지로 향하는 중"),
        "terms_and_condition_button":
            MessageLookupByLibrary.simpleMessage("이용약관"),
        "terms_and_condition_text":
            MessageLookupByLibrary.simpleMessage("나는 읽었고 동의합니다"),
        "textbox_error_select_type_address":
            MessageLookupByLibrary.simpleMessage("주소 유형을 선택하세요."),
        "title_reserve_ride": MessageLookupByLibrary.simpleMessage("예약 라이드"),
        "title_wait_time": MessageLookupByLibrary.simpleMessage("기다리는 시간"),
        "top_up_sheet_pay_button": MessageLookupByLibrary.simpleMessage("지불"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage("기록된 과거 주문이 없습니다."),
        "trip_history_empty_state_title":
            MessageLookupByLibrary.simpleMessage("기록이 없습니다!"),
        "trip_information_title": MessageLookupByLibrary.simpleMessage("여행 정보"),
        "verify_phone_code_empty_message":
            MessageLookupByLibrary.simpleMessage("인증 코드가 입력되지 않았습니다."),
        "wallet_activities_heading": MessageLookupByLibrary.simpleMessage("활동"),
        "wallet_card_title": m14,
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("기록된 기록이 없습니다."),
        "welcome_card_greeting": m15,
        "welcome_card_subtitle":
            MessageLookupByLibrary.simpleMessage("어디 가세요?"),
        "welcome_card_textbox_placeholder":
            MessageLookupByLibrary.simpleMessage("목적지는 어디입니까?"),
        "your_destination": MessageLookupByLibrary.simpleMessage("목적지")
      };
}
