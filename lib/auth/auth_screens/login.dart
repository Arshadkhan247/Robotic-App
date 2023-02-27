import 'package:flutter/material.dart';
import 'package:lab_lms/Screens/dashboard.dart';
import 'package:lab_lms/auth/auth_screens/sign_up.dart';
import 'package:lab_lms/auth/widgets/input_form_widget.dart';
import 'package:lab_lms/auth/widgets/drone_image_widget.dart';
import 'package:lab_lms/auth/widgets/signup_login_widget.dart';
import 'package:lab_lms/auth/widgets/reserved_text_widget.dart';
import 'package:lab_lms/auth/widgets/top_reuseabele_widget.dart';
import 'package:lab_lms/auth/widgets/google_facebook_widget.dart';
import 'package:lab_lms/auth/widgets/account_signlogin_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(top: 16, left: 12, right: 12),
          child: Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // this row for top three icons.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      TopImageWidget(
                        imag: 'assets/pulse.png',
                        height: 20,
                      ),
                      TopImageWidget(
                        imag: 'assets/persons.png',
                        height: 15,
                      ),
                      TopImageWidget(
                        imag: 'assets/malefemale.png',
                        height: 15,
                      ),
                    ],
                  ),

                  // drone logo

                  const DroneImageWidget(),
                  const SizedBox(height: 8.0),

                  // form for username
                  InputFormWidget(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Email';
                      }
                    },
                    controller: emailController,
                    icon: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Username',
                    obscureText: false,
                  ),
                  const SizedBox(height: 20.0),

                  // form for password

                  InputFormWidget(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Email';
                      }
                    },
                    controller: passwordController,
                    icon: const Icon(
                      Icons.visibility_off,
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 20.0),

                  // botton for sign Up
                  GestureDetector(
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const DashBoardScreen(),
                          ),
                        );
                      }
                    },

                    // Button widget...
                    child: SignAndLoginButtonWidget(nameOfButton: 'Login'),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    'OR',
                    style: TextStyle(
                      color: Color.fromARGB(255, 40, 120, 241),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    'Login With',
                    style: TextStyle(
                      color: Color.fromARGB(255, 40, 120, 241),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    height: 18,
                  ),
                  const GoogleAndFacebookWidget(),
                  const SizedBox(
                    height: 18,
                  ),
                  AccountAndTextWidget(
                    accText: 'I don\'t have an account ',
                    navText: 'Sign Up',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 13,
                  ),

                  const ReservedTextWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
