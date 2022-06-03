import 'dart:io';

import 'package:bzoozle/Providers/user_provider.dart';
import 'package:bzoozle/Screens/Sign_In/Auth_Widgets/user_image_picker.dart';
import 'package:bzoozle/Themes/theme_constants.dart';
import 'package:bzoozle/Themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController surNameController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController dOBController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController regionController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool _isLogin = true;
  bool _isLoading = false;

  void _logInUser(String email, String password, BuildContext context) async {
    UserProvider _currentUser =
        Provider.of<UserProvider>(context, listen: false);
    try {
      setState(() {
        _isLoading = true;
      });
      if (await _currentUser.loginUser(email, password)) {
        //Navigator.pop(context);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Login failed - please try again"),
            duration: Duration(seconds: 2),
          ),
        );
      }
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final userProvider = Provider.of<UserProvider>(context);

    return Center(
        child: Card(
      margin: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                if (!_isLogin)
                  UserImagePicker(
                    imagePickFn: (File _pickedImage) {},
                  ),
                if (!_isLogin)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                    child: TextFormField(
                      controller: firstNameController,
                      key: const ValueKey('firstname'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your first name";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "First name",
                      ),
                      style: themeProvider.getTheme.textTheme.bodyText1,
                      onSaved: (value) {
                        firstNameController.text = value!;
                      },
                    ),
                  ),
                if (!_isLogin)
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                    child: TextFormField(
                      controller: surNameController,
                      key: const ValueKey('surname'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your surname";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "Surname",
                      ),
                      style: themeProvider.getTheme.textTheme.bodyText1,
                      onSaved: (value) {
                        surNameController.text = value!;
                      },
                    ),
                  ),
                if (!_isLogin)
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                    child: TextFormField(
                      onTap: () {
                        getDoB(context);
                      },
                      controller: dOBController,
                      key: const ValueKey('dob'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please select your date of birth";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.none,
                      decoration: const InputDecoration(
                        labelText: "Date of Birth",
                      ),
                      style: themeProvider.getTheme.textTheme.bodyText1,
                      onSaved: (value) {
                        dOBController.text = value!;
                      },
                    ),
                  ),
                if (!_isLogin)
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                    child: TextFormField(
                      controller: countryController,
                      key: const ValueKey('country'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your country of residence";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "Country",
                      ),
                      style: themeProvider.getTheme.textTheme.bodyText1,
                      onSaved: (value) {
                        countryController.text = value!;
                      },
                    ),
                  ),
                if (!_isLogin)
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                    child: TextFormField(
                      controller: regionController,
                      key: const ValueKey('region'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your State, Region or County of residence";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "State/Region/County",
                      ),
                      style: themeProvider.getTheme.textTheme.bodyText1,
                      onSaved: (value) {
                        regionController.text = value!;
                      },
                    ),
                  ),
                if (!_isLogin)
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                    child: TextFormField(
                      controller: cityController,
                      key: const ValueKey('city'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your city or town of residence";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: "City or Town",
                      ),
                      style: themeProvider.getTheme.textTheme.bodyText1,
                      onSaved: (value) {
                        cityController.text = value!;
                      },
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                  child: TextFormField(
                    controller: emailController,
                    key: const ValueKey('email'),
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return "Please enter a valid email address";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: "Email address",
                    ),
                    style: themeProvider.getTheme.textTheme.bodyText1,
                    onSaved: (value) {
                      emailController.text = value!;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                  child: TextFormField(
                    controller: passwordController,
                    key: const ValueKey('password'),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 7) {
                        return "Password must be at least 7 characters long";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: "Password (min 7 characters)",
                    ),
                    style: themeProvider.getTheme.textTheme.bodyText1,
                    onSaved: (value) {
                      passwordController.text = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                _isLoading
                    ? const CircularProgressIndicator()
                    : Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 4.0, bottom: 4.0),
                            child: ElevatedButton(
                                child: Text(
                                    _isLogin ? "Log in" : "Create account"),
                                onPressed: () {
                                  if (!_isLogin) {
                                    userProvider.signUpUser(
                                        firstNameController.text.trim(),
                                        surNameController.text.trim(),
                                        userProvider.userImage,
                                        dOBController.text.trim(),
                                        countryController.text.trim(),
                                        regionController.text.trim(),
                                        cityController.text.trim(),
                                        emailController.text.trim(),
                                        passwordController.text.trim(),
                                        "C",
                                        false);
                                  } else {
                                    _logInUser(emailController.text,
                                        passwordController.text, context);
                                  }
                                }),
                          ),
                          TextButton(
                            child: Text(
                              _isLogin
                                  ? "Create new account"
                                  : "I already have an account",
                              style: themeProvider.getTheme.textTheme.bodyText1
                                  ?.copyWith(
                                      color:
                                          themeProvider.getTheme.primaryColor),
                            ),
                            onPressed: () {
                              setState(() {
                                _isLogin = !_isLogin;
                              });
                            },
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Future getDoB(BuildContext context) async {
    //final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    final dOB = await showDatePicker(
        context: context,
        firstDate: DateTime(DateTime.now().year - 100),
        lastDate: DateTime.now(),
        initialDate: DateTime(DateTime.now().year - 21),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: orange1,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ),
            child: child!,
          );
        });
    if (dOB == null) {
      return;
    } else {
      setState(() {
        dOBController.text = DateFormat('dd MMM yyyy').format(dOB);
      });
    }
  }
}
