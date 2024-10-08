import 'package:flutter/material.dart';
import 'package:libravarse/core/utils/strings_manager.dart';
import 'components/checkbox_item.dart';
import 'components/create_account_button.dart';
import 'components/forget_button.dart';
import 'components/go_button.dart';
import 'components/horizontal_devidor_front/horezontal_devidor.dart';
import 'components/horizontal_devidor_front/horizontal_devidor_back.dart';
import 'components/sign_in_options.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                  AppLocalizations.of(context)!.welcomeBack,
                  style:Theme.of(context).textTheme.labelLarge,

                )),
                SizedBox(
                  height: 15,
                ),
                Center(
                    child: Text(
                  AppLocalizations.of(context)!.signInToYourAccount,
                  style: Theme.of(context).textTheme.titleSmall
                )),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: AppLocalizations.of(context)!.hintUserName,
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
                  controller: passwordcontroller,
                  obscureText: _obscureText1,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.hintPassword,
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.secondary,
                    hintStyle: TextStyle(color: Colors.black26),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText1?
                        Icons.visibility_off:Icons.visibility,
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
                Row(children: [
                  CheckBoxItem(isCheked),
                  Text(
                    AppLocalizations.of(context)!.rememberMe,
                    style: Theme.of(context).textTheme.bodySmall
                  ),
                  Spacer(),
                  ForgetPasswordButton(),
                ]),
                SizedBox(
                  height: 30,
                ),
                GoButton(text: AppLocalizations.of(context)!.signInButton),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    FrontHorizontalDV(),
                    Text(
                      AppLocalizations.of(context)!.signinOptions,
                      style:Theme.of(context).textTheme.displaySmall
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
                      AppLocalizations.of(context)!.dontHaveAccount,
                        style:Theme.of(context).textTheme.displaySmall
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
