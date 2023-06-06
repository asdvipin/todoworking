import 'package:flutter/material.dart';
import 'package:todo/signup/repo/singup_repo.dart';

import '../../homepage/home.dart';

class SingnupPage extends StatelessWidget {
  SingnupPage({super.key});
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 133, 3, 73),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SafeArea(
            child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SIGN UP',
                style: TextStyle(
                    color: Color.fromARGB(255, 133, 3, 73),
                    fontSize: 40,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please fill this field';
                  }
                },
                controller: _nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Name'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please fill this field';
                  }
                },
                controller: _emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Email'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please fill this field';
                  }
                },
                controller: _phoneController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Phone Number'),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please fill this field';
                  }
                },
                controller: _passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'password'),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await SingupRepo().createUser(
                          _nameController.text,
                          _emailController.text,
                          _phoneController.text,
                          _passwordController.text,
                          context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 133, 3, 73),
                  ),
                  child: Text(
                    'REGISTER',
                    style: TextStyle(color: Color.fromARGB(255, 231, 233, 234)),
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
