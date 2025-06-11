import 'package:flutter/material.dart';

import '../../reusable_widgets/small_widgets_before_home_screen/rectangle_button.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/resusable_appbar_login.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/reusable_email_box.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/reusable_password_box.dart';
import '../../utils/screen_colors.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

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
              height: MediaQuery.of(context).size.height * 9.09,
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
                        padding: const EdgeInsets.only(top: 35,left: 22,right: 22,bottom: 16),
                        child: Column(
                          children: [
                            //name box...
                            InputBox(inputName: 'john doe', inputTitle: 'NAME', controllerName:_nameController ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                            // email box..
                            InputBox(inputName: 'example@gmail.com', inputTitle: 'EMAIL', controllerName: _emailController),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                            //password box...
                            InputPassword(inputName: '', inputTitle: 'PASSWORD', controllerName: _passwordController),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

                            InputPassword(inputName: '', inputTitle: 'RE-TYPE PASSWORD', controllerName: _confirmPasswordController),
                            // remember me check box....
                            SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                            RectangleButton(color: SColors.nextButtonOrange, name: 'SIGN UP',
                                textColor: SColors.appPrimaryWhite,
                                height: MediaQuery.of(context).size.height * 0.07,
                                 width: MediaQuery.of(context).size.width * 0.90,
                                onPressed:(){}
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

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
}
