import 'package:flutter/material.dart';
import 'package:spacex/adapt_screen.dart';
import 'package:spacex/login/custom_button.dart';
import 'package:spacex/login/splash_screen.dart';
import 'package:spacex/login/textfield_decoration.dart';
import 'package:validation_extensions/validation_extensions.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool pwdShow = false; //show password or not
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String error = '';
  var isSignIn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: AdaptScreen.pxH(10),
          left: AdaptScreen.pxH(25),
          right: AdaptScreen.pxH(25),
          bottom: MediaQuery.of(context).viewInsets.bottom + 10),
      child: Form(
        key: _formKey,
        child: ScrollConfiguration(
          behavior: ScrollBehavior(),
          child: GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
            color: Theme.of(context).canvasColor,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        top: AdaptScreen.pxH(80), bottom: AdaptScreen.pxH(10)),
                    child: TextFormField(


                      decoration:
                          TextFieldDecoration().loginDeco(context).copyWith(
                                hintText: 'E-mail',

                                prefixIcon: Icon(
                                  Icons.email_outlined,

                                ),
                              ),
                      onChanged: (val) {
                        email = val;
                      },
                      validator: (v) => [
                        v.isRequired(
                          errorText: "This field is required",
                        ),
                        v.isEmail(
                          errorText: "Invalid Email address",
                        )
                      ].validate(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: AdaptScreen.pxH(10), bottom: AdaptScreen.pxH(10)),
                    child: TextFormField(
                      decoration: TextFieldDecoration()
                          .loginDeco(context)
                          .copyWith(
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .fontFamily,
                                color: Colors.grey,
                                letterSpacing: AdaptScreen.pxH(0.5)),
                            prefixIcon:
                                Icon(Icons.lock_outline, color: Colors.grey),
                            suffixIcon: IconButton(
                              icon: Icon(
                                  pwdShow
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey),
                              onPressed: () {
                                setState(() {
                                  pwdShow = !pwdShow;
                                });
                              },
                            ),
                          ),
                      validator: (v) => v.isRequired(
                        errorText: "This field is required",
                      )(),
                      onChanged: (val) {
                        password = val;
                      },
                      obscureText: !pwdShow,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: AdaptScreen.pxH(35)),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                            child: Text(
                              "Forgot Password" + "?",
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .fontFamily,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onTap: () {}),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: AdaptScreen.pxH(10),
                          bottom: AdaptScreen.pxH(12)),
                      height:
                          AdaptScreen.pxH(55) > 50 ? 50 : AdaptScreen.pxH(55),
                      child: Stack(
                        children: [
                          CustomButton(
                            operation: 'login',
                            buttonText: "Login",
                            action: onPress(),
                          ),
                          isSignIn
                              ? SplashScreen(
                                  backgroundColor: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.7),
                                  spinnerColor: Theme.of(context).canvasColor,
                                )
                              : Container()
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Dont have an account? Lets's ",
                          style: Theme.of(context).textTheme.bodyText2),
                      SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onTap: () {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onPress() {}
}
