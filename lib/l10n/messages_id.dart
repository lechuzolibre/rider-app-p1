import 'messages.dart';

/// The translations for Indonesian (`id`).
class SId extends S {
  SId([String locale = 'id']) : super(locale);

  @override
  String get loading => 'Memuat';

  @override
  String get wallet_empty_state_message => 'Tidak ada sejarah yang tercatat.';

  @override
  String get enum_rider_transaction_deduct_order_fee => 'Biaya Pemesanan';

  @override
  String get enum_rider_transaction_deduct_withdraw => 'Menarik';

  @override
  String get enum_rider_transaction_deduct_correction => 'Koreksi';

  @override
  String get enum_unknown => 'tidak diketahui';

  @override
  String get enum_rider_transaction_recharge_in_app_payment => 'Pembayaran dalam Aplikasi';

  @override
  String get enum_rider_transaction_recharge_gift => 'Hadiah';

  @override
  String get enum_rider_transaction_recharge_correction => 'Koreksi';

  @override
  String get enum_rider_transaction_recharge_bank_transfer => 'Transfer Bank';

  @override
  String get top_up_sheet_pay_button => 'Membayar';

  @override
  String get service_selection_book_now => 'Pesan sekarang';

  @override
  String get action_cancel => 'Membatalkan';

  @override
  String copyright_notice(Object company) {
    return 'Hak Cipta © $company, Semua hak dilindungi undang-undang.';
  }

  @override
  String get menu_about => 'Tentang';

  @override
  String get menu_login => 'Gabung';

  @override
  String get menu_profile => 'Profil';

  @override
  String get menu_wallet => 'Dompet';

  @override
  String get menu_trip_history => 'Sejarah Perjalanan';

  @override
  String get menu_announcements => 'Pengumuman';

  @override
  String get menu_saved_locations => 'Lokasi Tersimpan';

  @override
  String get action_save => 'Menyimpan';

  @override
  String get create_address_name_empty_error => 'Silakan masukkan nama lokasi';

  @override
  String get create_address_title_textfield_hint => 'Judul';

  @override
  String get action_delete => 'Menghapus';

  @override
  String get trip_history_empty_state_message => 'Tidak ada pesanan sebelumnya yang dicatat.';

  @override
  String get profile_firstname => 'Nama depan';

  @override
  String get profile_lastname => 'Nama keluarga';

  @override
  String get profile_email => 'Surel';

  @override
  String get profile_gender => 'Jenis kelamin';

  @override
  String get enum_gender_male => 'Pria';

  @override
  String get enum_gender_female => 'Perempuan';

  @override
  String get login_cell_number_textfield_hint => 'Nomor handphone';

  @override
  String get login_cell_number_empty_error => 'Silakan masukkan nomor telepon dalam format yang benar';

  @override
  String get action_next => 'Lanjut';

  @override
  String get verify_phone_code_empty_message => 'Kode verifikasi tidak dimasukkan.';

  @override
  String get wallet_activities_heading => 'Aktivitas';

  @override
  String get menu_logout => 'Keluar';

  @override
  String get enum_gender_unknown => 'Tidak dikenal';

  @override
  String get enum_address_type_home => 'Rumah';

  @override
  String get enum_address_type_work => 'Kerja';

  @override
  String get enum_address_type_partner => 'Mitra';

  @override
  String get enum_address_type_other => 'Lainnya';

  @override
  String get message_notification_permission_denined_message => 'Izin pemberitahuan ditolak sebelumnya. Untuk mendapatkan notifikasi pesanan baru, Anda dapat mengaktifkan izin dari pengaturan aplikasi.';

  @override
  String get message_notification_permission_title => 'Izin Pemberitahuan';

  @override
  String get action_ok => 'Oke';

  @override
  String get menu_website => 'Situs web';

  @override
  String get action_confirm_and_reserve_ride => 'Konfirmasi & Reservasi perjalanan';

  @override
  String get title_reserve_ride => 'Pesan Perjalanan';

