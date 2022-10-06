import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

main() {
  runApp(const app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/play": (context) => play(),
      },
      // theme: ThemeData(
      //     fontFamily: 'Georgia',
      //     scaffoldBackgroundColor: Colors.deepPurple,
      //     primaryColor: Colors.green,
      //     textTheme: TextTheme(
      //         headline1: TextStyle(
      //             fontSize: 72,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.blue))),
      home: kar(),
    );
  }
}

class kar extends StatelessWidget {
  const kar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/space2.jpg"), fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Text(
                    'Rocket',
                    style: GoogleFonts.yatraOne(
                        color: Colors.pink,
                        fontSize: 90,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 270,
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pink,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        minimumSize: Size(70, 50)),
                    child: Text(
                      "Play!",
                      style: GoogleFonts.dancingScript(
                          fontSize: 40,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/play");
                    }),
              )
            ],
          )),
    );
  }
}

double bottomMargin = 0;
double topMargin = 560;
int i = 0;

class play extends StatefulWidget {
  const play({Key? key}) : super(key: key);

  @override
  State<play> createState() => _playState();
}

class _playState extends State<play> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
                // margin: EdgeInsets.only(top: 600),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/space2.jpg"),
                        fit: BoxFit.fill)),
                child: Container(
                    margin: EdgeInsets.only(bottom: 50),
                    alignment: Alignment.bottomCenter,
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 1500),
                        height: 220,
                        width: 200,
                        margin: EdgeInsets.only(
                            top: topMargin, bottom: bottomMargin),
                        child: Image.asset("images/rocket1-.png")))),
          ],
        ),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          height: 60,
          width: 100,
          child: FloatingActionButton.extended(
              backgroundColor: Colors.pink,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(15)),
              onPressed: () {
                setState(() {
                  topMargin = 560;
                  bottomMargin = 0;
                  i = 0;
                });
              },
              label: Text(
                "Landing",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              )),
        ),
        Container(
          // margin: EdgeInsets.only(r: 20),
          height: 60,
          width: 100,
          child: FloatingActionButton.extended(
              backgroundColor: Colors.pink,
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(15)),
              onPressed: () {
                setState(() {
                  bottomMargin += 400;

                  i++;
                  if (i < 4) {
                    topMargin -= 90;
                    print(topMargin);
                  } else {
                    topMargin += 25;
                  }
                  if (topMargin >= 200) {
                    topMargin = 200;
                    print(topMargin);
                  }
                });
              },
              label: Text(
                "Launch",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              )),
        ),
      ]),
    );
  }
}
