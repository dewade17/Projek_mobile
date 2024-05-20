import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kosku/screen/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscureUser = true; // Keadaan awal teks sandi tersembunyi
  void _toggleObscureUser() {
    setState(() {
      _isObscureUser = !_isObscureUser;
    });
  }

  bool _isObscurePassword = true;
  void _toggleObscureUserPassword() {
    setState(() {
      _isObscurePassword = !_isObscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Welcome!",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 3.0,
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Sign in to Continue ",
                style: GoogleFonts.poppins(),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 270,
                    child: TextFormField(
                      obscureText: _isObscureUser,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black87)),
                          prefixIcon: const Icon(
                            Icons.person,
                            size: 25,
                          ),
                          suffixIcon: InkWell(
                            onTap: _toggleObscureUser,
                            child: Icon(
                              _isObscureUser
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black87,
                            ),
                          ),
                          hintText: "Masukkan Username",
                          hintStyle: const TextStyle(
                              color: Color.fromARGB(221, 0, 0, 0)),
                          labelText: "Username",
                          labelStyle: const TextStyle(color: Colors.black87)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 270,
                    child: TextFormField(
                      obscureText: _isObscurePassword,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(221, 73, 11, 11))),
                          prefixIcon: const Icon(
                            Icons.lock,
                            size: 25,
                          ),
                          suffixIcon: InkWell(
                            onTap: _toggleObscureUserPassword,
                            child: Icon(
                              _isObscurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black87,
                            ),
                          ),
                          hintText: "Masukkan Password",
                          hintStyle: const TextStyle(color: Colors.black87),
                          labelText: "Password",
                          labelStyle: const TextStyle(color: Colors.black87)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    child: Card(
                      elevation: 5,
                      color: Colors.blue,
                      child: InkWell(
                        splashColor: Colors.white,
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/home-screen');
                        },
                        child: const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Tambahkan navigasi ke halaman pendaftaran di sini
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.poppins(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          thickness: 2,
                          indent: 50,
                          endIndent:
                              10, // Anda bisa menyesuaikan nilai indent dan endIndent sesuai kebutuhan
                        ),
                      ),
                      Text("Or"),
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          thickness: 2,
                          indent: 10,
                          endIndent:
                              50, // Anda bisa menyesuaikan nilai indent dan endIndent sesuai kebutuhan
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Social Media Login"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.google, size: 35),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(FontAwesomeIcons.facebook, size: 35),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(FontAwesomeIcons.twitter, size: 35)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.poppins(),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Tambahkan navigasi ke halaman pendaftaran di sini
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    child: Text(
                      " Sign Up",
                      style: GoogleFonts.poppins(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
