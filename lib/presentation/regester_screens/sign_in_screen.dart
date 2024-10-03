import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/strings_manager.dart';
import 'components/checkbox_item.dart';
import 'components/create_account_button.dart';
import 'components/forget_button.dart';
import 'components/go_button.dart';
import 'components/horizontal_devidor_front/horezontal_devidor.dart';
import 'components/horizontal_devidor_front/horizontal_devidor_back.dart';
import 'components/sign_in_options.dart';

class SignInScreen extends StatefulWidget {

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var nameController = TextEditingController();
  var passwordcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isCheked = false;
  bool _obscureText1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Center(
                    child: Text(
                  StringsManager.welcomeBack,
                  style: TextStyle(
                      color: Color(0xff155a7b),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(
                  height: 15,
                ),
                Center(
                    child: Text(
                  StringsManager.signInToYourAccount,
                  style: TextStyle(color: Color(0xff155a7b), fontSize: 20),
                )),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: StringsManager.userName,
                      filled: true,
                      fillColor: Color(0xffa8d5e5),
                      hintStyle: TextStyle(color: Colors.black26),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passwordcontroller,
                  obscureText: _obscureText1,
                  decoration: InputDecoration(
                    hintText: StringsManager.password,
                    filled: true,
                    fillColor: Color(0xffa8d5e5),
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText1?
                        Icons.visibility_off:Icons.visibility,
                        color: Color(0xff155a7b),
                      ),
                      onPressed: (){
                        setState(() {
                          _obscureText1=!_obscureText1;
                        });

                      },
                    ),
                  ),
                ),
                Row(children: [
                  CheckBoxItem(isCheked),
                  Text(
                    StringsManager.rememberMe,
                    style: TextStyle(
                        color: Color(0xff155a7b), fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  ForgetPasswordButton(),
                ]),
                SizedBox(
                  height: 30,
                ),
                GoButton(text: StringsManager.signIn),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    FrontHorizontalDV(),
                    Text(
                      StringsManager.signInOptions,
                      style: TextStyle(color: Color(0xff155a7b)),
                    ),
                    BackHorizontalDV(),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                //sign in options
                SignInOptions(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    FrontHorizontalDV(),

                    Text(
                      StringsManager.dontHaveAccount,
                      style: TextStyle(color: Color(0xff155a7b)),
                    ),
                    BackHorizontalDV(),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                CreateAccountButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
