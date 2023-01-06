import 'package:flutter/material.dart';
import 'package:themoviedb/Theme/app_button_style.dart';

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

class _FormWidjet extends StatefulWidget {
  const _FormWidjet({Key? key}) : super(key: key);

  @override
  State<_FormWidjet> createState() => _FormWidjetState();
}

class _FormWidjetState extends State<_FormWidjet> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;

  void _login() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == "admin" && password == "admin") {
      print("Open app");
      errorText = null;
    } else {
      errorText = "Неверный логин или пароль";
      print("Error");
    }
    setState(() {});
  }

  void _resetpassword() {
    print("Reset password tapped");
  }

  @override
  Widget build(BuildContext context) {
    final styleoftext = const TextStyle(fontSize: 16, color: Color(0xff212529));
    final styleofdecorator = const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        fillColor: Colors.red,
        isCollapsed: true);
    final color = const Color(0xFF01B4E4);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            '$errorText',
            style: TextStyle(color: Colors.red, fontSize: 16),
          ),
          SizedBox(
            height: 20,
          )
        ],
        Text(
          "User name: ",
          style: styleoftext,
        ),
        SizedBox(height: 5),
        TextField(
          decoration: styleofdecorator,
          controller: _loginTextController,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Password: ",
          style: styleoftext,
        ),
        SizedBox(height: 5),
        TextField(
          controller: _passwordTextController,
          decoration: styleofdecorator,
          obscureText: true,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                _login();
              },
              child: Text("Login"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(color),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 8,
                  ))),
            ),
            SizedBox(
              width: 30,
              height: 25,
            ),
            TextButton(
              onPressed: () {
                _resetpassword();
              },
              child: Text("Reset password"),
              style: AppButtonStyle.linkButton,
            )
          ],
        )
      ],
    );
  }
}

class HeaderWidjet extends StatelessWidget {
  const HeaderWidjet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleoftext = const TextStyle(fontSize: 16, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          _FormWidjet(),
          SizedBox(
            height: 25,
          ),
          Text(
            "Чтобы пользоваться правкой и возможностями рейтинга TMDB, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой.",
            style: styleoftext,
          ),
          SizedBox(
            height: 5,
          ),
          TextButton(
              //style: AppButtonStyle.linkButton,
              onPressed: () {},
              style: AppButtonStyle.linkButton,
              child: Text(
                "Register",
              )),
          SizedBox(
            height: 25,
          ),
          Text(
            "Если вы зарегистрировались, но не получили письмо для подтверждения, ",
            style: styleoftext,
          ),
          SizedBox(
            height: 5,
          ),
          TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: () {},
              child: Text(
                "Verify email",
              )),
          Text(""),
        ],
      ),
    );
  }
}
