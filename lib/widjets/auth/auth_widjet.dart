import 'package:flutter/material.dart';

class AuthWidjet extends StatefulWidget {
  const AuthWidjet({Key? key}) : super(key: key);

  @override
  State<AuthWidjet> createState() => _AuthWidjetState();
}

class _AuthWidjetState extends State<AuthWidjet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login to your account"),
      ),
      body: ListView(
        children: [
          HeaderWidjet(),
        ],
      ),
    );
  }
}

class HeaderWidjet extends StatelessWidget {
  const HeaderWidjet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Чтобы пользоваться правкой и возможностями рейтинга TMDB, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой."),
        Text("Если Вы зарегистрировались, но не получили письмо для подтверждения, "),
        Text(""),
      ],
    );
  }
}

