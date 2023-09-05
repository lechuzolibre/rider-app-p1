import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<void> verifyPhoneNumber(
      String phoneNumber,
      int? resendToken,
      Function(String verificationId, int? resendToken) onCodeSent,
      Function(String firebaseToken) onVerificationCompleted,
      Function(String message) onError) async {
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 120),
      verificationCompleted: (PhoneAuthCredential credential) async {
        final credentials =
            await _firebaseAuth.signInWithCredential(credential);
        final String firebaseToken = await credentials.user!.getIdToken();
        onVerificationCompleted(firebaseToken);
      },
      verificationFailed: (FirebaseAuthException e) {
        onError(e.message ?? 'An error occurred!');
      },
      codeSent: (String verificationId, int? resendToken) {
        onCodeSent(verificationId, resendToken);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Future<void> verifyPhoneNumberWithCode(String verificationId, String smsCode,
      Function(String uid) onSignedIn, Function(String message) onError) async {
    final PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );
    try {
      final credentials = await _firebaseAuth.signInWithCredential(credential);
      final firebaseToken = await credentials.user?.getIdToken();
      if (firebaseToken != null) {
        onSignedIn(firebaseToken);
      } else {
        onError('An error occurred!');
      }
    } on FirebaseAuthException catch (e) {
      onError(e.message ?? 'An error occurred!');
    }
  }
}
