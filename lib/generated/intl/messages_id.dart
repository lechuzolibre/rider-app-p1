// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a id locale. All the
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
  String get localeName => 'id';

  static String m0(fee) =>
      "Pembatalan layanan setelah pengemudi menerima perjalanan akan dikenakan denda pembatalan sebesar ${fee}. Apakah Anda mengkonfirmasi?";

  static String m1(company) =>
      "Hak Cipta © ${company}, Semua hak dilindungi undang-undang.";

  static String m2(distance) => "${distance} ft";

  static String m3(distance) => "${distance} km";

  static String m4(distance) => "${distance} m";

  static String m5(distance) => "${distance} mi";

  static String m6(minutes) => "${minutes} menit";

  static String m7(seconds) => "Resend code in ${seconds} seconds";

  static String m8(appName) => "Selamat datang di ${appName}!";

  static String m9(minutes) => "Tiba dalam ${minutes}";

  static String m10(duration) =>
      " Saya berharap perjalanan itu sendiri memakan waktu sekitar ${duration} menit setelah saya naik mobil pengemudi.";

  static String m11(startTime, duration) =>
      " Perjalanan telah dimulai pada ${startTime} dan saya memperkirakan perjalanan akan memakan waktu sekitar ${duration} menit";

  static String m12(firstName, lastName, mobileNumber) =>
      " Nama pengemudi saya adalah ${firstName} ${lastName} dan nomor ponselnya adalah +${mobileNumber}.";

  static String m13(destination, pickup) =>
      "Saya dalam perjalanan ke ${destination} dari ${pickup}.";

  static String m14(appName) => "Dompet ${appName}";

  static String m15(firstName) => "Halo ${firstName}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "action_add_favorite_location":
            MessageLookupByLibrary.simpleMessage("Tambahkan lokasi Favorit"),
        "action_add_photo":
            MessageLookupByLibrary.simpleMessage("Tambahkan Foto"),
        "action_apply": MessageLookupByLibrary.simpleMessage("Berlaku"),
        "action_back": MessageLookupByLibrary.simpleMessage("Kembali"),
        "action_cancel": MessageLookupByLibrary.simpleMessage("Membatalkan"),
        "action_cancel_request":
            MessageLookupByLibrary.simpleMessage("Batalkan permintaan"),
        "action_cancel_ride":
            MessageLookupByLibrary.simpleMessage("Batalkan Perjalanan"),
        "action_choose_on_map":
            MessageLookupByLibrary.simpleMessage("pilih di peta"),
        "action_confirm": MessageLookupByLibrary.simpleMessage("Mengonfirmasi"),
        "action_confirm_and_continue":
            MessageLookupByLibrary.simpleMessage("Konfirmasi & Lanjutkan"),
        "action_confirm_and_pay":
            MessageLookupByLibrary.simpleMessage("Konfirmasi & Bayar"),
        "action_confirm_and_reserve_ride": MessageLookupByLibrary.simpleMessage(
            "Konfirmasi & Reservasi perjalanan"),
        "action_confirm_location":
            MessageLookupByLibrary.simpleMessage("Konfirmasi lokasi"),
        "action_continue": MessageLookupByLibrary.simpleMessage("Melanjutkan"),
        "action_coupon_code":
            MessageLookupByLibrary.simpleMessage("Kode Kupon"),
        "action_delete": MessageLookupByLibrary.simpleMessage("Menghapus"),
        "action_delete_account":
            MessageLookupByLibrary.simpleMessage("Hapus akun"),
        "action_edit": MessageLookupByLibrary.simpleMessage("Sunting"),
        "action_next": MessageLookupByLibrary.simpleMessage("Lanjut"),
        "action_ok": MessageLookupByLibrary.simpleMessage("Oke"),
        "action_pay_for_ride":
            MessageLookupByLibrary.simpleMessage("Bayar untuk perjalanan"),
        "action_redeem_gift_card":
            MessageLookupByLibrary.simpleMessage("Tukarkan Kartu Hadiah"),
        "action_resend_code":
            MessageLookupByLibrary.simpleMessage("Resend Code"),
        "action_ride_options":
            MessageLookupByLibrary.simpleMessage("Opsi Perjalanan"),
        "action_ride_preferences":
            MessageLookupByLibrary.simpleMessage("Preferensi Berkendara"),
        "action_save": MessageLookupByLibrary.simpleMessage("Menyimpan"),
        "action_see_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Lihat wahana yang dipesan"),
        "action_send_feedback":
            MessageLookupByLibrary.simpleMessage("Kirim Umpan Balik"),
        "action_set_location":
            MessageLookupByLibrary.simpleMessage("Tetapkan Lokasi"),
        "action_skip_for_now":
            MessageLookupByLibrary.simpleMessage("Lewati untuk sekarang"),
        "add_credit_choose_amount":
            MessageLookupByLibrary.simpleMessage("Pilih jumlah"),
        "add_credit_custom_credit_placeholder":
            MessageLookupByLibrary.simpleMessage("Tambahkan Kredit Kustom"),
        "add_credit_custom_credit_text_placeholder":
            MessageLookupByLibrary.simpleMessage("Kebiasaan"),
        "add_credit_dialog_title":
            MessageLookupByLibrary.simpleMessage("Tambahkan Kredit"),
        "add_credit_select_payment_method":
            MessageLookupByLibrary.simpleMessage("Pilih metode pembayaran:"),
        "add_stop": MessageLookupByLibrary.simpleMessage("Tambahkan Berhenti"),
        "alert_coupon_unavailable":
            MessageLookupByLibrary.simpleMessage("Kupon tidak tersedia"),
        "announcements_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Kami akan memberi tahu Anda ketika ada pengumuman baru."),
        "announcements_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Belum ada Pengumuman!"),
        "button_ride_safety":
            MessageLookupByLibrary.simpleMessage("Keamanan Berkendara"),
        "cancelation_fee_confirmation_body": m0,
        "complaint_submit_error_message": MessageLookupByLibrary.simpleMessage(
            "The submission of your complaint was unsuccessful, likely due to connectivity issues. Please try again."),
        "complaint_submit_success_message": MessageLookupByLibrary.simpleMessage(
            "Pengaduan disampaikan. Harap tunggu kontak dari perwakilan dukungan kami tentang pertanyaan Anda."),
        "confirm": MessageLookupByLibrary.simpleMessage("Mengonfirmasi"),
        "copyright_notice": m1,
        "create_address_name_empty_error": MessageLookupByLibrary.simpleMessage(
            "Silakan masukkan nama lokasi"),
        "create_address_title_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Judul"),
        "current_location":
            MessageLookupByLibrary.simpleMessage("Lokasi saat ini"),
        "distanceFeet": m2,
        "distanceKm": m3,
        "distanceMeters": m4,
        "distanceMiles": m5,
        "enter_coupon_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Masukkan kode kupon Anda untuk diterapkan ke harga"),
        "enter_coupon_dialog_title":
            MessageLookupByLibrary.simpleMessage("Kode Kupon"),
        "enter_coupon_placeholder":
            MessageLookupByLibrary.simpleMessage("Masukkan kode kupon"),
        "enum_address_type_cafe": MessageLookupByLibrary.simpleMessage("Kafe"),
        "enum_address_type_gym": MessageLookupByLibrary.simpleMessage("Gym"),
        "enum_address_type_home": MessageLookupByLibrary.simpleMessage("Rumah"),
        "enum_address_type_other":
            MessageLookupByLibrary.simpleMessage("Lainnya"),
        "enum_address_type_parent_house":
            MessageLookupByLibrary.simpleMessage("Rumah orang tua"),
        "enum_address_type_park": MessageLookupByLibrary.simpleMessage("Taman"),
        "enum_address_type_partner":
            MessageLookupByLibrary.simpleMessage("Mitra"),
        "enum_address_type_work": MessageLookupByLibrary.simpleMessage("Kerja"),
        "enum_gender_female": MessageLookupByLibrary.simpleMessage("Perempuan"),
        "enum_gender_male": MessageLookupByLibrary.simpleMessage("Pria"),
        "enum_gender_unknown":
            MessageLookupByLibrary.simpleMessage("Tidak dikenal"),
        "enum_rider_transaction_deduct_correction":
            MessageLookupByLibrary.simpleMessage("Koreksi"),
        "enum_rider_transaction_deduct_order_fee":
            MessageLookupByLibrary.simpleMessage("Biaya Pemesanan"),
        "enum_rider_transaction_deduct_withdraw":
            MessageLookupByLibrary.simpleMessage("Menarik"),
        "enum_rider_transaction_recharge_bank_transfer":
            MessageLookupByLibrary.simpleMessage("Transfer Bank"),
        "enum_rider_transaction_recharge_correction":
            MessageLookupByLibrary.simpleMessage("Koreksi"),
        "enum_rider_transaction_recharge_gift":
            MessageLookupByLibrary.simpleMessage("Hadiah"),
        "enum_rider_transaction_recharge_in_app_payment":
            MessageLookupByLibrary.simpleMessage("Pembayaran dalam Aplikasi"),
        "enum_unknown": MessageLookupByLibrary.simpleMessage("tidak diketahui"),
        "error_field_cant_be_empty":
            MessageLookupByLibrary.simpleMessage("Tidak boleh kosong"),
        "error_region_unsupported":
            MessageLookupByLibrary.simpleMessage("Wilayah tidak didukung."),
        "favorite_location_details_title": MessageLookupByLibrary.simpleMessage(
            "Beri nama lokasi favorit Anda"),
        "favorite_locations_list_body": MessageLookupByLibrary.simpleMessage(
            "Anda dapat menyimpan lokasi favorit Anda untuk akses yang lebih mudah"),
        "favorite_locations_list_title":
            MessageLookupByLibrary.simpleMessage("Lokasi favorit"),
        "gift_card_body": MessageLookupByLibrary.simpleMessage(
            "Masukkan kode kartu hadiah Anda"),
        "gift_card_text_placeholder":
            MessageLookupByLibrary.simpleMessage("Masukkan kode kartu hadiah"),
        "gift_card_title":
            MessageLookupByLibrary.simpleMessage("Masukkan Kode Hadiah"),
        "invoice_item_tip": MessageLookupByLibrary.simpleMessage("Tip"),
        "invoice_item_total": MessageLookupByLibrary.simpleMessage("Total"),
        "invoice_item_wallet": MessageLookupByLibrary.simpleMessage("Dompet"),
        "issue_description_placeholder": MessageLookupByLibrary.simpleMessage(
            "Tulis deskripsi masalah Anda..."),
        "issue_subject_placeholder":
            MessageLookupByLibrary.simpleMessage("Subjek"),
        "issue_submit_button":
            MessageLookupByLibrary.simpleMessage("Laporkan masalah"),
        "issue_submit_description": MessageLookupByLibrary.simpleMessage(
            "Anda dapat melaporkan masalah apa pun yang Anda alami dengan perjalanan Anda. Kami akan membantu Anda dengan masalah dalam panggilan."),
        "issue_submit_title":
            MessageLookupByLibrary.simpleMessage("Laporkan masalah"),
        "languageSettings":
            MessageLookupByLibrary.simpleMessage("Language Settings"),
        "loading": MessageLookupByLibrary.simpleMessage("Memuat"),
        "location_not_found_alert_dialog_body":
            MessageLookupByLibrary.simpleMessage(
                "Kami tidak bisa mendapatkan lokasi Anda saat ini menggunakan GPS perangkat Anda. Silakan periksa izin lokasi perangkat untuk aplikasi dari pengaturan perangkat. Atau, Anda dapat menggunakan kolom pencarian di atas untuk memilih titik penjemputan Anda."),
        "location_not_found_alert_dialog_title":
            MessageLookupByLibrary.simpleMessage("Lokasi"),
        "login_body": MessageLookupByLibrary.simpleMessage(
            "Pertama, Anda harus masuk untuk memesan perjalanan Anda. Kode verifikasi akan dikirimkan ke nomor telepon Anda."),
        "login_cell_number_empty_error": MessageLookupByLibrary.simpleMessage(
            "Silakan masukkan nomor telepon dalam format yang benar"),
        "login_cell_number_textfield_hint":
            MessageLookupByLibrary.simpleMessage("Nomor handphone"),
        "login_enter_phone_subtitle": MessageLookupByLibrary.simpleMessage(
            "To begin booking your ride, please sign in first. We will then send a code to your phone number."),
        "login_title": MessageLookupByLibrary.simpleMessage("Masuk"),
        "login_verify_code_body": MessageLookupByLibrary.simpleMessage(
            "Kode telah dikirim ke nomor telepon Anda"),
        "login_verify_code_title":
            MessageLookupByLibrary.simpleMessage("Memasukkan kode"),
        "looking_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Kami sedang mencari driver terdekat untuk Anda."),
        "looking_dialog_title":
            MessageLookupByLibrary.simpleMessage("Naik Diminta"),
        "mapSettings": MessageLookupByLibrary.simpleMessage("Map Settings"),
        "menu_about": MessageLookupByLibrary.simpleMessage("Tentang"),
        "menu_announcements":
            MessageLookupByLibrary.simpleMessage("Pengumuman"),
        "menu_login": MessageLookupByLibrary.simpleMessage("Gabung"),
        "menu_logout": MessageLookupByLibrary.simpleMessage("Keluar"),
        "menu_profile": MessageLookupByLibrary.simpleMessage("Profil"),
        "menu_reserved_rides":
            MessageLookupByLibrary.simpleMessage("Wahana yang Dipesan"),
        "menu_saved_locations":
            MessageLookupByLibrary.simpleMessage("Lokasi Tersimpan"),
        "menu_trip_history":
            MessageLookupByLibrary.simpleMessage("Sejarah Perjalanan"),
        "menu_wallet": MessageLookupByLibrary.simpleMessage("Dompet"),
        "menu_website": MessageLookupByLibrary.simpleMessage("Situs web"),
        "message_body_location": MessageLookupByLibrary.simpleMessage(
            "Kami tidak bisa mendapatkan lokasi Anda saat ini dari GPS perangkat Anda. Silakan gunakan bidang pencarian untuk memilih lokasi penjemputan Anda."),
        "message_delete_account_body": MessageLookupByLibrary.simpleMessage(
            "Apakah Anda yakin ingin menghapus akun Anda? Anda dapat masuk lagi dalam waktu 30 hari untuk memulihkan akun. Setelah periode ini, data Anda akan dihapus sepenuhnya, termasuk semua sisa kredit Anda."),
        "message_delete_account_title":
            MessageLookupByLibrary.simpleMessage("Penghapusan akun"),
        "message_notification_permission_denined_message":
            MessageLookupByLibrary.simpleMessage(
                "Izin pemberitahuan ditolak sebelumnya. Untuk mendapatkan notifikasi pesanan baru, Anda dapat mengaktifkan izin dari pengaturan aplikasi."),
        "message_notification_permission_title":
            MessageLookupByLibrary.simpleMessage("Izin Pemberitahuan"),
        "message_title_location":
            MessageLookupByLibrary.simpleMessage("Lokasi"),
        "message_title_warning":
            MessageLookupByLibrary.simpleMessage("Peringatan"),
        "minutes_format": m6,
        "notice_resend_code_in_seconds": m7,
        "notice_tip_description": MessageLookupByLibrary.simpleMessage(
            "Menambahkan tip adalah opsional. Anda dapat menambahkan jumlah berapa pun yang Anda suka sebagai tip untuk pengemudi."),
        "notice_tip_title": MessageLookupByLibrary.simpleMessage(
            "Apakah Anda ingin menambahkan tip?"),
        "onboarding_first_page_body": MessageLookupByLibrary.simpleMessage(
            "Layanan taksi dirancang untuk kenyamanan Anda\n memiliki Perjalanan dengan pengemudi favorit Anda dan memilih preferensi perjalanan Anda"),
        "onboarding_first_page_title": m8,
        "onboarding_second_page_body": MessageLookupByLibrary.simpleMessage(
            "dapatkan bonus tambahan untuk merujuk teman, menyelesaikan perjalanan, dan banyak lagi..."),
        "onboarding_second_page_title":
            MessageLookupByLibrary.simpleMessage("Dapatkan imbalan!"),
        "onboarding_select_language_title":
            MessageLookupByLibrary.simpleMessage("Pilih bahasa"),
        "onboarding_sign_in_body": MessageLookupByLibrary.simpleMessage(
            "Beberapa detik lagi untuk masuk dan memulai perjalanan yang nyaman"),
        "onboarding_sign_in_title":
            MessageLookupByLibrary.simpleMessage("Masuk"),
        "order_status_arriving_in": m9,
        "order_status_canceled":
            MessageLookupByLibrary.simpleMessage("Dibatalkan"),
        "order_status_should_be_arrived":
            MessageLookupByLibrary.simpleMessage("harus tiba"),
        "payment_in_cash": MessageLookupByLibrary.simpleMessage("Uang tunai"),
        "payment_method_title":
            MessageLookupByLibrary.simpleMessage("Cara Pembayaran"),
        "placeholder_type": MessageLookupByLibrary.simpleMessage("Jenis"),
        "profile_email": MessageLookupByLibrary.simpleMessage("Surel"),
        "profile_firstname": MessageLookupByLibrary.simpleMessage("Nama depan"),
        "profile_gender": MessageLookupByLibrary.simpleMessage("Jenis kelamin"),
        "profile_lastname":
            MessageLookupByLibrary.simpleMessage("Nama keluarga"),
        "rate_ride_body": MessageLookupByLibrary.simpleMessage(
            "Bantu kami meningkatkan pengalaman Anda dengan menilai pengemudi Anda"),
        "rate_ride_comment_placeholder":
            MessageLookupByLibrary.simpleMessage("tulis komentarmu..."),
        "rate_ride_comment_title":
            MessageLookupByLibrary.simpleMessage("Tambahkan komentar"),
        "rate_ride_good_points":
            MessageLookupByLibrary.simpleMessage("Poin Bagus"),
        "rate_ride_negative_points":
            MessageLookupByLibrary.simpleMessage("Poin Negatif"),
        "rate_ride_title":
            MessageLookupByLibrary.simpleMessage("Bagaimana perjalanan Anda?"),
        "register_title_name": MessageLookupByLibrary.simpleMessage("Name"),
        "register_title_verify_number":
            MessageLookupByLibrary.simpleMessage("Verify number"),
        "reservation_empty_state_body": MessageLookupByLibrary.simpleMessage(
            "Anda akan dapat melihat pemesanan berikutnya setelah Anda membuatnya di layar utama."),
        "reservation_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Tidak ada pemesanan!"),
        "ride_options_title":
            MessageLookupByLibrary.simpleMessage("Opsi Perjalanan"),
        "ride_options_wait_time_action":
            MessageLookupByLibrary.simpleMessage("Waktu tunggu"),
        "ride_preferences_title":
            MessageLookupByLibrary.simpleMessage("Preferensi Berkendara"),
        "ride_reserved_dialog_body": MessageLookupByLibrary.simpleMessage(
            "Anda dapat melihat wahana yang dipesan di menu untuk melihat informasi pemesanan wahana ini."),
        "ride_reserved_dialog_title": MessageLookupByLibrary.simpleMessage(
            "Perjalanan Anda sudah dipesan."),
        "ride_safety_share_trip_information":
            MessageLookupByLibrary.simpleMessage(
                "Bagikan informasi perjalanan"),
        "ride_safety_sos": MessageLookupByLibrary.simpleMessage("SOS"),
        "ride_safety_title":
            MessageLookupByLibrary.simpleMessage("Keamanan Berkendara"),
        "service_selection_book_now":
            MessageLookupByLibrary.simpleMessage("Pesan sekarang"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "share_trip_not_arrived_time": m10,
        "share_trip_started_time": m11,
        "share_trip_text_driver": m12,
        "share_trip_text_locations": m13,
        "sos_body": MessageLookupByLibrary.simpleMessage(
            "Sinyal marabahaya adalah untuk keadaan darurat dan panggilan ke pihak berwenang seperti polisi mungkin dilakukan atas nama Anda. Harap gunakan fitur ini hanya dalam keadaan darurat yang mungkin membuat Anda dalam bahaya."),
        "sos_ok_action": MessageLookupByLibrary.simpleMessage("Ini darurat"),
        "sos_send_error": MessageLookupByLibrary.simpleMessage(
            "There was a problem encountered while attempting to send your SOS signal. Please make another attempt or contact 911 directly."),
        "sos_sent_alert": MessageLookupByLibrary.simpleMessage("SOS dikirim"),
        "sos_title": MessageLookupByLibrary.simpleMessage("Sinyal marabahaya"),
        "status_title_driver_arrived": MessageLookupByLibrary.simpleMessage(
            "Temui pengemudi di titik penjemputan"),
        "status_title_trip_started":
            MessageLookupByLibrary.simpleMessage("Menuju ke tujuan"),
        "terms_and_condition_button":
            MessageLookupByLibrary.simpleMessage("Syarat & Ketentuan"),
        "terms_and_condition_text": MessageLookupByLibrary.simpleMessage(
            "Saya telah membaca dan setuju dengan"),
        "textbox_error_select_type_address":
            MessageLookupByLibrary.simpleMessage("Silakan pilih jenis alamat"),
        "title_reserve_ride":
            MessageLookupByLibrary.simpleMessage("Pesan Perjalanan"),
        "title_wait_time": MessageLookupByLibrary.simpleMessage("Waktu tunggu"),
        "top_up_sheet_pay_button":
            MessageLookupByLibrary.simpleMessage("Membayar"),
        "trip_history_empty_state_message":
            MessageLookupByLibrary.simpleMessage(
                "Tidak ada pesanan sebelumnya yang dicatat."),
        "trip_history_empty_state_title":
            MessageLookupByLibrary.simpleMessage("Tidak Ada Catatan!"),
        "trip_information_title":
            MessageLookupByLibrary.simpleMessage("Informasi Perjalanan"),
        "verify_phone_code_empty_message": MessageLookupByLibrary.simpleMessage(
            "Kode verifikasi tidak dimasukkan."),
        "wallet_activities_heading":
            MessageLookupByLibrary.simpleMessage("Aktivitas"),
        "wallet_card_title": m14,
        "wallet_empty_state_message": MessageLookupByLibrary.simpleMessage(
            "Tidak ada sejarah yang tercatat."),
        "welcome_card_greeting": m15,
        "welcome_card_subtitle":
            MessageLookupByLibrary.simpleMessage("Kemana kamu pergi?"),
        "welcome_card_textbox_placeholder":
            MessageLookupByLibrary.simpleMessage("Di mana tujuan Anda?"),
        "your_destination": MessageLookupByLibrary.simpleMessage("Tujuan Anda")
      };
}
