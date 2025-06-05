// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:are_you_lucky/core/auth_bloc/bloc.dart';
import 'package:are_you_lucky/core/routing/navigation.dart';
import 'package:are_you_lucky/core/styles/colors.dart';
import 'package:are_you_lucky/features/home/home.dart';
import 'package:are_you_lucky/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Переменные для валидации
  String? _emailError;
  String? _passwordError;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    // Сбрасываем ошибки
    setState(() {
      _emailError = null;
      _passwordError = null;
    });

    // Валидация полей
    if (_emailController.text.isEmpty) {
      setState(() => _emailError = 'Введите email');
      return;
    }

    if (_passwordController.text.isEmpty) {
      setState(() => _passwordError = 'Введите пароль');
      return;
    }

    // Если валидация прошла, отправляем событие
    context.read<AuthBloc>().add(
          AuthEvent.login(
            email: _emailController.text,
            pas: _passwordController.text,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.transparent,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: NeumorphicText(
            textStyle: NeumorphicTextStyle(fontSize: 32),
            'Login',
            style: NeumorphicStyle(
              shadowDarkColor: Color.fromARGB(255, 0, 0, 0),
              depth: 1,
              color: Colors.grey,
            ),
          ),
        ),
        backgroundColor: AppColors.baseScaffold,
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.person),
                      errorText: _emailError,
                      hintText: 'email',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(8)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black45),
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(8))),
                ),
                SizedBox(
                  height: 32,
                ),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      errorText: _passwordError,
                      suffixIcon: Icon(Icons.lock),
                      hintText: 'password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(8)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black45),
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(8))),
                ),
                SizedBox(height: 48),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: NeumorphicButton(
                    padding: EdgeInsets.all(0),
                    onPressed: _login,
                    style: nStyle,
                    child: Center(
                      child: Text(
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                        'login',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        AppNavigation.goRegistration(context);
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 32),
                Container(
                  height: 50,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blue,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        width: 50,
                        child: SvgPicture.asset(
                          MIcons.googleIconLogoSvgrepoCom,
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        'Sign up with Google',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 16),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
