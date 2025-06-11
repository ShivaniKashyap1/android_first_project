import 'package:flutter/material.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/rectangle_button.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/reusable_email_box.dart';
import 'package:food_delivery_app/views/authentication/verification_screen.dart';
import 'package:email_auth/email_auth.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/resusable_appbar_login.dart';
import '../../utils/screen_colors.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();
  // bool submitValid=false;
  // void sendOtp() async {
  //   EmailAuth.sessionName = "Test session";
  //   var res = await EmailAuth.sendOtp()
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColors.appPrimaryWhite,
      body: Stack(
        children: [
          // custom appbar...
          SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 100,
            child: AppBarLogin(
              text: 'Forgot Password',
              title: "Please sign in to your existing account",
            ),
          ),
          Positioned(
            top: MediaQuery
                .of(context)
                .size
                .height * 0.30,
            left: 0,
            right: 0,
            child: SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 9.09,
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
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 51, left: 22, right: 22, bottom: 16),
                    child: Column(
                      children: [
                        //email box....
                        InputBox(inputName: 'example@gmail.com',
                            inputTitle: 'EMAIL',
                          controllerName: _emailController,
                            ),
                        SizedBox(height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.05,),
                        // send code button...
                        RectangleButton(
                            color: SColors.nextButtonOrange, name: "SEND CODE",
                            textColor: SColors.appPrimaryWhite,
                            height: MediaQuery.of(context).size.height * 0.07,
                             width: MediaQuery.of(context).size.width * 0.90,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => VerificationScreen()));
                            }),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
