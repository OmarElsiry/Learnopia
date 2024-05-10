import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  // ignore: non_constant_identifier_names
  Future<void> Sign_In(
      {required String email, required String password}) async {
    emit(SignInLoading(isLoading: true));
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(SignInSuccess());
      emit(SignInLoading(isLoading: false));
    } on FirebaseAuthException {
      emit(SignInLoading(isLoading: false));
      emit(SignInFailure(errmessage: 'Incorrect email or password'));
    } catch (e) {
      emit(SignInFailure(
          errmessage: 'An unexpected error occurred. Please try again later.'));
      emit(SignInLoading(isLoading: false));
    } finally {
      emit(SignInLoading(isLoading: false));
    }
  }
}
