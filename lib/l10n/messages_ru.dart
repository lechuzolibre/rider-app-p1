import 'messages.dart';

/// The translations for Russian (`ru`).
class SRu extends S {
  SRu([String locale = 'ru']) : super(locale);

  @override
  String get loading => 'Загрузка';

  @override
  String get wallet_empty_state_message => 'История не записана.';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'Плата за заказ';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'Отзывать';

  @override
  String get enum_rider_transaction_deduct_correction => 'Коррекция';

  @override
  String get enum_unknown => 'Неизвестный';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'Оплата в приложении';

  @override
  String get enum_rider_transaction_recharge_gift => 'Подарок';

  @override
  String get enum_rider_transaction_recharge_correction => 'Коррекция';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'Банковский перевод';

  @override
  String get top_up_sheet_pay_button => 'Платить';

  @override
  String get service_selection_book_now => 'Забронируйте сейчас';

  @override
  String get action_cancel => 'Отмена';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Все права защищены.';
  }

  @override
  String get menu_about => 'О';

  @override
  String get menu_login => 'Авторизоваться';

  @override
  String get menu_profile => 'Профиль';

  @override
  String get menu_wallet => 'Бумажник';

  @override
  String get menu_trip_history => 'История поездок';

  @override
  String get menu_announcements => 'Объявления';

  @override
  String get menu_saved_locations => 'Сохраненные местоположения';

  @override
  String get action_save => 'Сохранять';

  @override
  String get create_address_name_empty_error => 'Пожалуйста, введите название местоположения';

  @override
  String get create_address_title_textfield_hint => 'Заголовок';

  @override
  String get action_delete => 'Удалить';

  @override
  String get trip_history_empty_state_message => 'Прошлый заказ не зарегистрирован.';

  @override
  String get profile_firstname => 'Имя';

  @override
  String get profile_lastname => 'Фамилия';

  @override
  String get profile_email => 'Эл. почта';

  @override
  String get profile_gender => 'Пол';

  @override
  String get enum_gender_male => 'Мужской';

  @override
  String get enum_gender_female => 'женский';

  @override
  String get login_cell_number_textfield_hint => 'Сотовый номер';

  @override
  String get login_cell_number_empty_error => 'Пожалуйста, введите номер телефона в правильном формате';

  @override
  String get action_next => 'Следующий';

  @override
  String get verify_phone_code_empty_message => 'Код подтверждения не введен.';

  @override
  String get wallet_activities_heading => 'Мероприятия';

  @override
  String get menu_logout => 'Выйти';

  @override
  String get enum_gender_unknown => 'Неизвестный';

  @override
  String get enum_address_type_home => 'Дом';

  @override
  String get enum_address_type_work => 'Работа';

  @override
  String get enum_address_type_partner => 'Партнер';

  @override
  String get enum_address_type_other => 'Другой';

  @override
  String get message_notification_permission_denined_message => 'Ранее разрешение на уведомление было отклонено. Чтобы получать уведомления о новых заказах, вы можете включить разрешение в настройках приложения.';

  @override
  String get message_notification_permission_title => 'Разрешение на уведомление';

  @override
  String get action_ok => 'ХОРОШО';

  @override
  String get menu_website => 'Веб-сайт';

  @override
  String get action_confirm_and_reserve_ride => 'Подтвердить и зарезервировать поездку';

  @override
  String get title_reserve_ride => 'Забронировать поездку';

  @override
  String get error_region_unsupported => 'Регион не поддерживается.';

  @override
  String get action_confirm => 'Подтверждать';

  @override
  String get title_wait_time => 'Время ожидания';

  @override
  String get notice_tip_title => 'Хотите добавить совет?';

  @override
  String get notice_tip_description => 'Добавление чаевых не является обязательным. Вы можете добавить любую сумму в качестве чаевых водителю.';

  @override
  String get action_pay_for_ride => 'Платить за поездку';

  @override
  String get action_confirm_and_pay => 'Подтвердить и оплатить';

  @override
  String get action_add_photo => 'Добавить фото';

  @override
  String get complaint_submit_success_message => 'Жалоба подается. Пожалуйста, подождите, пока наш представитель службы поддержки свяжется с вами по поводу вашего запроса.';

  @override
  String get error_field_cant_be_empty => 'Не может быть пустым';

  @override
  String get issue_description_placeholder => 'Напишите описание проблемы...';

  @override
  String get issue_subject_placeholder => 'Предмет';

  @override
  String get issue_submit_description => 'Вы можете сообщить о любой проблеме, возникшей во время поездки. Поможем решить вопрос в рамках звонка.';

  @override
  String get issue_submit_title => 'Сообщить о проблеме';

  @override
  String get issue_submit_button => 'Сообщить о проблеме';

  @override
  String get trip_information_title => 'Информация о поездке';

  @override
  String get payment_in_cash => 'Наличные';

  @override
  String get payment_method_title => 'Метод оплаты';

  @override
  String get button_ride_safety => 'Безопасность вождения';

  @override
  String get status_title_driver_arrived => 'Встреча с водителем в пункте выдачи';

  @override
  String get status_title_trip_started => 'Направление к месту назначения';

  @override
  String get welcome_card_subtitle => 'Куда ты идешь?';

  @override
  String get welcome_card_textbox_placeholder => 'Где находится ваш пункт назначения?';

  @override
  String welcome_card_greeting(Object firstName) {
    return 'Привет $firstName!';
  }

  @override
  String get login_title => 'Войти';

  @override
  String get login_body => 'Во-первых, вы должны войти в систему, чтобы забронировать поездку. Код подтверждения будет отправлен на ваш номер телефона.';

  @override
  String get terms_and_condition_text => 'Я прочитал и согласен с';

  @override
  String get terms_and_condition_button => 'Условия';

  @override
  String get login_verify_code_title => 'Введите код';

  @override
  String get login_verify_code_body => 'Код отправлен на ваш номер телефона';

  @override
  String get action_continue => 'Продолжать';

  @override
  String get current_location => 'Текущее местоположение';

  @override
  String get your_destination => 'Ваш пункт назначения';

  @override
  String get add_stop => 'Добавить остановку';

  @override
  String get action_choose_on_map => 'выбрать на карте';

  @override
  String get message_title_location => 'Расположение';

  @override
  String get message_body_location => 'Нам не удалось определить ваше текущее местоположение с помощью GPS вашего устройства. Пожалуйста, используйте поле поиска, чтобы выбрать место получения.';

  @override
  String get menu_reserved_rides => 'Зарезервированные поездки';

  @override
  String get reservation_empty_state_title => 'Нет бронирования!';

  @override
  String get reservation_empty_state_body => 'Вы сможете увидеть свои будущие заказы, как только сделаете их на главном экране.';

  @override
  String get action_cancel_ride => 'Отменить поездку';

  @override
  String get enum_address_type_gym => 'Спортзал';

  @override
  String get enum_address_type_parent_house => 'Родительский дом';

  @override
  String get enum_address_type_cafe => 'Кафе';

  @override
  String get enum_address_type_park => 'Парк';

  @override
  String get action_add_favorite_location => 'Добавить любимое место';

  @override
  String get favorite_locations_list_title => 'Любимые места';

  @override
  String get favorite_locations_list_body => 'Вы можете сохранить свои любимые места для более легкого доступа';

  @override
  String get favorite_location_details_title => 'Назовите свое любимое место';

  @override
  String get textbox_error_select_type_address => 'Пожалуйста, выберите тип адреса';

  @override
  String get placeholder_type => 'Тип';

  @override
  String get action_delete_account => 'Удалить аккаунт';

  @override
  String get message_delete_account_title => 'Удаление аккаунта';

  @override
  String get message_delete_account_body => 'Вы уверены, что хотите удалить свой аккаунт? Вы можете снова войти в систему в течение 30 дней, чтобы восстановить учетную запись. По истечении этого периода ваши данные будут полностью удалены, включая все оставшиеся кредиты.';

  @override
  String get action_edit => 'Редактировать';

  @override
  String get action_confirm_location => 'Подтвердить местоположение';

  @override
  String get action_coupon_code => 'код купона';

  @override
  String get enter_coupon_dialog_title => 'код купона';

  @override
  String get enter_coupon_dialog_body => 'Введите код купона, который будет применен к цене';

  @override
  String get enter_coupon_placeholder => 'Введите код купона';

  @override
  String get looking_dialog_title => 'Поездка запрошена';

  @override
  String get looking_dialog_body => 'Мы ищем ближайшего водителя для вас.';

  @override
  String get action_cancel_request => 'Отменить запрос';

  @override
  String get rate_ride_title => 'Как прошла твоя поездка?';

  @override
  String get rate_ride_body => 'Помогите нам улучшить ваш опыт, оценив вашего водителя';

  @override
  String get rate_ride_good_points => 'Хорошие очки';

  @override
  String get rate_ride_negative_points => 'Отрицательные моменты';

  @override
  String get rate_ride_comment_title => 'Добавить комментарий';

  @override
  String get rate_ride_comment_placeholder => 'напишите свой комментарий...';

  @override
  String get action_send_feedback => 'Отправить отзыв';

  @override
  String get action_ride_options => 'Варианты поездки';

  @override
  String get ride_options_title => 'Варианты поездки';

  @override
  String get ride_options_wait_time_action => 'Время ожидания';

  @override
  String get ride_safety_title => 'Безопасность вождения';

  @override
  String get ride_safety_share_trip_information => 'Поделитесь информацией о поездке';

  @override
  String get ride_safety_sos => 'SOS';

  @override
  String get sos_title => 'Сигнал бедствия';

  @override
  String get sos_body => 'Сигналы бедствия предназначены для чрезвычайных ситуаций, и от вашего имени может быть сделан звонок в органы власти, например в полицию. Пожалуйста, используйте эту функцию только в экстренных случаях, когда вы можете быть в опасности.';

  @override
  String get sos_sent_alert => 'SOS отправлен';

  @override
  String get sos_ok_action => 'Это аварийная';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Я еду в $destination из $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Моего водителя зовут $firstName $lastName, а номер его мобильного телефона - +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Поездка началась $startTime, и я ожидаю, что поездка займет около $duration минут.';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Я ожидаю, что сама поездка займет около $duration минут, как только я сяду в машину водителя.';
  }

  @override
  String get announcements_empty_state_title => 'Объявлений пока нет!';

  @override
  String get announcements_empty_state_body => 'Мы сообщим вам, когда появятся новые объявления.';

  @override
  String get action_set_location => 'Установить местоположение';

  @override
  String get trip_history_empty_state_title => 'Нет записей!';

  @override
  String get location_not_found_alert_dialog_title => 'Расположение';

  @override
  String get location_not_found_alert_dialog_body => 'Нам не удалось определить ваше текущее местоположение с помощью GPS вашего устройства. Пожалуйста, проверьте разрешение на определение местоположения устройства для приложения в настройках устройства. Кроме того, вы можете использовать поле поиска выше, чтобы выбрать пункт выдачи.';

  @override
  String get gift_card_title => 'Введите подарочный код';

  @override
  String get gift_card_body => 'Введите код подарочной карты';

  @override
  String get gift_card_text_placeholder => 'Введите код подарочной карты';

  @override
  String get action_apply => 'Подать заявление';

  @override
  String get order_status_should_be_arrived => 'должен быть доставлен';

  @override
  String order_status_arriving_in(Object minutes) {
    return 'Прибытие через $minutes';
  }

  @override
  String get message_title_warning => 'Предупреждение';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'Отмена услуги после того, как водитель принял поездку, подлежит штрафу за отмену в размере $fee. Вы подтверждаете?';
  }

  @override
  String get confirm => 'Подтверждать';

  @override
  String get add_credit_select_payment_method => 'Выберите метод оплаты:';

  @override
  String get add_credit_custom_credit_placeholder => 'Добавить пользовательский кредит';

  @override
  String get add_credit_custom_credit_text_placeholder => 'Обычай';

  @override
  String get invoice_item_tip => 'Кончик';

  @override
  String get invoice_item_wallet => 'Бумажник';

  @override
  String get invoice_item_total => 'Общий';

  @override
  String get add_credit_dialog_title => 'Добавить кредит';

  @override
  String get add_credit_choose_amount => 'Выберите сумму';

  @override
  String get action_ride_preferences => 'Настройки поездки';

  @override
  String get ride_preferences_title => 'Настройки поездки';

  @override
  String get action_confirm_and_continue => 'Подтвердить и продолжить';

  @override
  String get action_see_reserved_rides => 'Посмотреть зарезервированные поездки';

  @override
  String get ride_reserved_dialog_title => 'Ваша поездка зарезервирована.';

  @override
  String get ride_reserved_dialog_body => 'Вы можете проверить зарезервированные поездки в меню, чтобы увидеть информацию о резервах этой поездки.';

  @override
  String get alert_coupon_unavailable => 'Купон недоступен';

  @override
  String minutes_format(Object minutes) {
    return '$minutes минут';
  }

  @override
  String get action_back => 'Назад';

  @override
  String wallet_card_title(Object appName) {
    return 'Кошелек $appName';
  }

  @override
  String get action_redeem_gift_card => 'Использовать подарочную карту';

  @override
  String get order_status_canceled => 'Отменено';

  @override
  String get action_skip_for_now => 'Пропустить сейчас';

  @override
  String get onboarding_select_language_title => 'Выберите язык';

  @override
  String onboarding_first_page_title(Object appName) {
    return 'Добро пожаловать в $appName!';
  }

  @override
  String get onboarding_first_page_body => 'Служба такси для вашего комфорта\n совершайте поездки с вашими любимыми водителями и выбирайте свои предпочтения в поездках';

  @override
  String get onboarding_second_page_title => 'Получите вознаграждение!';

  @override
  String get onboarding_second_page_body => 'получайте дополнительные бонусы за приглашение друга, выполнение поездок и многое другое...';

  @override
  String get onboarding_sign_in_title => 'Войти';

  @override
  String get onboarding_sign_in_body => 'Несколько секунд до входа в систему и начала комфортной поездки';

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