  @override
  String get error_region_unsupported => 'Wilayah tidak didukung.';

  @override
  String get action_confirm => 'Mengonfirmasi';

  @override
  String get title_wait_time => 'Waktu tunggu';

  @override
  String get notice_tip_title => 'Apakah Anda ingin menambahkan tip?';

  @override
  String get notice_tip_description => 'Menambahkan tip adalah opsional. Anda dapat menambahkan jumlah berapa pun yang Anda suka sebagai tip untuk pengemudi.';

  @override
  String get action_pay_for_ride => 'Bayar untuk perjalanan';

  @override
  String get action_confirm_and_pay => 'Konfirmasi & Bayar';

  @override
  String get action_add_photo => 'Tambahkan Foto';

  @override
  String get complaint_submit_success_message => 'Pengaduan disampaikan. Harap tunggu kontak dari perwakilan dukungan kami tentang pertanyaan Anda.';

  @override
  String get error_field_cant_be_empty => 'Tidak boleh kosong';

  @override
  String get issue_description_placeholder => 'Tulis deskripsi masalah Anda...';

  @override
  String get issue_subject_placeholder => 'Subjek';

  @override
  String get issue_submit_description => 'Anda dapat melaporkan masalah apa pun yang Anda alami dengan perjalanan Anda. Kami akan membantu Anda dengan masalah dalam panggilan.';

  @override
  String get issue_submit_title => 'Laporkan masalah';

  @override
  String get issue_submit_button => 'Laporkan masalah';

  @override
  String get trip_information_title => 'Informasi Perjalanan';

  @override
  String get payment_in_cash => 'Uang tunai';

  @override
  String get payment_method_title => 'Cara Pembayaran';

  @override
  String get button_ride_safety => 'Keamanan Berkendara';

  @override
  String get status_title_driver_arrived => 'Temui pengemudi di titik penjemputan';

  @override
  String get status_title_trip_started => 'Menuju ke tujuan';

  @override
  String get welcome_card_subtitle => 'Kemana kamu pergi?';

  @override
  String get welcome_card_textbox_placeholder => 'Di mana tujuan Anda?';

  @override
  String welcome_card_greeting(Object firstName) {
    return 'Halo $firstName!';
  }

  @override
  String get login_title => 'Masuk';

  @override
  String get login_body => 'Pertama, Anda harus masuk untuk memesan perjalanan Anda. Kode verifikasi akan dikirimkan ke nomor telepon Anda.';

  @override
  String get terms_and_condition_text => 'Saya telah membaca dan setuju dengan';

  @override
  String get terms_and_condition_button => 'Syarat & Ketentuan';

  @override
  String get login_verify_code_title => 'Memasukkan kode';

  @override
  String get login_verify_code_body => 'Kode telah dikirim ke nomor telepon Anda';

  @override
  String get action_continue => 'Melanjutkan';

  @override
  String get current_location => 'Lokasi saat ini';

  @override
  String get your_destination => 'Tujuan Anda';

  @override
  String get add_stop => 'Tambahkan Berhenti';

  @override
  String get action_choose_on_map => 'pilih di peta';

  @override
  String get message_title_location => 'Lokasi';

  @override
  String get message_body_location => 'Kami tidak bisa mendapatkan lokasi Anda saat ini dari GPS perangkat Anda. Silakan gunakan bidang pencarian untuk memilih lokasi penjemputan Anda.';

  @override
  String get menu_reserved_rides => 'Wahana yang Dipesan';

  @override
  String get reservation_empty_state_title => 'Tidak ada pemesanan!';

  @override
  String get reservation_empty_state_body => 'Anda akan dapat melihat pemesanan berikutnya setelah Anda membuatnya di layar utama.';

  @override
  String get action_cancel_ride => 'Batalkan Perjalanan';

  @override
  String get enum_address_type_gym => 'Gym';

  @override
  String get enum_address_type_parent_house => 'Rumah orang tua';

  @override
  String get enum_address_type_cafe => 'Kafe';

  @override
  String get enum_address_type_park => 'Taman';

