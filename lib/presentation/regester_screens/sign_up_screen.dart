import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/routes_manager.dart';
import 'package:libravarse/core/utils/strings_manager.dart';
import 'package:libravarse/presentation/regester_screens/components/horizontal_devidor_front/horizontal_devidor_back.dart';
import 'components/checkbox_item.dart';
import 'components/go_button.dart';
import 'components/horizontal_devidor_front/horezontal_devidor.dart';

class SignUpScreen extends StatefulWidget {
   SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
var emailController=TextEditingController();

   var passwordController=TextEditingController();

   var confirmController=TextEditingController();
bool _obscureText1 = true;
bool _obscureText2 = true;


bool isChecked=false;
var formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 80,),
                Center(
                    child: Text(
                      StringsManager.welcome,
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
                      StringsManager.createNewAccountTextButton,
                      style: TextStyle(color: Color(0xff155a7b), fontSize: 20),
                    )),
                SizedBox(height: 50,),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText:StringsManager.enterYourEmailAddressHintText,
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
                  controller: passwordController,
                  obscureText: _obscureText1,
                  decoration: InputDecoration(
                    hintText: StringsManager.enterPassword,
                    filled: true,
                    fillColor: Color(0xffa8d5e5),
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    suffixIcon: IconButton(
                      icon: Icon(

                        _obscureText1? Icons.visibility_off :Icons.visibility,
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
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: confirmController,
                  obscureText: _obscureText2,
                  decoration: InputDecoration(
                    hintText: StringsManager.confirmYourPassword,
                    filled: true,
                    fillColor: Color(0xffa8d5e5),
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    suffixIcon: IconButton(
                      icon: Icon(

                        _obscureText2? Icons.visibility_off :Icons.visibility,
                        color: Color(0xff155a7b),
                      ),
                      onPressed: (){
                        setState(() {
                          _obscureText2=!_obscureText2;
                        });

                      },

                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CheckBoxItem(isChecked),
                    Text(
                      StringsManager.acceptTermsAndConditions,
                      style: TextStyle(
                          color: Color(0xff155a7b), fontWeight: FontWeight.w500),
                    ),


                  ],
                ),
                SizedBox(height: 30,),
                GoButton(text: StringsManager.createAccount),
                SizedBox(height: 100,),
                Row(
                  children: [
                    FrontHorizontalDV(),
                    Text(StringsManager.alreadyHaveAccount,style: TextStyle(
                      color: Color(0xff155a7b),

                    )),
                    BackHorizontalDV(),
                  ],
                ),
                TextButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, RoutesManager.signInRoute);
                }, child: Text(StringsManager.signIn,style: TextStyle(color:Color(0xff155a7b),fontWeight: FontWeight.bold,fontSize: 20 ),))

              ],
            ),
          ),
        ),
      ),




    );
  }
}
