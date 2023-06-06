import 'package:flutter/material.dart';
import 'package:todo/signup/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 133, 3, 73),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(
                    color: Color.fromARGB(255, 133, 3, 73),
                    fontSize: 40,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password',
                    style: TextStyle(color: Color.fromARGB(255, 133, 3, 73)),
                  )),
              SizedBox(
                height: 19,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'homepage');
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 133, 3, 73)),
                child: Text('LOGIN'),
              ),
              Text('or'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingnupPage(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 133, 3, 73)),
                child: Text(
                  'SIGN UP',
                  style: TextStyle(color: Color.fromARGB(255, 233, 237, 242)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
