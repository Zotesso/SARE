import 'package:flutter/material.dart';
import 'package:sare/homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 200,
                    height: 200,
                    child: Image.network('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/356ddd31-d90e-4bcf-a6f2-359d5febe4e7/dd4ogx2-1794d573-870a-4d9c-b6ca-b7d4fb703ad5.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzM1NmRkZDMxLWQ5MGUtNGJjZi1hNmYyLTM1OWQ1ZmViZTRlN1wvZGQ0b2d4Mi0xNzk0ZDU3My04NzBhLTRkOWMtYjZjYS1iN2Q0ZmI3MDNhZDUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.x12UUgTVSgvB_imrg5qGU7XuTMJyi3tkeZeVDWYl6fE')
                ),
                Container(height: 10),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: (){
                    if (email == 'qwe@qwe.com' && password == 'qwe123') {
                      Navigator.of(context).pushReplacementNamed('/home');
                    }
                  },
                  child: Text('Entrar'),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,  
                    primary: Color(0xffccbbd7),
                    minimumSize: const Size(330,70),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
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
