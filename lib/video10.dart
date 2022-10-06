import 'package:flutter/material.dart';

main() {
  runApp(appy());
}

class appy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/column2': (context) => column2(),
        '/Udemey': (context) => Udemey(),
        '/stack2': (context) => stack2(),
        '/div_Image': (context) => div_Image(),
      },
      home: div_Image(),
    );
  }
}

class div_Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: 650,
            decoration: const BoxDecoration(
                color: Colors.orange,
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage("images/1.jpg"),
                  repeat: ImageRepeat.repeat,
                )),
            child: const Text('Hello', style: TextStyle()),
          ),
          ElevatedButton(
              onPressed: () {
                print(Navigator.of(context).canPop());
              },
              child: Text(
                "Click Here",
              ))
        ],
      ),
    );
  }
}

class Text_Align extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(),
      body: Text(
        'How Are You',
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}

class Images_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(),
        body: Image.asset(
          'images/1.jpg',
          width: 300,
          height: 200,
          fit: BoxFit.cover,
        ));
  }
}

class card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(),
        body: Card(
          color: Colors.red,
          elevation: 200,
          shadowColor: Colors.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Colors.black, width: 4)),
          child: const Text(
            'How Are You',
            style: TextStyle(fontSize: 40),
          ),
        ));
  }
}

class column extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //1-Specfic like Text Image.asset Image.network and Etc
    //2- child : Card Container SizedBox And Etc
    //3- Children Column Row Stack Listview GridView
    //4-Scaffold MaterialApp
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(),
      body: Column(
        children: [
          const Text('How Are You'),
          const Text("How Are You two"),
          Container(
            color: Colors.red,
            child: const Text("this is flutter"),
          ),
          Image.asset("images/1.jpg", height: 300, width: 350)
        ],
      ),
    );
  }
}

class column2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(),
        body: Container(
          color: Colors.red,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween, spaces
            // between each widget
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   spaces between each widget as between but fist and last widgets get
            //   an especial spaces
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   same as spaceAround but each widget's spaces is same
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('How Are You'),
              const Text("How Are You two"),
              Container(
                child: const Text("this is flutter"),
              ),
              Image.asset("images/rockets.png", height: 300, width: 300)
            ],
          ),
        ));
  }
}

class row extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(),
        body: Container(
            // margin: EdgeInsets.all(20),
            // padding: EdgeInsets.all(20),
            // decoration:
            //     // BoxDecoration(border: Border.all(color: Colors.blue, width: 20)),
            height: 400,
            width: 450,
            color: Colors.red,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Text',
                  style: TextStyle(backgroundColor: Colors.red),
                ),
                const Text("Text two"),
                const Card(child: const Text("Card")),
                Container(
                  child: const Text("Container"),
                ),
              ],
            )));
  }
}

class stack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(),
        body: Stack(
          children: [
            Container(
              child: const Text("Widget One"),
              color: Colors.red,
              width: 400,
              height: 400,
            ),
            Container(
              child: const Text("Widget Two"),
              margin: const EdgeInsets.only(top: 20),
              color: Colors.green,
              width: 200,
              height: 200,
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Text("Widget Three"),
              color: Colors.blue,
              width: 150,
              height: 150,
            ),
            Container(
              margin: const EdgeInsets.only(top: 60),
              child: const Text("Widget Four"),
              color: Colors.brown,
              width: 150,
              height: 150,
            ),
          ],
        ));
  }
}

class stack2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              width: 400,
              height: 400,
              color: Colors.black,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    child: const Text("Widget One"),
                    color: Colors.red,
                    width: 300,
                    height: 300,
                  ),
                  Container(
                    child: const Text("Widget One"),
                    color: Colors.green,
                    width: 200,
                    height: 200,
                  )
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Udemey');
                },
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                child: Text(
                  "Go Back",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ));
  }
}

class Udemey extends StatefulWidget {
  const Udemey({Key? key}) : super(key: key);

  @override
  State<Udemey> createState() => _UdemeyState();
}

class _UdemeyState extends State<Udemey> {
  int teamA = 0;

  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Points Counter"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Team A",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    "$teamA",
                    style: const TextStyle(fontSize: 150),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        // fixedSize: Size(150, 10),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamA++;
                        });
                      },
                      child: const Text(
                        "Add 1 Point",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        // fixedSize: Size(150, 10),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamA += 2;
                        });
                      },
                      child: const Text(
                        "Add 2 Point",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        // fixedSize: Size(150, 10),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamA += 3;
                        });
                      },
                      child: const Text(
                        "Add 3 Point",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 500,
              child: VerticalDivider(
                indent: 50,
                endIndent: 50,
                color: Colors.grey,
                width: 50,
                thickness: 2.5,
              ),
            ),
            SizedBox(
              height: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Team B",
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    "$teamB",
                    style: const TextStyle(fontSize: 150),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        // fixedSize: Size(150, 10),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamB++;
                        });
                      },
                      child: const Text(
                        "Add 1 Point",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        // fixedSize: Size(150, 10),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamB += 2;
                        });
                      },
                      child: const Text(
                        "Add 2 Point",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        // fixedSize: Size(150, 10),
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamB += 3;
                        });
                      },
                      child: const Text(
                        "Add 3 Point",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      )),
                ],
              ),
            ),
          ]),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamA = 0;
                  teamB = 0;
                });
              },
              child: const Text(
                "Reset",
                style: TextStyle(color: Colors.black, fontSize: 24),
              ))
        ],
      ),
    );
  }
}
