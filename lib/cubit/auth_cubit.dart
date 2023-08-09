import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_signin/cubit/auth_state.dart';

class AuthCubit extends Cubit {
  FirebaseAuth auth = FirebaseAuth.instance;
  String? _verificationId;
  AuthCubit() : super(AuthInitialState()) {
    void sendOtp(String phoneNumber) async {
      emit(AuthLoadingState());
      await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        codeSent: (String verificationId, int? forceResendingToken) {
          _verificationId = verificationId;
          emit(AuthCodeSentState());
        },
        verificationCompleted: (phoneAuthCredential) {
          signInWithPhone(phoneAuthCredential);
        },
        verificationFailed: (error) {
          emit(AuthErrorState(error: error.message.toString()));
        },
        codeAutoRetrievalTimeout: (verificationId) {
          _verificationId = verificationId;
        },
      );
    }
  }
  void verifyOtp(String otp) async {
    emit(AuthLoadingState());
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationId!, smsCode: otp);
    signInWithPhone(credential);
  }

  void signInWithPhone(PhoneAuthCredential credential) async {
    try {
      UserCredential userCredential =
          await auth.signInWithCredential(credential);
      if (userCredential.user != null) {
        emit(AuthLoginState(firebaseUser: userCredential.user!));
      }
    } on FirebaseAuthException catch (error) {
      emit(AuthErrorState(error: error.message.toString()));
    }
  }
}
