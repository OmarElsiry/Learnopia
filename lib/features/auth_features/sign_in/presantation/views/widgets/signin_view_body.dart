import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:educational_kids_game/features/Add%20Kid/presantation/view/addkid_view.dart';
import 'package:educational_kids_game/features/Notification_Service/local_notification_service.dart';
import 'package:educational_kids_game/features/auth_features/sign_in/presantation/view_models/Sign_in_cubit/sign_in_cubit.dart';

import 'package:educational_kids_game/features/auth_features/sign_in/presantation/views/sections/app_bar_section.dart';
import 'package:educational_kids_game/features/auth_features/sign_in/presantation/views/sections/input_email_and_password.dart';
import 'package:educational_kids_game/features/auth_features/sign_in/presantation/views/sections/verify_email_to_login_and_navigate_section.dart';
import 'package:educational_kids_game/features/auth_features/sign_in/presantation/views/widgets/check_box.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/Awesome_widgets.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ignore: must_be_immutable
class SigninViewBody extends StatelessWidget {
  SigninViewBody({super.key, this.email, this.password});
  String? email, password;
  GlobalKey<FormState> formkey = GlobalKey();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        Listener_Method(state, context);
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isloading,
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  const AppBarSection(),
                  const SizedBox(
                    height: 50,
                  ),
                  InputEmailandpassword(
                    onchangedforemail: (data) {
                      email = data;
                    },
                    onchangedforpassword: (data) {
                      password = data;
                    },
                  ),
                  VerifyEmailToLoginAndNavigateSection(
                    onTap: () async => Chack_for_navigate_method(context),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  void Chack_for_navigate_method(BuildContext context) {
    if (formkey.currentState!.validate()) {
      if (isChecked == true) {
        BlocProvider.of<SignInCubit>(context)
            .Sign_In(email: email!, password: password!);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please, accept the terms and privacy policy'),
          ),
        );
      }
    }
  }

  // ignore: non_constant_identifier_names
  void Listener_Method(SignInState state, BuildContext context) async {
    if (state is SignInLoading) {
      isloading = state.isLoading;
    } else if (state is SignInSuccess) {
      Navigator.pushNamed(context, AddKidView.addkidid);
      NotificationService notificationService = NotificationService();
      await notificationService.showInstantNotification(
          2, 'Welcome back', 'How are you today');
    } else if (state is SignInFailure) {
      Awesome_widgets(context, DialogType.error, 'error', state.errmessage);
    }
  }
}
