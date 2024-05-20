import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kosku/components/asset_image_widget.dart';
import 'package:kosku/screen/login_screen.dart';
import 'package:kosku/screen/register_screen.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AssetImageWidget(
              imagePath: "assets/images/logo_kos.png",
              width: 250,
              height: 250,
            ),
          ),
          Text(
            'Hello !',
            style: GoogleFonts.poppins(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              letterSpacing: 3.0,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              "Tempat terbaik untuk mencari tempat kos sesuai keinginan Anda.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontStyle: FontStyle.normal,
              ),
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
                  // Tambahkan navigasi ke halaman pendaftaran di sini
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Center(
                  child: Text(
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 250,
            child: Card(
              elevation: 5,
              color: Colors.white,
              child: InkWell(
                splashColor: Colors.blue,
                onTap: () {
                  // Tambahkan navigasi ke halaman pendaftaran di sini
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterScreen()));
                },
                child: Center(
                  child: Text(
                    "REGISTER",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