  @override
  String get action_add_favorite_location => 'Tambahkan lokasi Favorit';

  @override
  String get favorite_locations_list_title => 'Lokasi favorit';

  @override
  String get favorite_locations_list_body => 'Anda dapat menyimpan lokasi favorit Anda untuk akses yang lebih mudah';

  @override
  String get favorite_location_details_title => 'Beri nama lokasi favorit Anda';

  @override
  String get textbox_error_select_type_address => 'Silakan pilih jenis alamat';

  @override
  String get placeholder_type => 'Jenis';

  @override
  String get action_delete_account => 'Hapus akun';

  @override
  String get message_delete_account_title => 'Penghapusan akun';

  @override
  String get message_delete_account_body => 'Apakah Anda yakin ingin menghapus akun Anda? Anda dapat masuk lagi dalam waktu 30 hari untuk memulihkan akun. Setelah periode ini, data Anda akan dihapus sepenuhnya, termasuk semua sisa kredit Anda.';

  @override
  String get action_edit => 'Sunting';

  @override
  String get action_confirm_location => 'Konfirmasi lokasi';

  @override
  String get action_coupon_code => 'Kode Kupon';

  @override
  String get enter_coupon_dialog_title => 'Kode Kupon';

  @override
  String get enter_coupon_dialog_body => 'Masukkan kode kupon Anda untuk diterapkan ke harga';

  @override
  String get enter_coupon_placeholder => 'Masukkan kode kupon';

  @override
  String get looking_dialog_title => 'Naik Diminta';

  @override
  String get looking_dialog_body => 'Kami sedang mencari driver terdekat untuk Anda.';

  @override
  String get action_cancel_request => 'Batalkan permintaan';

  @override
  String get rate_ride_title => 'Bagaimana perjalanan Anda?';

  @override
  String get rate_ride_body => 'Bantu kami meningkatkan pengalaman Anda dengan menilai pengemudi Anda';

  @override
  String get rate_ride_good_points => 'Poin Bagus';

  @override
  String get rate_ride_negative_points => 'Poin Negatif';

  @override
  String get rate_ride_comment_title => 'Tambahkan komentar';

  @override
  String get rate_ride_comment_placeholder => 'tulis komentarmu...';

  @override
  String get action_send_feedback => 'Kirim Umpan Balik';

  @override
  String get action_ride_options => 'Opsi Perjalanan';

  @override
  String get ride_options_title => 'Opsi Perjalanan';

  @override
  String get ride_options_wait_time_action => 'Waktu tunggu';

  @override
  String get ride_safety_title => 'Keamanan Berkendara';

  @override
  String get ride_safety_share_trip_information => 'Bagikan informasi perjalanan';

  @override
  String get ride_safety_sos => 'SOS';

  @override
  String get sos_title => 'Sinyal marabahaya';

  @override
  String get sos_body => 'Sinyal marabahaya adalah untuk keadaan darurat dan panggilan ke pihak berwenang seperti polisi mungkin dilakukan atas nama Anda. Harap gunakan fitur ini hanya dalam keadaan darurat yang mungkin membuat Anda dalam bahaya.';

  @override
  String get sos_sent_alert => 'SOS dikirim';

