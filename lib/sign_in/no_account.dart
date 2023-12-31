import 'package:app0/sign_up/sign_up.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

/// class to repesent no account text

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap: () => {Get.to(SignUpScreen())},
          child: Text(
            "Sign Up",
            style: TextStyle(fontSize: 16, color: Colors.green),
          ),
        ),
      ],
    );
  }
}
