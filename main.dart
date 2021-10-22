import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kareem',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: Colors.teal,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  void _launchURL(String _url) async {
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.brown,
              backgroundImage: AssetImage("asset/images/Kareem.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: Text(
                "Kareem",
                style: TextStyle(
                  fontFamily: "roboto",
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              child: ListTile(
                onTap: () {
                  _launchURL("tel:+201004961296");
                },
                leading: Icon(
                  Icons.phone,
                  color: Colors.black,
                  size: 30,
                ),
                title: Text(
                  "+201004961296",
                  style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(fontSize: 25, color: Colors.white)),
                ),
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              child: ListTile(
                onTap: () {
                  _launchURL("mailto:kemo4devils@gmail.com");
                },
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 30,
                ),
                title: Text(
                  "kemo4devils@gmail.com",
                  style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(fontSize: 25, color: Colors.white)),
                ),
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              child: ListTile(
                onTap: () {
                  _launchURL("https://www.facebook.com/K3M0.Hesham.Ua07");
                },
                leading: Icon(
                  Icons.facebook,
                  color: Colors.black,
                  size: 30,
                ),
                title: Text(
                  "Kareem Hesham",
                  style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(fontSize: 25, color: Colors.white)),
                ),
              ),
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              child: ListTile(
                onTap: () {
                  _launchURL("https://github.com/KareemHesham1997");
                },
                leading: Icon(
                  FontAwesomeIcons.github,
                  color: Colors.black,
                  size: 30,
                ),
                title: Text("@KareemHesham1997",
                    style: GoogleFonts.ubuntu(
                        textStyle:
                            TextStyle(fontSize: 25, color: Colors.white))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