  @override
  String get sos_ok_action => 'Ini darurat';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Saya dalam perjalanan ke $destination dari $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Nama pengemudi saya adalah $firstName $lastName dan nomor ponselnya adalah +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Perjalanan telah dimulai pada $startTime dan saya memperkirakan perjalanan akan memakan waktu sekitar $duration menit';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Saya berharap perjalanan itu sendiri memakan waktu sekitar $duration menit setelah saya naik mobil pengemudi.';
  }

  @override
  String get announcements_empty_state_title => 'Belum ada Pengumuman!';

  @override
  String get announcements_empty_state_body => 'Kami akan memberi tahu Anda ketika ada pengumuman baru.';

  @override
  String get action_set_location => 'Tetapkan Lokasi';

  @override
  String get trip_history_empty_state_title => 'Tidak Ada Catatan!';

  @override
  String get location_not_found_alert_dialog_title => 'Lokasi';

  @override
  String get location_not_found_alert_dialog_body => 'Kami tidak bisa mendapatkan lokasi Anda saat ini menggunakan GPS perangkat Anda. Silakan periksa izin lokasi perangkat untuk aplikasi dari pengaturan perangkat. Atau, Anda dapat menggunakan kolom pencarian di atas untuk memilih titik penjemputan Anda.';

  @override
  String get gift_card_title => 'Masukkan Kode Hadiah';

  @override
  String get gift_card_body => 'Masukkan kode kartu hadiah Anda';

  @override
  String get gift_card_text_placeholder => 'Masukkan kode kartu hadiah';

  @override
  String get action_apply => 'Berlaku';

  @override
  String get order_status_should_be_arrived => 'harus tiba';

  @override
  String order_status_arriving_in(Object minutes) {
    return 'Tiba dalam $minutes';
  }

  @override
  String get message_title_warning => 'Peringatan';

  @override
  String cancelation_fee_confirmation_body(Object fee) {
    return 'Pembatalan layanan setelah pengemudi menerima perjalanan akan dikenakan denda pembatalan sebesar $fee. Apakah Anda mengkonfirmasi?';
  }

  @override
  String get confirm => 'Mengonfirmasi';

  @override
  String get add_credit_select_payment_method => 'Pilih metode pembayaran:';

  @override
  String get add_credit_custom_credit_placeholder => 'Tambahkan Kredit Kustom';

  @override
  String get add_credit_custom_credit_text_placeholder => 'Kebiasaan';

  @override
  String get invoice_item_tip => 'Tip';

  @override
  String get invoice_item_wallet => 'Dompet';

  @override
  String get invoice_item_total => 'Total';

  @override
  String get add_credit_dialog_title => 'Tambahkan Kredit';

  @override
  String get add_credit_choose_amount => 'Pilih jumlah';

  @override
  String get action_ride_preferences => 'Preferensi Berkendara';

  @override
  String get ride_preferences_title => 'Preferensi Berkendara';

  @override
  String get action_confirm_and_continue => 'Konfirmasi & Lanjutkan';

  @override
  String get action_see_reserved_rides => 'Lihat wahana yang dipesan';

  @override
  String get ride_reserved_dialog_title => 'Perjalanan Anda sudah dipesan.';

  @override
  String get ride_reserved_dialog_body => 'Anda dapat melihat wahana yang dipesan di menu untuk melihat informasi pemesanan wahana ini.';

  @override
  String get alert_coupon_unavailable => 'Kupon tidak tersedia';

  @override
  String minutes_format(Object minutes) {
    return '$minutes menit';
  }

  @override
  String get action_back => 'Kembali';

  @override
  String wallet_card_title(Object appName) {
    return 'Dompet $appName';
  }

  @override
  String get action_redeem_gift_card => 'Tukarkan Kartu Hadiah';

  @override
  String get order_status_canceled => 'Dibatalkan';

  @override
  String get action_skip_for_now => 'Lewati untuk sekarang';

  @override
  String get onboarding_select_language_title => 'Pilih bahasa';

  @override
  String onboarding_first_page_title(Object appName) {
    return 'Selamat datang di $appName!';
  }

  @override
  String get onboarding_first_page_body => 'Layanan taksi dirancang untuk kenyamanan Anda\n memiliki Perjalanan dengan pengemudi favorit Anda dan memilih preferensi perjalanan Anda';

  @override
  String get onboarding_second_page_title => 'Dapatkan imbalan!';

  @override
  String get onboarding_second_page_body => 'dapatkan bonus tambahan untuk merujuk teman, menyelesaikan perjalanan, dan banyak lagi...';

  @override
  String get onboarding_sign_in_title => 'Masuk';

  @override
  String get onboarding_sign_in_body => 'Beberapa detik lagi untuk masuk dan memulai perjalanan yang nyaman';

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
