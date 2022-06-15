import 'package:bzoozle/Screens/Sign_In/Auth_Widgets/auth_form.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);
  static const String routeName = '/auth';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    // final userProvider = Provider.of<UserProvider>(context);
    return const Scaffold(
      body: AuthForm(),
    );
  }
}
