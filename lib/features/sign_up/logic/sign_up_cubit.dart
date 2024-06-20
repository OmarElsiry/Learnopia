// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:educational_kids_game/features/Add%20Kid/presantation/view/addkid_view.dart';
import 'package:educational_kids_game/core/Notification_Service/local_notification_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  Future<void> Sign_up(
      {required String email, required String password}) async {
    emit(SignUpLoading());
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      emit(SignUpSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        emit(SignUpFailure(errmessage: 'email already in use'));
      }
    } catch (e) {
      emit(SignUpFailure(errmessage: 'An error , please try agian later'));
    }
  }

  Future signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return;
      }
      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential
      await FirebaseAuth.instance.signInWithCredential(credential);

      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, AddKidView.addkidid);
      NotificationService notificationService = NotificationService();
      await notificationService.showInstantNotification(
          5, 'Welcome', 'How are you today?');
    } on Exception {
      NotificationService notificationService = NotificationService();
      await notificationService.showInstantNotification(
          6, 'Sorry', 'Please tru leater!');
    }
  }
}
