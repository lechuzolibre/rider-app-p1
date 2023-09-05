// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(fee) =>
      "Отмена услуги после того, как водитель принял поездку, подлежит штрафу за отмену в размере ${fee}. Вы подтверждаете?";

  static String m1(company) => "Copyright © ${company}, Все права защищены.";

  static String m2(distance) => "${distance} ft";

  static String m3(distance) => "${distance} km";

  static String m4(distance) => "${distance} m";

  static String m5(distance) => "${distance} mi";

  static String m6(minutes) => "${minutes} минут";

  static String m7(seconds) => "Resend code in ${seconds} seconds";

  static String m8(appName) => "Добро пожаловать в ${appName}!";

  static String m9(minutes) => "Прибытие через ${minutes}";

  static String m10(duration) =>
      " Я ожидаю, что сама поездка займет около ${duration} минут, как только я сяду в машину водителя.";

  static String m11(startTime, duration) =>
      " Поездка началась ${startTime}, и я ожидаю, что поездка займет около ${duration} минут.";

  static String m12(firstName, lastName, mobileNumber) =>
      " Моего водителя зовут ${firstName} ${lastName}, а номер его мобильного телефона - +${mobileNumber}.";

  static String m13(destination, pickup) =>
      "Я еду в ${destination} из ${pickup}.";

  static String m14(appName) => "Кошелек ${appName}";

  static String m15(firstName) => "Привет ${firstName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_favorite_location":
            MessageLookupByLibrary.simpleMessage("Добавить любимое место"),
        "action_add_photo":
            MessageLookupByLibrary.simpleMessage("Добавить фото"),
        "action_apply":
            MessageLookupByLibrary.simpleMessage("Подать заявление"),
        "action_back": MessageLookupByLibrary.simpleMessage("Назад"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "action_cancel_request":
            MessageLookupByLibrary.simpleMessage("Отменить запрос"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("Отменить поездку"),
        "action_choose_on_map":
            MessageLookupByLibrary.simpleMessage("выбрать на карте"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("Подтверждать"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("Подтвердить и продолжить"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("Подтвердить и оплатить"),
        "action_confirm_and_reserve_ride": MessageLookupByLibrary.simpleMessage(
            "Подтвердить и зарезервировать поездку"),
        "action_confirm_location":
            MessageLookupByLibrary.simpleMessage("Подтвердить местоположение"),
        "action_continue": MessageLookupByLibrary.simpleMessage("Продолжать"),
        "action_coupon_code":
            MessageLookupByLibrary.simpleMessage("код купона"),
        "action_delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("Удалить аккаунт"),
        "action_edit": MessageLookupByLibrary.simpleMessage("Редактировать"),
        "action_next": MessageLookupByLibrary.simpleMessage("Следующий"),
        "action_ok": MessageLookupByLibrary.simpleMessage("ХОРОШО"),
        "action_pay_for_ride":
            MessageLookupByLibrary.simpleMessage("Платить за поездку"),
        "action_redeem_gift_card": MessageLookupByLibrary.simpleMessage(
            "Использовать подарочную карту"),
        "action_resend_code":
            MessageLookupByLibrary.simpleMessage("Resend Code"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("Варианты поездки"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("Настройки поездки"),
        "action_save": MessageLookupByLibrary.simpleMessage("Сохранять"),
        "action_see_reserved_rides": MessageLookupByLibrary.simpleMessage(
            "Посмотреть зарезервированные поездки"),
        "action_send_feedback":
            MessageLookupByLibrary.simpleMessage("Отправить отзыв"),
        "action_set_location":
            MessageLookupByLibrary.simpleMessage("Установить местоположение"),
        "action_skip_for_now":
            MessageLookupByLibrary.simpleMessage("Пропустить сейчас"),
        "add_credit_choose_amount":
            MessageLookupByLibrary.simpleMessage("Выберите сумму"),
        "add_credit_custom_credit_placeholder":
            MessageLookupByLibrary.simpleMessage(
                "Добавить пользовательский кредит"),
        "add_credit_custom_credit_text_placeholder":
            MessageLookupByLibrary.simpleMessage("Обычай"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("Добавить кредит"),
        "add_credit_select_payment_method":
            MessageLookupByLibrary.simpleMessage("Выберите метод оплаты:"),
        "add_stop": MessageLookupByLibrary.simpleMessage("Добавить остановку"),
        "alert_coupon_unavailable":
            MessageLookupByLibrary.simpleMessage("Купон недоступен"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Мы сообщим вам, когда появятся новые объявления."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Объявлений пока нет!"),
        "button_ride_safety":
            MessageLookupByLibrary.simpleMessage("Безопасность вождения"),
        "cancelation_fee_confirmation_body": m0,
        "complaint_submit_error_message": MessageLookupByLibrary.simpleMessage(
            "The submission of your complaint was unsuccessful, likely due to connectivity issues. Please try again."),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Жалоба подается. Пожалуйста, подождите, пока наш представитель службы поддержки свяжется с вами по поводу вашего запроса."),
        "confirm": MessageLookupByLibrary.simpleMessage("Подтверждать"),
        "copyright_notice": m1,
        "create_address_name_empty_error": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, введите название местоположения"),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Заголовок"),
        "current_location":
            MessageLookupByLibrary.simpleMessage("Текущее местоположение"),
        "distanceFeet": m2,
        "distanceKm": m3,
        "distanceMeters": m4,
        "distanceMiles": m5,
        "enter_coupon_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Введите код купона, который будет применен к цене"),
        "enter_coupon_dialog_title":
            MessageLookupByLibrary.simpleMessage("код купона"),
        "enter_coupon_placeholder":
            MessageLookupByLibrary.simpleMessage("Введите код купона"),
        "enum_address_type_cafe": MessageLookupByLibrary.simpleMessage("Кафе"),
        "enum_address_type_gym":
            MessageLookupByLibrary.simpleMessage("Спортзал"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("Дом"),
        "enum_address_type_other":
            MessageLookupByLibrary.simpleMessage("Другой"),
        "enum_address_type_parent_house":
            MessageLookupByLibrary.simpleMessage("Родительский дом"),
        "enum_address_type_park": MessageLookupByLibrary.simpleMessage("Парк"),
        "enum_address_type_partner":
            MessageLookupByLibrary.simpleMessage("Партнер"),
        "enum_address_type_work":
            MessageLookupByLibrary.simpleMessage("Работа"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("женский"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("Мужской"),
        "enum_gender_unknown":
            MessageLookupByLibrary.simpleMessage("Неизвестный"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("Коррекция"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("Плата за заказ"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("Отзывать"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Банковский перевод"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("Коррекция"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("Подарок"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("Оплата в приложении"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("Неизвестный"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Не может быть пустым"),
        "error_region_unsupported":
            MessageLookupByLibrary.simpleMessage("Регион не поддерживается."),
        "favorite_location_details_title":
            MessageLookupByLibrary.simpleMessage("Назовите свое любимое место"),
        "favorite_locations_list_body": MessageLookupByLibrary.simpleMessage(
            "Вы можете сохранить свои любимые места для более легкого доступа"),
        "favorite_locations_list_title":
            MessageLookupByLibrary.simpleMessage("Любимые места"),
        "gift_card_body": MessageLookupByLibrary.simpleMessage(
            "Введите код подарочной карты"),
        "gift_card_text_placeholder": MessageLookupByLibrary.simpleMessage(
            "Введите код подарочной карты"),
        "gift_card_title":
            MessageLookupByLibrary.simpleMessage("Введите подарочный код"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("Кончик"),
        "invoice_item_total": MessageLookupByLibrary.simpleMessage("Общий"),
        "invoice_item_wallet": MessageLookupByLibrary.simpleMessage("Бумажник"),
        "issue_description_placeholder": MessageLookupByLibrary.simpleMessage(
            "Напишите описание проблемы..."),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Предмет"),
        "issue_submit_button":
            MessageLookupByLibrary.simpleMessage("Сообщить о проблеме"),
        "issue_submit_description": MessageLookupByLibrary.simpleMessage(
            "Вы можете сообщить о любой проблеме, возникшей во время поездки. Поможем решить вопрос в рамках звонка."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Сообщить о проблеме"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "loading": MessageLookupByLibrary.simpleMessage("Загрузка"),
        "location_not_found_alert_dialog_body":
            MessageLookupByLibrary.simpleMessage(
                "Нам не удалось определить ваше текущее местоположение с помощью GPS вашего устройства. Пожалуйста, проверьте разрешение на определение местоположения устройства для приложения в настройках устройства. Кроме того, вы можете использовать поле поиска выше, чтобы выбрать пункт выдачи."),
        "location_not_found_alert_dialog_title":
            MessageLookupByLibrary.simpleMessage("Расположение"),
        "login_body": MessageLookupByLibrary.simpleMessage(
            "Во-первых, вы должны войти в систему, чтобы забронировать поездку. Код подтверждения будет отправлен на ваш номер телефона."),
        "login_cell_number_empty_error": MessageLookupByLibrary.simpleMessage(
            "Пожалуйста, введите номер телефона в правильном формате"),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Сотовый номер"),
        "login_enter_phone_subtitle": MessageLookupByLibrary.simpleMessage(
            "To begin booking your ride, please sign in first. We will then send a code to your phone number."),
        "login_title": MessageLookupByLibrary.simpleMessage("Войти"),
        "login_verify_code_body": MessageLookupByLibrary.simpleMessage(
            "Код отправлен на ваш номер телефона"),
        "login_verify_code_title":
            MessageLookupByLibrary.simpleMessage("Введите код"),
        "looking_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Мы ищем ближайшего водителя для вас."),
        "looking_dialog_title":
            MessageLookupByLibrary.simpleMessage("Поездка запрошена"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("О"),
        "menu_announcements":
            MessageLookupByLibrary.simpleMessage("Объявления"),
        "menu_login": MessageLookupByLibrary.simpleMessage("Авторизоваться"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Выйти"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "menu_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Зарезервированные поездки"),
        "menu_saved_locations":
            MessageLookupByLibrary.simpleMessage("Сохраненные местоположения"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("История поездок"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Бумажник"),
        "menu_website": MessageLookupByLibrary.simpleMessage("Веб-сайт"),
        "message_body_location": MessageLookupByLibrary.simpleMessage(
            "Нам не удалось определить ваше текущее местоположение с помощью GPS вашего устройства. Пожалуйста, используйте поле поиска, чтобы выбрать место получения."),
        "message_delete_account_body": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите удалить свой аккаунт? Вы можете снова войти в систему в течение 30 дней, чтобы восстановить учетную запись. По истечении этого периода ваши данные будут полностью удалены, включая все оставшиеся кредиты."),
        "message_delete_account_title":
            MessageLookupByLibrary.simpleMessage("Удаление аккаунта"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "Ранее разрешение на уведомление было отклонено. Чтобы получать уведомления о новых заказах, вы можете включить разрешение в настройках приложения."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("Разрешение на уведомление"),
        "message_title_location":
            MessageLookupByLibrary.simpleMessage("Расположение"),
        "message_title_warning":
            MessageLookupByLibrary.simpleMessage("Предупреждение"),
        "minutes_format": m6,
        "notice_resend_code_in_seconds": m7,
        "notice_tip_description": MessageLookupByLibrary.simpleMessage(
            "Добавление чаевых не является обязательным. Вы можете добавить любую сумму в качестве чаевых водителю."),
        "notice_tip_title":
            MessageLookupByLibrary.simpleMessage("Хотите добавить совет?"),
        "onboarding_first_page_body": MessageLookupByLibrary.simpleMessage(
            "Служба такси для вашего комфорта\n совершайте поездки с вашими любимыми водителями и выбирайте свои предпочтения в поездках"),
        "onboarding_first_page_title": m8,
        "onboarding_second_page_body": MessageLookupByLibrary.simpleMessage(
            "получайте дополнительные бонусы за приглашение друга, выполнение поездок и многое другое..."),
        "onboarding_second_page_title":
            MessageLookupByLibrary.simpleMessage("Получите вознаграждение!"),
        "onboarding_select_language_title":
            MessageLookupByLibrary.simpleMessage("Выберите язык"),
        "onboarding_sign_in_body": MessageLookupByLibrary.simpleMessage(
            "Несколько секунд до входа в систему и начала комфортной поездки"),
        "onboarding_sign_in_title":
            MessageLookupByLibrary.simpleMessage("Войти"),
        "order_status_arriving_in": m9,
        "order_status_canceled":
            MessageLookupByLibrary.simpleMessage("Отменено"),
        "order_status_should_be_arrived":
            MessageLookupByLibrary.simpleMessage("должен быть доставлен"),
        "payment_in_cash": MessageLookupByLibrary.simpleMessage("Наличные"),
        "payment_method_title":
            MessageLookupByLibrary.simpleMessage("Метод оплаты"),
        "placeholder_type": MessageLookupByLibrary.simpleMessage("Тип"),
        "profile_email": MessageLookupByLibrary.simpleMessage("Эл. почта"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("Имя"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("Пол"),
        "profile_lastname": MessageLookupByLibrary.simpleMessage("Фамилия"),
        "rate_ride_body": MessageLookupByLibrary.simpleMessage(
            "Помогите нам улучшить ваш опыт, оценив вашего водителя"),
        "rate_ride_comment_placeholder": MessageLookupByLibrary.simpleMessage(
            "напишите свой комментарий..."),
        "rate_ride_comment_title":
            MessageLookupByLibrary.simpleMessage("Добавить комментарий"),
        "rate_ride_good_points":
            MessageLookupByLibrary.simpleMessage("Хорошие очки"),
        "rate_ride_negative_points":
            MessageLookupByLibrary.simpleMessage("Отрицательные моменты"),
        "rate_ride_title":
            MessageLookupByLibrary.simpleMessage("Как прошла твоя поездка?"),
        "register_title_name": MessageLookupByLibrary.simpleMessage("Name"),
        "register_title_verify_number":
            MessageLookupByLibrary.simpleMessage("Verify number"),
        "reservation_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Вы сможете увидеть свои будущие заказы, как только сделаете их на главном экране."),
        "reservation_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Нет бронирования!"),
        "ride_options_title":
            MessageLookupByLibrary.simpleMessage("Варианты поездки"),
        "ride_options_wait_time_action":
            MessageLookupByLibrary.simpleMessage("Время ожидания"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("Настройки поездки"),
        "ride_reserved_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Вы можете проверить зарезервированные поездки в меню, чтобы увидеть информацию о резервах этой поездки."),
        "ride_reserved_dialog_title": MessageLookupByLibrary.simpleMessage(
            "Ваша поездка зарезервирована."),
        "ride_safety_share_trip_information":
            MessageLookupByLibrary.simpleMessage(
                "Поделитесь информацией о поездке"),
        "ride_safety_sos": MessageLookupByLibrary.simpleMessage("SOS"),
        "ride_safety_title":
            MessageLookupByLibrary.simpleMessage("Безопасность вождения"),
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("Забронируйте сейчас"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_trip_not_arrived_time": m10,
        "share_trip_started_time": m11,
        "share_trip_text_driver": m12,
        "share_trip_text_locations": m13,
        "sos_body": MessageLookupByLibrary.simpleMessage(
            "Сигналы бедствия предназначены для чрезвычайных ситуаций, и от вашего имени может быть сделан звонок в органы власти, например в полицию. Пожалуйста, используйте эту функцию только в экстренных случаях, когда вы можете быть в опасности."),
        "sos_ok_action": MessageLookupByLibrary.simpleMessage("Это аварийная"),
        "sos_send_error": MessageLookupByLibrary.simpleMessage(
            "There was a problem encountered while attempting to send your SOS signal. Please make another attempt or contact 911 directly."),
        "sos_sent_alert": MessageLookupByLibrary.simpleMessage("SOS отправлен"),
        "sos_title": MessageLookupByLibrary.simpleMessage("Сигнал бедствия"),
        "status_title_driver_arrived": MessageLookupByLibrary.simpleMessage(
            "Встреча с водителем в пункте выдачи"),
        "status_title_trip_started": MessageLookupByLibrary.simpleMessage(
            "Направление к месту назначения"),
        "terms_and_condition_button":
            MessageLookupByLibrary.simpleMessage("Условия"),
        "terms_and_condition_text":
            MessageLookupByLibrary.simpleMessage("Я прочитал и согласен с"),
        "textbox_error_select_type_address":
            MessageLookupByLibrary.simpleMessage(
                "Пожалуйста, выберите тип адреса"),
        "title_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Забронировать поездку"),
        "title_wait_time":
            MessageLookupByLibrary.simpleMessage("Время ожидания"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("Платить"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage(
                "Прошлый заказ не зарегистрирован."),
        "trip_history_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Нет записей!"),
        "trip_information_title":
            MessageLookupByLibrary.simpleMessage("Информация о поездке"),
        "verify_phone_code_empty_message": MessageLookupByLibrary.simpleMessage(
            "Код подтверждения не введен."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Мероприятия"),
        "wallet_card_title": m14,
        "wallet_empty_state_message":
            MessageLookupByLibrary.simpleMessage("История не записана."),
        "welcome_card_greeting": m15,
        "welcome_card_subtitle":
            MessageLookupByLibrary.simpleMessage("Куда ты идешь?"),
        "welcome_card_textbox_placeholder":
            MessageLookupByLibrary.simpleMessage(
                "Где находится ваш пункт назначения?"),
        "your_destination":
            MessageLookupByLibrary.simpleMessage("Ваш пункт назначения")
      };
}
