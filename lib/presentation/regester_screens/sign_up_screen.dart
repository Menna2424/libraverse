import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/routes_manager.dart';
import 'package:libravarse/core/utils/strings_manager.dart';
import 'package:libravarse/presentation/regester_screens/components/horizontal_devidor_front/horizontal_devidor_back.dart';
import 'components/checkbox_item.dart';
import 'components/go_button.dart';
import 'components/horizontal_devidor_front/horezontal_devidor.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                      AppLocalizations.of(context)!.welcome,
                      style: Theme.of(context).textTheme.labelLarge
                    )),
                SizedBox(
                  height: 15,
                ),
                Center(
                    child: Text(
                     AppLocalizations.of(context)!.createNewAccount,
                      style: Theme.of(context).textTheme.titleSmall
                    )),
                SizedBox(height: 50,),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText:AppLocalizations.of(context)!.hintEnterYourEmail,
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.secondary,
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
                    hintText: AppLocalizations.of(context)!.hintEnterPassword,
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.secondary,
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    suffixIcon: IconButton(
                      icon: Icon(

                        _obscureText1? Icons.visibility_off :Icons.visibility,
                        color: Theme.of(context).colorScheme.primary,
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
                    hintText: AppLocalizations.of(context)!.hintConfirmYourPassword,
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.secondary,
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    suffixIcon: IconButton(
                      icon: Icon(

                        _obscureText2? Icons.visibility_off :Icons.visibility,
                        color: Theme.of(context).colorScheme.primary,
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
                      AppLocalizations.of(context)!.acceptTermsAnd,
                      style: Theme.of(context).textTheme.bodySmall
                    ),


                  ],
                ),
                SizedBox(height: 30,),
                GoButton(text:AppLocalizations.of(context)!.createAccountbutton),
                SizedBox(height: 100,),
                Row(
                  children: [
                    FrontHorizontalDV(),
                    Text(AppLocalizations.of(context)!.alreadyHaveAccount,style: Theme.of(context).textTheme.displaySmall
                    ),
                    BackHorizontalDV(),
                  ],
                ),
                TextButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, RoutesManager.signInRoute);
                }, child: Text(AppLocalizations.of(context)!.signInButton,
                  style:



Theme.of(context).textTheme.bodyMedium

                ))

              ],
            ),
          ),
        ),
      ),




    );
  }
}
