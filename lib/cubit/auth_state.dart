import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {}

class AuthInitialState extends AuthState {}

class AuthLoginState extends AuthState {
  final User firebaseUser;

  AuthLoginState({required this.firebaseUser});
}

class AuthLogOutState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthErrorState extends AuthState {
  final String error;
  AuthErrorState({required this.error});
}

class AuthCodeSentState extends AuthState {}

class AuthCodeVerified extends AuthState {}
