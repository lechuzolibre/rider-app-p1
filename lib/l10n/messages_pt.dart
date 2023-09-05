import 'messages.dart';

/// The translations for Portuguese (`pt`).
class SPt extends S {
  SPt([String locale = 'pt']) : super(locale);

  @override
  String get loading => 'Carregando';

  @override
  String get wallet_empty_state_message => 'Nenhum histórico registrado.';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'Taxa de pedido ';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'Retirar';

  @override
  String get enum_rider_transaction_deduct_correction => 'Correção';

  @override
  String get enum_unknown => 'Desconhecido';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'Pagamento no aplicativo';

  @override
  String get enum_rider_transaction_recharge_gift => 'Presente';

  @override
  String get enum_rider_transaction_recharge_correction => 'Correção';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'Transferência bancária';

  @override
  String get top_up_sheet_pay_button => 'Pagar';

  @override
  String get service_selection_book_now => 'Agende agora';

  @override
  String get action_cancel => 'Cancelar';

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Todos os direitos reservados.';
  }

  @override
  String get menu_about => 'Sobre';

  @override
  String get menu_login => 'Conecte-se';

  @override
  String get menu_profile => 'Perfil';

  @override
  String get menu_wallet => 'Carteira';

  @override
  String get menu_trip_history => 'Histórico de viagem';

  @override
  String get menu_announcements => 'Anúncios';

  @override
  String get menu_saved_locations => 'Locais salvos';

  @override
  String get action_save => 'Salvar';

  @override
  String get create_address_name_empty_error => 'Insira o nome do local';

  @override
  String get create_address_title_textfield_hint => 'Título';

  @override
  String get action_delete => 'Excluir';

  @override
  String get trip_history_empty_state_message => 'Nenhum pedido anterior foi registrado.';

  @override
  String get profile_firstname => 'Primeiro nome';

  @override
  String get profile_lastname => 'Sobrenome';

  @override
  String get profile_email => 'E-Mail';

  @override
  String get profile_gender => 'Gênero';

  @override
  String get enum_gender_male => 'Masculino';

  @override
  String get enum_gender_female => 'Feminino';

  @override
  String get login_cell_number_textfield_hint => 'Número do celular';

  @override
  String get login_cell_number_empty_error => 'Por favor, digite o número de telefone no formato correto';

  @override
  String get action_next => 'Próximo';

  @override
  String get verify_phone_code_empty_message => 'O código de verificação não foi inserido.';

  @override
  String get wallet_activities_heading => 'Atividade';

  @override
  String get menu_logout => 'Sair';

  @override
  String get enum_gender_unknown => 'Desconhecido';

  @override
  String get enum_address_type_home => 'Início';

  @override
  String get enum_address_type_work => 'Trabalho';

  @override
  String get enum_address_type_partner => 'Parceiro';

  @override
  String get enum_address_type_other => 'Outros';

  @override
  String get message_notification_permission_denined_message => 'A permissão de notificação foi negada anteriormente. A fim de obter novas notificações de pedidos, você pode habilitar a permissão a partir das configurações do aplicativo.';

  @override
  String get message_notification_permission_title => 'Permissão de Notificação';

  @override
  String get action_ok => 'OK';

  @override
  String get menu_website => 'Site';

  @override
  String get action_confirm_and_reserve_ride => 'Confirmar e reservar viagem';

  @override
  String get title_reserve_ride => 'Reserva de viagem';

  @override
  String get error_region_unsupported => 'A região não é suportada.';

  @override
  String get action_confirm => 'Confirme';

  @override
  String get title_wait_time => 'Tempo de espera';

  @override
  String get notice_tip_title => 'Gostaria de acrescentar alguma dica?';

  @override
  String get notice_tip_description => 'A adição de gorjeta é opcional, você pode adicionar qualquer quantia que desejar como gorjeta para o motorista.';

  @override
  String get action_pay_for_ride => 'Pague a carona';

  @override
  String get action_confirm_and_pay => 'Confirmar e pagar';

  @override
  String get action_add_photo => 'Adicionar foto';

  @override
  String get complaint_submit_success_message => 'A reclamação foi enviada. Aguarde um contato de nosso representante de suporte sobre sua consulta.';

  @override
  String get error_field_cant_be_empty => 'Não pode ser vazio';

  @override
  String get issue_description_placeholder => 'Descreva o seu problema...';

  @override
  String get issue_subject_placeholder => 'Assunto';

  @override
  String get issue_submit_description => 'Você pode relatar qualquer problema que teve com o seu passeio, nós o ajudaremos com o problema em uma chamada.';

  @override
  String get issue_submit_title => 'Informar um problema';

  @override
  String get issue_submit_button => 'Reportar problema';

  @override
  String get trip_information_title => 'Informações sobre a viagem';

  @override
  String get payment_in_cash => 'Dinheiro';

  @override
  String get payment_method_title => 'Forma de pagamento';

  @override
  String get button_ride_safety => 'Segurança em Viagem';

  @override
  String get status_title_driver_arrived => 'Encontre o motorista no ponto de partida';

  @override
  String get status_title_trip_started => 'Rumo ao destino';

  @override
  String get welcome_card_subtitle => 'Para onde você vai?';

  @override
  String get welcome_card_textbox_placeholder => 'Onde é o seu destino?';

  @override
  String welcome_card_greeting(Object firstName) {
    return 'Olá $firstName!';
  }

  @override
  String get login_title => 'Entrar';

  @override
  String get login_body => 'Primeiro você precisa fazer login para reservar sua viagem. Um código de verificação será enviado para o seu número de telefone.';

  @override
  String get terms_and_condition_text => 'Eu li e concordo com ';

  @override
  String get terms_and_condition_button => 'Termos e condições';

  @override
  String get login_verify_code_title => 'Digite o código';

  @override
  String get login_verify_code_body => 'O código foi enviado para o seu número de telefone';

  @override
  String get action_continue => 'Continuar';

  @override
  String get current_location => 'Localização atual';

  @override
  String get your_destination => 'Seu destino';

  @override
  String get add_stop => 'Adicionar Parada';

  @override
  String get action_choose_on_map => 'escolha no mapa';

  @override
  String get message_title_location => 'Localização';

  @override
  String get message_body_location => 'Não foi possível obter sua localização atual o GPS do seu dispositivo, use o campo de pesquisa para selecionar seu local de partida.';

  @override
  String get menu_reserved_rides => 'Viagens reservadas';

  @override
  String get reservation_empty_state_title => 'Sem Reservas!';

  @override
  String get reservation_empty_state_body => 'Você poderá ver suas futuras reservas assim que as fizer na tela principal.';

  @override
  String get action_cancel_ride => 'Cancelar viagem';

  @override
  String get enum_address_type_gym => 'Academia';

  @override
  String get enum_address_type_parent_house => 'Casa dos Pais';

  @override
  String get enum_address_type_cafe => 'Cafeteria';

  @override
  String get enum_address_type_park => 'Parque';

  @override
  String get action_add_favorite_location => 'Adicionar local favorito';

  @override
  String get favorite_locations_list_title => 'Localizações favoritas';

  @override
  String get favorite_locations_list_body => 'Você pode salvar seus locais favoritos para facilitar o acesso';

  @override
  String get favorite_location_details_title => 'Dê um nome ao seu local favorito';

  @override
  String get textbox_error_select_type_address => 'Por favor, selecione o tipo de endereço';

  @override
  String get placeholder_type => 'Tipo';

  @override
  String get action_delete_account => 'Excluir conta';

  @override
  String get message_delete_account_title => 'Exclusão de conta';

  @override
  String get message_delete_account_body => 'Você tem certeza de que deseja excluir sua conta? Você pode fazer o login novamente dentro de 30 dias para restaurar a conta. Após este período, seus dados serão completamente removidos, incluindo todos os seus créditos restantes.';

  @override
  String get action_edit => 'Editar';

  @override
  String get action_confirm_location => 'Confirmar localização';

  @override
  String get action_coupon_code => 'Código do cupom';

  @override
  String get enter_coupon_dialog_title => 'Código do cupom';

  @override
  String get enter_coupon_dialog_body => 'Insira seu código de cupom a ser aplicado sobre o preço';

  @override
  String get enter_coupon_placeholder => 'Digite o código do cupom';

  @override
  String get looking_dialog_title => 'Viagem solicitada';

  @override
  String get looking_dialog_body => 'Estamos procurando o motorista mais próximo para você.';

  @override
  String get action_cancel_request => 'Cancelar pedido';

  @override
  String get rate_ride_title => 'Como foi sua viagem?';

  @override
  String get rate_ride_body => 'Ajude-nos a melhorar sua experiência, classificando seu motorista';

  @override
  String get rate_ride_good_points => 'Pontos positivos';

  @override
  String get rate_ride_negative_points => 'Pontos negativos';

  @override
  String get rate_ride_comment_title => 'Adicionar comentário';

  @override
  String get rate_ride_comment_placeholder => 'Escreva seu comentário ...';

  @override
  String get action_send_feedback => 'Enviar feedback';

  @override
  String get action_ride_options => 'Opções de viagem';

  @override
  String get ride_options_title => 'Opções de viagem';

  @override
  String get ride_options_wait_time_action => 'Tempo de espera';

  @override
  String get ride_safety_title => 'Segurança em Viagem';

  @override
  String get ride_safety_share_trip_information => 'Compartilhar informações sobre a viagem';

  @override
  String get ride_safety_sos => 'Socorro';

  @override
  String get sos_title => 'Sinal de socorro';

  @override
  String get sos_body => 'Os sinais de socorro são para emergências e chamadas a autoridades como a polícia podem ser feitas em seu nome. Por favor, use este recurso somente em emergências que possam estar em sério perigo.';

  @override
  String get sos_sent_alert => 'Pedido de socorro enviado';

  @override
  String get sos_ok_action => 'Isto é uma emergência';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Estou a caminho da $destination para $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' O nome do meu motorista é $firstName $lastName e o número do celular dele é +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' A viagem começou em $startTime e eu espero que a viagem leve cerca de $duration minutos';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Espero que a viagem em dure cerca de $duration minutos assim que eu entrar no carro do motorista.';
  }

  @override
  String get announcements_empty_state_title => 'Nenhum anúncio!';

  @override
  String get announcements_empty_state_body => 'Vamos notificá-lo quando novos anúncios chegarem.';

  @override
  String get action_set_location => 'Defina a localização';

  @override
  String get trip_history_empty_state_title => 'Sem Registros!';

  @override
  String get location_not_found_alert_dialog_title => 'Localização';

  @override
  String get location_not_found_alert_dialog_body => 'Não foi possível obter sua localização atual usando o GPS de seu dispositivo. Por favor, verifique a permissão de localização do dispositivo para o aplicativo a partir das configurações do dispositivo. Alternativamente, você pode usar o campo de busca acima para selecionar seu ponto de coleta.';

  @override
  String get gift_card_title => 'Digite o código de presente';

  @override
  String get gift_card_body => 'Digite o código do seu cartão-presente';

  @override
  String get gift_card_text_placeholder => 'Digite o código do cartão-presente';

  @override
  String get action_apply => 'Aplicar';

  @override
  String get order_status_should_be_arrived => 'deve chegar';

  @override
  String order_status_arriving_in(Object minutes) {
    return 'Chegando em $minutes';
  }

  @override
  String get message_title_warning => 'Aviso';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'O cancelamento do serviço após o motorista aceitar a viagem está sujeito à multa de cancelamento de $fee. Você confirma?';
  }

  @override
  String get confirm => 'Confirmar';

  @override
  String get add_credit_select_payment_method => 'Selecione o método de pagamento:';

  @override
  String get add_credit_custom_credit_placeholder => 'Adicionar crédito personalizado';

  @override
  String get add_credit_custom_credit_text_placeholder => 'Personalizado';

  @override
  String get invoice_item_tip => 'Dica';

  @override
  String get invoice_item_wallet => 'Carteira';

  @override
  String get invoice_item_total => 'Total';

  @override
  String get add_credit_dialog_title => 'Adicionar crédito';

  @override
  String get add_credit_choose_amount => 'Escolha o valor';

  @override
  String get action_ride_preferences => 'Preferências de viagem';

  @override
  String get ride_preferences_title => 'Preferências de viagem';

  @override
  String get action_confirm_and_continue => 'Confirmar e continuar';

  @override
  String get action_see_reserved_rides => 'Ver viagens reservadas';

  @override
  String get ride_reserved_dialog_title => 'Sua viagem está reservada.';

  @override
  String get ride_reserved_dialog_body => 'Você pode conferir as viagens reservadas no menu para visualizar as informações de reserva desta viagem.';

  @override
  String get alert_coupon_unavailable => 'Cupom não está disponível';

  @override
  String minutes_format(Object minutes) {
    return '$minutes minutos';
  }

  @override
  String get action_back => 'Voltar';

  @override
  String wallet_card_title(Object appName) {
    return 'Carteira $appName';
  }

  @override
  String get action_redeem_gift_card => 'Resgatar cartão presente';

  @override
  String get order_status_canceled => 'Cancelado';

  @override
  String get action_skip_for_now => 'Pular por enquanto';

  @override
  String get onboarding_select_language_title => 'Selecione o idioma';

  @override
  String onboarding_first_page_title(Object appName) {
    return 'Bem-vindo ao $appName!';
  }

  @override
  String get onboarding_first_page_body => 'Serviço de taxi projetado para seu conforto\nViaje com seus motoristas favoritos e escolha suas preferências de passeio.';

  @override
  String get onboarding_second_page_title => 'Seja recompensado!';

  @override
  String get onboarding_second_page_body => 'receba bônus extras por indicar um amigo, completar viagens e muito mais...';

  @override
  String get onboarding_sign_in_title => 'Entrar';

  @override
  String get onboarding_sign_in_body => 'A poucos segundos de se conectar e começar um passeio confortável';

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
