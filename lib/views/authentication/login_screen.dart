import 'package:flutter/material.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/rectangle_button.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/reusable_email_box.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/resusable_appbar_login.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/reusable_password_box.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';
import 'package:food_delivery_app/views/access_location_screen/location_screen.dart';
import 'package:food_delivery_app/views/authentication/forgot_password.dart';
import 'package:food_delivery_app/views/authentication/sign_up_screen.dart';
import 'package:get_storage_pro/get_storage_pro.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool rememberCheckBoxState = true;
  final storageServices = GetStorage();
  bool loginStatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColors.appPrimaryWhite,
      body: Stack(
        children: [
          // custom appbar...
          SizedBox(
            height: MediaQuery.of(context).size.height * 100,
            child: AppBarLogin(
              text: 'Log In',
              title: "Please sign in to your existing account",
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.30,
            left: 0,
            right: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 7.09,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                elevation: 0,
                color: SColors.appPrimaryWhite,
                child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 51,
                          left: 22,
                          right: 22,
                          bottom: 16,
                        ),
                        child: Column(
                          children: [
                            InputBox(
                              inputName: 'example@gmail.com',
                              inputTitle: 'EMAIL',
                              controllerName: _emailController,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            InputPassword(
                              inputName: '',
                              inputTitle: 'PASSWORD',
                              controllerName: _passwordController,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            _forgotPassword(),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            RectangleButton(
                              color: SColors.nextButtonOrange,
                              name: 'LOG IN',
                              textColor: SColors.appPrimaryWhite,
                              height: MediaQuery.of(context).size.height * 0.07,
                               width: MediaQuery.of(context).size.width * 0.90,
                              onPressed: () {
                                storageServices.write('loginStatus', true);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LocationScreen(),
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                            _signUpText(),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            _iconsOfSocialMedia(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // custom methods of return type of widget...
  Widget _forgotPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            // check box...
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width * 0.02,
              child: Checkbox(
                value: rememberCheckBoxState,
                activeColor: SColors.nextButtonOrange,
                onChanged: (value) {
                  if (rememberCheckBoxState) {
                    setState(() {
                      rememberCheckBoxState = false;
                    });
                  } else {
                    setState(() {
                      rememberCheckBoxState = true;
                    });
                  }
                },
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            Text(
              'Remember me',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'FontSen',
                fontWeight: FontWeight.w500,
                color: SColors.textGrey,
              ),
            ),
          ],
        ),

        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ForgotPassword()),
            );
          },
          child: Text(
            'Forgot Password',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'FontSen',
              fontWeight: FontWeight.w500,
              color: SColors.nextButtonOrange,
            ),
          ),
        ),
      ],
    );
  }

  Widget _signUpText() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don’t have an account?',
              style: TextStyle(
                fontFamily: 'FontSen',
                fontWeight: FontWeight.w400,
                color: SColors.textGrey,
                fontSize: 16,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  fontFamily: 'FontSen',
                  fontWeight: FontWeight.w400,
                  color: SColors.nextButtonOrange,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
        Text(
          'Or',
          style: TextStyle(
            fontFamily: 'FontSen',
            fontWeight: FontWeight.w400,
            color: SColors.textGrey,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _iconsOfSocialMedia() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.facebook, size: 100, color: Colors.blue[900]),
        SizedBox(width: MediaQuery.of(context).size.width * 0.01),
        Icon(Icons.telegram, size: 100, color: Colors.blue),
        SizedBox(width: MediaQuery.of(context).size.width * 0.01),
        Icon(Icons.apple, size: 100, color: Colors.black),
        SizedBox(width: MediaQuery.of(context).size.width * 0.01),
      ],
    );
  }
}
