import 'package:flutter/material.dart';
import 'package:health_pal/features/auth/presentation/screens/forgot_password.dart';
import 'package:health_pal/features/auth/presentation/screens/signup.dart';
import 'package:health_pal/features/auth/presentation/widgets/text_field_with_icon.dart';
import 'package:health_pal/features/auth/presentation/widgets/third_party_signin_button.dart';
import 'package:health_pal/features/home/presentation/screens/home.dart';
import 'package:health_pal/shared/presentation/widgets/custom_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Spacer(),
              Image.asset("assets/images/healthpal_logo_black.png"),
              Spacer(),
              Text(
                "Hi, Welcome Back!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text(
                "Hope you're doing fine.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),
              Spacer(),

              TextFieldWithIcon(
                hintText: 'Your Email',
                icon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {},
              ),

              SizedBox(height: 16),
              TextFieldWithIcon(
                hintText: 'Password',
                icon: Icons.lock_outline,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {},
              ),
              Spacer(),

              CustomButton(
                text: "Sign In",
                backgroundColor: Color.fromRGBO(28, 42, 58, 1),
                textColor: Color.fromRGBO(255, 255, 255, 1),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
              ),
              Spacer(),

              Row(
                children: [
                  Expanded(child: Divider(thickness: 2, color: Colors.grey)),
                  SizedBox(width: 16),
                  Text("or", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 16),
                  Expanded(child: Divider(thickness: 2, color: Colors.grey)),
                ],
              ),
              Spacer(),

              ThirdPartySigninButton(
                labeltext: "Sign in with Google",
                sourceFile:
                    "http://pngimg.com/uploads/google/google_PNG19635.png",
              ),
              ThirdPartySigninButton(
                labeltext: "Sign in with Facebook",
                sourceFile:
                    "https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19750.png",
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPassword(),
                    ),
                  );
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account yet?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
