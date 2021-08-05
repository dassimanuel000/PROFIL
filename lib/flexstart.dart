import 'package:flutter/material.dart';

class Flexstart extends StatefulWidget {
  @override
  _FlexstartState createState() => _FlexstartState();
}

class _FlexstartState extends State<Flexstart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Column(children: <Widget>[
          Container(
            height: 45.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  blurRadius: 15,
                  offset: const Offset(0.0, 15.0),
                  color: Color(0XFF303030).withAlpha(20))
            ]),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Image.asset("assets/images/logo.png"),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    'FlexStart',
                    style: TextStyle(
                        color: Colors.blue.withGreen(35),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Open",
                        fontSize: 32),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 250.0),
                    child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {
                                menu(context);
                              },
                              color: Colors.blue.withGreen(35),
                              iconSize: 32,
                            ),
                          ]),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/simple.png"))),
              height: 450.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Amanda Jepson',
              style: TextStyle(
                  color: Colors.blue.withGreen(35),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Open",
                  fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Accountant',
              style: TextStyle(
                  color: Colors.grey[200],
                  fontWeight: FontWeight.normal,
                  fontFamily: "Open",
                  fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Rerum voluptate non adipisci animi distinctio et deserunt amet voluptas. Quia aut aliquid ',
              style: TextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.normal,
                  fontFamily: "Open",
                  fontSize: 14),
            ),
          ),
        ])
      ]),
      floatingActionButton: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            color: Colors.blue.withGreen(35),
            borderRadius: BorderRadius.circular(3)),
        child: Center(
          child: IconButton(
            icon: Icon(Icons.arrow_upward),
            onPressed: () {},
            color: Colors.white,
            iconSize: 16,
          ),
        ),
      ),
    );
  }
}

menu(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
            child: Material(
                type: MaterialType.transparency,
                child: Container(
                  height: 450.0,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Home',
                          style: TextStyle(
                              color: Colors.blue.withGreen(35),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Open",
                              fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'About',
                          style: TextStyle(
                              color: Colors.blue.withGreen(35),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Open",
                              fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Services',
                          style: TextStyle(
                              color: Colors.blue.withGreen(35),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Open",
                              fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Portfolio',
                          style: TextStyle(
                              color: Colors.blue.withGreen(35),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Open",
                              fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Team',
                          style: TextStyle(
                              color: Colors.blue.withGreen(35),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Open",
                              fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'Blog',
                          style: TextStyle(
                              color: Colors.blue.withGreen(35),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Open",
                              fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 10, right: 20),
                        child: Container(
                          height: 46,
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                              color: Colors.blue.withGreen(35),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Open",
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )));
      });
}
