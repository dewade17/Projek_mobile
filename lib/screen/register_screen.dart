import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kosku/screen/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                "Hi!",
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
                "Create a new account",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                    height: 10,
                  ),
                  Container(
                    width: 270,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(221, 73, 11, 11))),
                          prefixIcon: const Icon(
                            Icons.call,
                            size: 25,
                          ),
                          hintText: "Masukkan No Handphone",
                          hintStyle: const TextStyle(color: Colors.black87),
                          labelText: "No Handphone",
                          labelStyle: const TextStyle(color: Colors.black87)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 270,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(221, 73, 11, 11))),
                          prefixIcon: const Icon(
                            Icons.mail,
                            size: 25,
                          ),
                          hintText: "Masukkan E-mail",
                          hintStyle: const TextStyle(color: Colors.black87),
                          labelText: "E-mail",
                          labelStyle: const TextStyle(color: Colors.black87)),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                            'SIGN UP',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
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
                  Text("Social Media Sign Up"),
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
                    "Already have an account?",
                    style: GoogleFonts.poppins(),
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
                      " Sign in",
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
