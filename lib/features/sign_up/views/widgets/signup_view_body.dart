// ignore_for_file: use_build_context_synchronously
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:educational_kids_game/features/Add%20Kid/presantation/view/addkid_view.dart';
import 'package:educational_kids_game/core/Notification_Service/local_notification_service.dart';
import 'package:educational_kids_game/features/sign_up/views/Sections/input_email_and_password_section.dart';
import 'package:educational_kids_game/features/sign_up/views/Sections/verify_email_section.dart';
import 'package:educational_kids_game/features/sign_up/views/widgets/awesome_widgets.dart';
import 'package:educational_kids_game/features/sign_up/views/widgets/Icon_switch.dart';
import 'package:educational_kids_game/features/sign_up/views/widgets/custom_appbar.dart';
import 'package:educational_kids_game/features/sign_up/views/widgets/custom_text.dart';
import 'package:educational_kids_game/features/sign_up/logic/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: must_be_immutable
class SignupViewBody extends StatelessWidget {
  SignupViewBody({super.key, this.email, this.password});
  String? email, password, firstname, lastname, confiempassword;
  GlobalKey<FormState> formkey = GlobalKey();
 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
        child: Form(
          key: formkey,
          child: BlocConsumer<SignUpCubit, SignUpState>(
            listener: (context, state) {
              listenerMethod(state, context);
            },
            builder: (context, state) {
              return Column(
                children: [
                  const CustomAppbar(icon: FontAwesomeIcons.chevronLeft),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(),
                  const SizedBox(
                    height: 40,
                  ),
                  InputEmailAndPasswordSection(
                    onFirstNameChanged: (data) {
                      firstname = data;
                    },
                    onLastNameChanged: (data) {
                      lastname = data;
                    },
                    onEmailChanged: (data) {
                      email = data;
                    },
                    onPasswordChanged: (data) {
                      password = data;
                    },
                    onConfirmPasswordChanged: (data) {
                      confiempassword = data;
                    },
                  ),
                  VerifyEmailSection(
                    ontap: () async {
                      signupNavigateMethod(context);
                    },
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void signupNavigateMethod(BuildContext context) {
    if (formkey.currentState!.validate()) {
      if (isSwitched == true) {
        if (confiempassword == password) {
          context
              .read<SignUpCubit>()
              .Sign_up(email: email!, password: password!);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Please Enter a same password'),
            ),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please, accept the terms and privacy policy'),
          ),
        );
      }
    }
  }

  void listenerMethod(SignUpState state, BuildContext context) async {
    if (state is SignUpLoading) {
      const CircularProgressIndicator();
    } else if (state is SignUpSuccess) {
      Navigator.pushNamed(context, AddKidView.addkidid);
      NotificationService notificationService = NotificationService();
      await notificationService.showInstantNotification(
          2, 'Welcome', 'How are you today?');
    } else if (state is SignUpFailure) {
      awesomeWidgets(context, DialogType.error, 'error', state.errmessage);
    }
  }
}
