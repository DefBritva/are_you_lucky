// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_import

import 'package:are_you_lucky/core/auth_bloc/bloc.dart';
import 'package:are_you_lucky/core/routing/navigation.dart';
import 'package:are_you_lucky/core/styles/colors.dart';
import 'package:are_you_lucky/features/home/home.dart';
import 'package:are_you_lucky/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Переменные для валидации
  String? _nicknameError;
  String? _emailError;
  String? _passwordError;
  bool _isLoading = false;
  @override
  void dispose() {
    _nicknameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _register() {
    final a = _emailController.text;
    final b = _passwordController.text;
    final c = _nicknameController.text;
    debugPrint('$a $b $c');
    debugPrint('1111112111');

    // Сбрасываем ошибки
    setState(() {
      _nicknameError = null;
      _emailError = null;
      _passwordError = null;
    });

    // Валидация полей
    if (_nicknameController.text.isEmpty) {
      setState(() => _nicknameError = 'Введите никнейм');
      return;
    }

    if (_emailController.text.isEmpty) {
      setState(() => _emailError = 'Введите email');
      return;
    } else if (!_emailController.text.contains('@')) {
      setState(() => _emailError = 'Некорректный email');
      return;
    }

    if (_passwordController.text.isEmpty) {
      setState(() => _passwordError = 'Введите пароль');
      return;
    } else if (_passwordController.text.length < 6) {
      setState(() => _passwordError = 'Пароль должен быть не менее 6 символов');
      return;
    }

    // Если валидация прошла, выполняем регистрацию
    _performRegistration();
  }

  void _performRegistration() async {
    setState(() => _isLoading = true);

    try {
      context.read<AuthBloc>().add(AuthEvent.registerUser(
          email: _emailController.text,
          pas: _passwordController.text,
          nickname: _nicknameController.text));
    } catch (e) {
      setState(() => _emailError = 'Ошибка регистрации: ${e.toString()}');
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          userIsLogged: (userId) {
            AppNavigation.goHome(context);
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.grey,
            onPressed: () => AppNavigation.goHome(context),
          ),
          centerTitle: false,
          backgroundColor: Colors.transparent,
          title: NeumorphicText(
            textStyle: NeumorphicTextStyle(fontSize: 32),
            'Registration',
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
                  controller: _nicknameController,
                  decoration: InputDecoration(
                      errorText: _nicknameError,
                      hintText: 'Nickname',
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
                  controller: _emailController,
                  decoration: InputDecoration(
                      errorText: _emailError,
                      suffixIcon: Icon(Icons.person),
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
                    onPressed: _register,
                    style: nStyle,
                    child: Center(
                      child: Text(
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                        'Register',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
