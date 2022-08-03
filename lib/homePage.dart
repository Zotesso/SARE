import 'package:flutter/material.dart';
import 'package:sare/appController.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network('https://i.imgur.com/g5mptvF.png')
                ),
                accountName: Text('Pedrin'),
                accountEmail: Text('Pedrinemail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('Tela de ínicio'),
              onTap: (){
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Sair'),
              subtitle: Text('Finalizar Sessão'),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text('Meu app'), actions: [CustomSwitch()],),
      body: Container(
        width: double.infinity,
        height: double.infinity ,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Texto 1 '),
            Text('Texto 2 '),
          ],
        ),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(value: AppController.instance.isDarkTheme, onChanged: (value) {
      AppController.instance.changeTheme();
    },);
  }
}
