import 'messages.dart';

/// The translations for Korean (`ko`).
class SKo extends S {
  SKo([String locale = 'ko']) : super(locale);

  @override
  String get loading => '로딩 중';

  @override
  String get wallet_empty_state_message => '기록된 기록이 없습니다.';

  @override
  String get enum_rider_transaction_deduct_order_fee => '주문 수수료';

  @override
  String get enum_rider_transaction_deduct_withdraw => '철회하다';

  @override
  String get enum_rider_transaction_deduct_correction => '보정';

  @override
  String get enum_unknown => '불명';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => '인앱 결제';

  @override
  String get enum_rider_transaction_recharge_gift => '선물';

  @override
  String get enum_rider_transaction_recharge_correction => '보정';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => '은행 송금';

  @override
  String get top_up_sheet_pay_button => '지불';

  @override
  String get service_selection_book_now => '지금 예약';

  @override
  String get action_cancel => '취소';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, All rights reserved.';
  }

  @override
  String get menu_about => '에 대한';

  @override
  String get menu_login => '로그인';

  @override
  String get menu_profile => '프로필';

  @override
  String get menu_wallet => '지갑';

  @override
  String get menu_trip_history => '여행 이력';

  @override
  String get menu_announcements => '공지사항';

  @override
  String get menu_saved_locations => '저장된 위치';

  @override
  String get action_save => '구하다';

  @override
  String get create_address_name_empty_error => '위치 이름을 입력하세요.';

  @override
  String get create_address_title_textfield_hint => '제목';

  @override
  String get action_delete => '삭제';

  @override
  String get trip_history_empty_state_message => '기록된 과거 주문이 없습니다.';

  @override
  String get profile_firstname => '이름';

  @override
  String get profile_lastname => '성';

  @override
  String get profile_email => '이메일';

  @override
  String get profile_gender => '성별';

  @override
  String get enum_gender_male => '남성';

  @override
  String get enum_gender_female => '여성';

  @override
  String get login_cell_number_textfield_hint => '셀 번호';

  @override
  String get login_cell_number_empty_error => '전화번호를 올바른 형식으로 입력하세요.';

  @override
  String get action_next => '다음';

  @override
  String get verify_phone_code_empty_message => '인증 코드가 입력되지 않았습니다.';

  @override
  String get wallet_activities_heading => '활동';

  @override
  String get menu_logout => '로그 아웃';

  @override
  String get enum_gender_unknown => '알려지지 않은';

  @override
  String get enum_address_type_home => '집';

  @override
  String get enum_address_type_work => '일하다';

  @override
  String get enum_address_type_partner => '파트너';

  @override
  String get enum_address_type_other => '다른';

  @override
  String get message_notification_permission_denined_message => '이전에 알림 권한이 거부되었습니다. 새로운 주문 알림을 받기 위해 앱 설정에서 권한을 활성화할 수 있습니다.';

  @override
  String get message_notification_permission_title => '알림 권한';

  @override
  String get action_ok => '확인';

  @override
  String get menu_website => '웹사이트';

  @override
  String get action_confirm_and_reserve_ride => '승차 확인 및 예약';

  @override
  String get title_reserve_ride => '예약 라이드';

  @override
  String get error_region_unsupported => '지역이 지원되지 않습니다.';

  @override
  String get action_confirm => '확인하다';

  @override
  String get title_wait_time => '기다리는 시간';

  @override
  String get notice_tip_title => '팁을 추가하시겠습니까?';

  @override
  String get notice_tip_description => '팁 추가는 선택 사항입니다. 운전자를 위한 팁으로 원하는 만큼 추가할 수 있습니다.';

  @override
  String get action_pay_for_ride => '요금 지불';

  @override
  String get action_confirm_and_pay => '확인 및 지불';

  @override
  String get action_add_photo => '사진 추가';

  @override
  String get complaint_submit_success_message => '불만 사항이 제출되었습니다. 귀하의 문의에 대한 지원 담당자의 연락을 기다리십시오.';

  @override
  String get error_field_cant_be_empty => '비워둘 수 없습니다.';

  @override
  String get issue_description_placeholder => '문제에 대한 설명을 작성하세요...';

  @override
  String get issue_subject_placeholder => '주제';

  @override
  String get issue_submit_description => '라이드와 관련된 모든 문제를 신고할 수 있습니다. 통화 내에서 문제를 도와드리겠습니다.';

  @override
  String get issue_submit_title => '문제 신고';

  @override
  String get issue_submit_button => '문제 신고';

  @override
  String get trip_information_title => '여행 정보';

  @override
  String get payment_in_cash => '현금';

  @override
  String get payment_method_title => '지불 방법';

  @override
  String get button_ride_safety => '승차 안전';

  @override
  String get status_title_driver_arrived => '픽업 지점에서 운전기사를 만나세요.';

  @override
  String get status_title_trip_started => '목적지로 향하는 중';

  @override
  String get welcome_card_subtitle => '어디 가세요?';

  @override
  String get welcome_card_textbox_placeholder => '목적지는 어디입니까?';

  @override
  String welcome_card_greeting(Object firstName) {
    return '안녕하세요 $firstName!';
  }

  @override
  String get login_title => '로그인';

  @override
  String get login_body => '먼저 라이드를 예약하려면 로그인해야 합니다. 인증 코드가 귀하의 전화번호로 전송됩니다.';

  @override
  String get terms_and_condition_text => '나는 읽었고 동의합니다';

  @override
  String get terms_and_condition_button => '이용약관';

  @override
  String get login_verify_code_title => '코드를 입력';

  @override
  String get login_verify_code_body => '코드가 귀하의 전화번호로 전송되었습니다';

  @override
  String get action_continue => '계속하다';

  @override
  String get current_location => '현재 위치';

  @override
  String get your_destination => '목적지';

  @override
  String get add_stop => '경유지 추가';

  @override
  String get action_choose_on_map => '지도에서 선택';

  @override
  String get message_title_location => '위치';

  @override
  String get message_body_location => '기기의 GPS에서 현재 위치를 가져올 수 없습니다. 검색 필드를 사용하여 픽업 위치를 선택하십시오.';

  @override
  String get menu_reserved_rides => '예약된 놀이기구';

  @override
  String get reservation_empty_state_title => '예약 불가!';

  @override
  String get reservation_empty_state_body => '메인 화면에서 예약을 완료하면 향후 예약을 볼 수 있습니다.';

  @override
  String get action_cancel_ride => '승차 취소';

  @override
  String get enum_address_type_gym => '체육관';

  @override
  String get enum_address_type_parent_house => '부모의 집';

  @override
  String get enum_address_type_cafe => '카페';

  @override
  String get enum_address_type_park => '공원';

  @override
  String get action_add_favorite_location => '즐겨찾는 위치 추가';

  @override
  String get favorite_locations_list_title => '즐겨찾는 위치';

  @override
  String get favorite_locations_list_body => '더 쉽게 액세스할 수 있도록 즐겨찾는 위치를 저장할 수 있습니다.';

  @override
  String get favorite_location_details_title => '좋아하는 위치 이름 지정';

  @override
  String get textbox_error_select_type_address => '주소 유형을 선택하세요.';

  @override
  String get placeholder_type => '유형';

  @override
  String get action_delete_account => '계정 삭제';

  @override
  String get message_delete_account_title => '계정 삭제';

  @override
  String get message_delete_account_body => '계정을 삭제하시겠습니까? 30일 이내에 다시 로그인하여 계정을 복원할 수 있습니다. 이 기간이 지나면 남은 크레딧을 포함하여 데이터가 완전히 제거됩니다.';

  @override
  String get action_edit => '편집하다';

  @override
  String get action_confirm_location => '위치 확인';

  @override
  String get action_coupon_code => '쿠폰 코드';

  @override
  String get enter_coupon_dialog_title => '쿠폰 코드';

  @override
  String get enter_coupon_dialog_body => '가격에 적용할 쿠폰 코드를 입력하세요.';

  @override
  String get enter_coupon_placeholder => '쿠폰 코드 입력';

  @override
  String get looking_dialog_title => '라이드 요청';

  @override
  String get looking_dialog_body => '가장 가까운 운전기사를 찾고 있습니다.';

  @override
  String get action_cancel_request => '요청 취소';

  @override
  String get rate_ride_title => '승차감은 어땠나요?';

  @override
  String get rate_ride_body => '드라이버를 평가하여 경험을 개선할 수 있도록 도와주세요.';

  @override
  String get rate_ride_good_points => '나이스 포인트';

  @override
  String get rate_ride_negative_points => '마이너스 포인트';

  @override
  String get rate_ride_comment_title => '댓글 추가';

  @override
  String get rate_ride_comment_placeholder => '귀하의 의견을 작성 ...';

  @override
  String get action_send_feedback => '피드백 보내기';

  @override
  String get action_ride_options => '라이드 옵션';

  @override
  String get ride_options_title => '라이드 옵션';

  @override
  String get ride_options_wait_time_action => '기다리는 시간';

  @override
  String get ride_safety_title => '승차 안전';

  @override
  String get ride_safety_share_trip_information => '여행 정보 공유';

  @override
  String get ride_safety_sos => '위급 신호';

  @override
  String get sos_title => '조난 신호';

  @override
  String get sos_body => '조난 신호는 긴급 상황을 위한 것이며 경찰과 같은 당국에 전화를 걸 수 있습니다. 위험에 처할 수 있는 긴급 상황에서만 이 기능을 사용하십시오.';

  @override
  String get sos_sent_alert => 'SOS를 보낸다';

  @override
  String get sos_ok_action => '비상이다';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return '$pickup 에서 $destination 으로 가는 중입니다.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' 제 드라이버 이름은 $firstName $lastName 이고 그의 휴대폰 번호는 +$mobileNumber 입니다.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' 여행이 $startTime 에 시작되었으며 약 $duration 분 정도 소요될 것으로 예상됩니다.';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' 운전기사의 차를 타고 이동하는 데 $duration 분 정도 소요될 것으로 예상합니다.';
  }

  @override
  String get announcements_empty_state_title => '아직 공지가 없습니다!';

  @override
  String get announcements_empty_state_body => '새로운 공지사항이 나오면 알려드리겠습니다.';

  @override
  String get action_set_location => '위치 설정';

  @override
  String get trip_history_empty_state_title => '기록이 없습니다!';

  @override
  String get location_not_found_alert_dialog_title => '위치';

  @override
  String get location_not_found_alert_dialog_body => '장치의 GPS를 사용하여 현재 위치를 가져올 수 없습니다. 기기 설정에서 앱에 대한 기기 위치 권한을 확인하세요. 또는 위의 검색 필드를 사용하여 픽업 지점을 선택할 수 있습니다.';

  @override
  String get gift_card_title => '기프트 코드 입력';

  @override
  String get gift_card_body => '기프트 카드 코드를 입력하세요.';

  @override
  String get gift_card_text_placeholder => '기프트 카드 코드 입력';

  @override
  String get action_apply => '적용하다';

  @override
  String get order_status_should_be_arrived => '도착해야';

  @override
  String order_status_arriving_in(Object minutes) {
    return '$minutes 후에 도착';
  }

  @override
  String get message_title_warning => '경고';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return '운전기사가 여행을 수락한 후 서비스를 취소하는 경우 $fee 의 취소 위약금이 부과됩니다. 확인합니까?';
  }

  @override
  String get confirm => '확인하다';

  @override
  String get add_credit_select_payment_method => '지불 방법 선택:';

  @override
  String get add_credit_custom_credit_placeholder => '맞춤 크레딧 추가';

  @override
  String get add_credit_custom_credit_text_placeholder => '관습';

  @override
  String get invoice_item_tip => '팁';

  @override
  String get invoice_item_wallet => '지갑';

  @override
  String get invoice_item_total => '총';

  @override
  String get add_credit_dialog_title => '크레딧 추가';

  @override
  String get add_credit_choose_amount => '금액 선택';

  @override
  String get action_ride_preferences => '라이드 기본 설정';

  @override
  String get ride_preferences_title => '라이드 기본 설정';

  @override
  String get action_confirm_and_continue => '확인 및 계속';

  @override
  String get action_see_reserved_rides => '예약된 놀이기구 보기';

  @override
  String get ride_reserved_dialog_title => '당신의 라이드는 예약되어 있습니다.';

  @override
  String get ride_reserved_dialog_body => '메뉴에서 예약된 놀이기구를 확인하여 해당 놀이기구의 예약 정보를 볼 수 있습니다.';

  @override
  String get alert_coupon_unavailable => '쿠폰을 사용할 수 없습니다.';

  @override
  String minutes_format(Object minutes) {
    return '$minutes 분';
  }

  @override
  String get action_back => '뒤';

  @override
  String wallet_card_title(Object appName) {
    return '$appName 지갑';
  }

  @override
  String get action_redeem_gift_card => '기프트 카드 사용';

  @override
  String get order_status_canceled => '취소 된';

  @override
  String get action_skip_for_now => '일단은 스킵';

  @override
  String get onboarding_select_language_title => '언어 선택';

  @override
  String onboarding_first_page_title(Object appName) {
    return '$appName 에 오신 것을 환영합니다!';
  }

  @override
  String get onboarding_first_page_body => '당신의 편안함을 위해 설계된 택시 서비스\n 좋아하는 드라이버와 여행을 하고 선호하는 라이드를 선택하세요.';

  @override
  String get onboarding_second_page_title => '보상을 받다!';

  @override
  String get onboarding_second_page_body => '친구 추천, 여행 완료 등을 위한 추가 보너스를 받으세요...';

  @override
  String get onboarding_sign_in_title => '로그인';

  @override
  String get onboarding_sign_in_body => '로그인하고 편안한 라이딩을 시작하기 몇 초 후';

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
