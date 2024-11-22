import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tractor/Auth/Login/sign_in.dart';

import 'package:tractor/Common/Constants/app_background.dart';
import 'package:tractor/Common/Widgets/button.dart';
import 'package:tractor/Common/Widgets/icon_container.dart';
import 'package:tractor/Common/Widgets/text_field_widget.dart';
import 'package:tractor/Screens/Home/home_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController phoneController;
  late TextEditingController confirmPasswordController;
  late bool obscure;
  late bool obscure1;
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneController = TextEditingController();
    confirmPasswordController = TextEditingController();
    obscure = false;
    obscure1 = false;
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    return NewAppBackground(
      color: const Color(0xff004b23),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff004b23),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                color: const Color(0xff004b23),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.3,
                  decoration: const BoxDecoration(
                      color: Color(0xfff5f5f5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 8.0),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Image(
                            image: AssetImage('assets/t2.png'),
                            width: 300,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          commonTextField(
                            icon: Iconsax.message,
                            controller: emailController,
                            text: 'Email',
                            maxLines: 1,
                            onChange: (val) {},
                            isPassword: false,
                            obscure: false,
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Email can not be empty';
                              }
                              if (!EmailValidator.validate(val)) {
                                return "Please enter a valid email";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          commonTextField(
                            icon: Iconsax.call,
                            controller: phoneController,
                            text: 'Phone Number',
                            maxLines: 1,
                            onChange: (val) {},
                            isPassword: false,
                            obscure: false,
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Phone number can not be empty';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          commonTextField(
                              icon: Iconsax.lock,
                              controller: passwordController,
                              text: 'Password',
                              maxLines: 1,
                              onChange: (val) {},
                              isPassword: true,
                              obscure: !obscure,
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Email can not be empty';
                                }

                                return null;
                              },
                              onTap: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              }),
                          const SizedBox(
                            height: 20,
                          ),
                          commonTextField(
                              icon: Iconsax.lock,
                              controller: confirmPasswordController,
                              text: 'Password',
                              maxLines: 1,
                              onChange: (val) {},
                              isPassword: true,
                              obscure: !obscure,
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Confrim password can not be empty';
                                }
                                if (passwordController !=
                                    confirmPasswordController) {
                                  return "Password does not match";
                                }
                                return null;
                              },
                              onTap: () {
                                setState(() {
                                  obscure1 = !obscure1;
                                });
                              }),
                          const SizedBox(
                            height: 20,
                          ),
                          commonbutton(
                            name: 'Sign Up',
                            onTap: () {
                              _formkey.currentState!.save;
                              if (_formkey.currentState!.validate()) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const HomePage()));
                              }
                            },
                            width: mWidth,
                            heignt: mHeight / 25,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                color: Color(0xff004b23),
                              )),
                              SizedBox(width: 5),
                              Text('Or Sign Up'),
                              SizedBox(width: 5),
                              Expanded(
                                  child: Divider(
                                color: Color(0xff004b23),
                              ))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              iconContainer(
                                width: mWidth * 0.1,
                                image: 'assets/x.png',
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              iconContainer(
                                width: mWidth * 0.1,
                                image: 'assets/f.png',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Already Have An Account ?",
                                  style: TextStyle(color: Color(0xff004b23)),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignIn()));
                                  },
                                  child: const Text(
                                    "Sign In",
                                    style: TextStyle(
                                      color: Color(0xff004b23),
                                    ),
                                  ),
                                )
                              ])
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
