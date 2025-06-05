// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:are_you_lucky/core/auth_bloc/bloc.dart';
import 'package:are_you_lucky/core/domain/services/firestore_service.dart';
import 'package:are_you_lucky/core/routing/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
    final service = bloc.firestoreService;
    final id = bloc.state.userId;
    return Scaffold(
      backgroundColor: Color.fromRGBO(219, 230, 232, 1),
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            AppNavigation.goHome(context);
          },
          color: Colors.grey,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: NeumorphicText(
          textStyle: NeumorphicTextStyle(fontSize: 32),
          'Profile',
          style: NeumorphicStyle(
            shadowDarkColor: const Color.fromARGB(255, 0, 0, 0),
            depth: 1,
            color: Colors.grey,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder(
            future: service.getUser(id ?? ''),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.hasError}');
              } else if (!snapshot.hasData || snapshot.data == null) {
                return SizedBox();
              } else {
                Map<String, dynamic> userData = snapshot.data!;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Аватарка
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blue[100],
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.blue[800],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Никнейм
                    Text(
                      '${userData['nickname']}',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Email
                    Text(
                      '${userData['email']}',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Кнопка смены пароля
                    _ProfileButton(
                      icon: Icons.lock,
                      text: 'Сменить пароль',
                      onPressed: () {},
                    ),

                    // Кнопка выхода
                    _ProfileButton(
                      icon: Icons.logout,
                      text: 'Выйти',
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthEvent.logout());
                        AppNavigation.goHome(context);
                      },
                      isLogout: true,
                    ),
                  ],
                );
              }
            }),
      ),
    );
  }
}

// Стилизованная кнопка профиля
class _ProfileButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  final bool isLogout;

  const _ProfileButton({
    required this.icon,
    required this.text,
    required this.onPressed,
    this.isLogout = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: isLogout ? Colors.red : Colors.blue,
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          side: BorderSide(
            color: isLogout ? Colors.red : Colors.blue,
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20),
            const SizedBox(width: 10),
            Text(text),
          ],
        ),
      ),
    );
  }
}

// Диалог смены пароля (отдельный виджет)
class ChangePasswordDialog extends StatefulWidget {
  const ChangePasswordDialog({super.key});

  @override
  State<ChangePasswordDialog> createState() => _ChangePasswordDialogState();
}

class _ChangePasswordDialogState extends State<ChangePasswordDialog> {
  final _formKey = GlobalKey<FormState>();
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Смена пароля'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _currentPasswordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Текущий пароль',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите текущий пароль';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _newPasswordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Новый пароль',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите новый пароль';
                }
                if (value.length < 6) {
                  return 'Пароль должен быть не менее 6 символов';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Подтвердите пароль',
              ),
              validator: (value) {
                if (value != _newPasswordController.text) {
                  return 'Пароли не совпадают';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Отмена'),
        ),
        TextButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              // Здесь можно вызвать метод смены пароля
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Пароль успешно изменен!')),
              );
            }
          },
          child: const Text('Сохранить'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
