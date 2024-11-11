import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // TODO:1. Deklarasikan variabel
  final TextEditingController _usernamecontroller = TextEditingController();

  final TextEditingController _passwordcontroller = TextEditingController();

  String _errorText = '';

  bool _isSignedIn = false;

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  //   TODO: 2. pasang appbar
      appBar: AppBar(title: Text('Sign In'),),
  //   TODO: 3. Pasang body
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
                child: Column(
                  // TODO:4 ATUR MAINXISALIGNMENT DAN CROSSASISALIGNMENT
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  //   Todo:5. pasang textformfield nama pengguna
                    TextFormField(
                      controller: _usernamecontroller,
                      decoration: InputDecoration(
                        labelText: "Nama pengguna",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  //   TODO 6. Pasang textform kata sandi
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _passwordcontroller,
                      decoration: InputDecoration(
                        labelText: "kata sandi",
                        errorText: _errorText.isNotEmpty ? _errorText : null,
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                            icon: Icon(
                              _obscurePassword ? Icons.visibility_off
                                  :Icons.visibility,
                            ),),
                      ),
                      obscureText: _obscurePassword,
                    ),
                  //   Todo 7. pasang elevated sign in
                    SizedBox(height: 20,),
                    ElevatedButton(
                        onPressed: (){},
                        child: Text("Sign In")),
                  //   TODO 8. PASANG TEXT BUTTON SIGN UP
                    SizedBox(height: 10,),
                    TextButton(
                        onPressed: (){},
                        child: Text("Belum punya akun? daftar di sini")),
                    RichText(
                        text: TextSpan(
                          text: "Belum Punya Akun?",
                          style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Dafatar disini",
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontSize: 16
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = (){},
                            ),
                          ],
                        )),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}