import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

int levelcount = 1;

class ViewOtp extends StatefulWidget {
  const ViewOtp({super.key});

  @override
  State<ViewOtp> createState() => _ViewOtpState();
}

class _ViewOtpState extends State<ViewOtp> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
  bool success = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OtpPinField(
          keyboardType: TextInputType.name,
          key: _otpPinFieldController,
          autoFillEnable: false,
          textInputAction: TextInputAction.done,
          onSubmit: (data) {
            if (data == "lion" ||
                data == "Bear" ||
                data == "Wolf" ||
                data == 'Duck') {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Success! You entered "$data".')),
              );
              setState(() {
                success = true;
                levelcount += 1;
              });
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Fauiler please try again!'),
                ),
              );
              setState(() {
                success = false;
              });
            }
          },
          onChange: (text) {},

          /// to decorate your Otp_Pin_Field
          otpPinFieldStyle: OtpPinFieldStyle(
            /// border color for inactive/unfocused Otp_Pin_Field
            defaultFieldBorderColor:
                success == true ? Colors.green : Colors.red,

            /// border color for active/focused Otp_Pin_Field
            activeFieldBorderColor: Colors.indigo,

            /// Background Color for inactive/unfocused Otp_Pin_Field
            defaultFieldBackgroundColor: Colors.yellow,

            /// Background Color for active/focused Otp_Pin_Field
            activeFieldBackgroundColor: Colors.cyanAccent,

            /// Background Color for filled field pin box
            filledFieldBackgroundColor: Colors.green,

            // filledFieldBorderColor: Colors.red,
          ),
          maxLength: 4,

          /// no of pin field
          showCursor: true,

          /// bool to show cursor in pin field or not
          cursorColor: Colors.indigo,

          /// to choose cursor color
          upperChild: const Column(
            children: [
              SizedBox(height: 30),
              Icon(Icons.flutter_dash_outlined, size: 150),
              SizedBox(height: 20),
            ],
          ),
        )
      ],
    );
  }
}
