import 'package:flutter/material.dart';

class play extends StatefulWidget {
  const play({Key? key}) : super(key: key);

  @override
  State<play> createState() => _playState();
}

double Mbottom = 0;

class _playState extends State<play> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/space2.jpg"),
                      fit: BoxFit.cover)),
            ),
            AnimatedContainer(
              alignment: Alignment.bottomCenter,
              duration: Duration(milliseconds: 1000),
              margin: EdgeInsets.only(bottom: Mbottom),
              child: Image.asset(
                "images/rocket1-.png",
                width: 170,
                height: 280,
              ),
            ),
          ],
        ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15),
            child: FloatingActionButton.extended(
              backgroundColor: Colors.pink.shade500,
              onPressed: () {
                setState(() {
                  Mbottom = 0;
                });
              },
              label: Text("Landing", style: TextStyle(fontSize: 30)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 94),
            child: FloatingActionButton.extended(
              backgroundColor: Colors.pink.shade500,
              onPressed: () {
                setState(() {
                  Mbottom += 350;
                });
              },
              label: Text("Launch", style: TextStyle(fontSize: 30)),
            ),
          ),
        ],
      ),
    );
  }
}
