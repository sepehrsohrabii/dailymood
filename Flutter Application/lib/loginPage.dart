import 'package:flutter/material.dart' show BuildContext, Center, ElevatedButton, Icon, Icons, InputDecoration, Key, Navigator, OutlineInputBorder, Padding, Scaffold, StatelessWidget, Text, TextField, TextFormField, UnderlineInputBorder, Widget;
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
          Container(
            margin: const EdgeInsets.all(15.0),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline_outlined,
                        ),
                        labelText: 'Label text',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.error,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.vpn_key_outlined,
                        ),
                        labelText: 'Label text',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(
                          Icons.error,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(60), // fromHeight use double.infinity as width and 40 is the height
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'MainPage');
                      },
                      icon: const Icon(
                        Icons.login_outlined,
                      ),
                      label: Text("LOGIN"),
                    )
                  ),
                ],
              ),
            ),
          ),
          ),
    );
  }
}