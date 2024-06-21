// ignore_for_file: use_build_context_synchronously
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:educational_kids_game/features/Add%20Kid/presantation/view/addkid_view.dart';
import 'package:educational_kids_game/features/Notification_Service/local_notification_service.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/Sections/input_email_and_password_section.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/Sections/verify_email_section.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/awesome_widgets.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/icon_switch.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/custom_appbar.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/custom_text.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views_model/sign%20up%20cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ignore: must_be_immutable
class SignupViewBody extends StatelessWidget {
  SignupViewBody({super.key, this.email, this.password});
  String? email, password, firstname, lastname, confiempassword;
  GlobalKey<FormState> formkey = GlobalKey();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
          child: Form(
            key: formkey,
            child: BlocConsumer<SignUpCubit, SignUpState>(
              listener: (context, state) {
                Listener_method(state, context);
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
                    VerifyEmailSection(ontap: () async {
                      Sign_up_navigate_method(context);
                    })
                    /******************************** */
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void Sign_up_navigate_method(BuildContext context) {
    if (formkey.currentState!.validate()) {
      if (isSwitched == true) {
        if (confiempassword == password) {
          BlocProvider.of<SignUpCubit>(context)
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

  // ignore: non_constant_identifier_names
  void Listener_method(SignUpState state, BuildContext context) async {
    if (state is SignUpLoading) {
      isloading = true;
    } else if (state is SignUpSuccess) {
      Navigator.pushNamed(context, AddKidView.addkidid);
      isloading = false;
      NotificationService notificationService = NotificationService();
      await notificationService.showInstantNotification(
          2, 'Welcome', 'How are you today?');
    } else if (state is SignUpFailure) {
      awesomeWidgets(context, DialogType.error, 'error', state.errmessage);
      isloading = false;
    }
  }
}
