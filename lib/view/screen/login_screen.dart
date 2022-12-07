import 'package:biometric_auth/view/screen/home_page.dart';
import 'package:biometric_auth/view_model/auth/biometric_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.3;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Biometric Authentication",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height,
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      Provider.of<Auth>(context, listen: false)
                          .Bioauthentication()
                          .then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage())));
                    },
                    child: const Text("Login")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
