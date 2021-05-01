import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class CustomPinCodeInput extends StatelessWidget {
  const CustomPinCodeInput({
    Key key,
    @required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: formKey,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: PinCodeTextField(
              pinBoxBorderWidth: 1,
              pinBoxColor: Color(0xfffaf8fb),
              pinBoxHeight: 64,
              pinBoxWidth: 67,
              // pinBoxOuterPadding: EdgeInsets.only(left: 20),

              pinBoxRadius: 10,
              pinBoxDecoration: (borderColor, pinBoxColor,
                  {borderWidth, radius}) {
                return BoxDecoration(
                  color: Color(0xfffaf8fb),
                  borderRadius: BorderRadius.circular(10),
                );
              },
            )),
      ),
    );
  }
}
