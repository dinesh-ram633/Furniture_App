import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:furni/detailscreen.dart';
import 'package:furni/homescreen.dart';


class LightingPage extends StatefulWidget {
  const LightingPage({Key? key}) : super(key: key);

  @override
  State<LightingPage> createState() => _LightingPageState();
}

class _LightingPageState extends State<LightingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lighting",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[100],
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (ctx) => HomePage()));
            }),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Column(children: <Widget>[
              Row(
                children: [
                  Card(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (ctx) => DetailScreen(
                                            image:
                                                ("assets/light3.png"),
                                            name: "Realistic Lamps",
                                            price: 1250)));
                              },
                              child: Container(
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Container(
                                          height: 190,
                                          width: 160,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  "assets/light3.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "RS 1250",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "Realistic Lamps",
                                        style: TextStyle(fontSize: 17),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Card(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (ctx) => DetailScreen(
                                                image:
                                                    ("assets/light4.png"),
                                                name: "Tripod Lamps",
                                                price: 1550)));
                                  },
                                  child: Container(
                                      height: 260,
                                      width: 150,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 190,
                                            width: 160,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/light4.png"),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "RS 1550",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            "Tripod Lamps",
                                            style: TextStyle(fontSize: 17),
                                          )
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Card(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (ctx) => DetailScreen(
                                            image:
                                                ("assets/light5.png"),
                                            name: "Desk Lamps",
                                            price: 850)));
                              },
                              child: Container(
                                  height: 250,
                                  width: 180,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 190,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/light5.png"),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "RS 850",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "Desk Lamps",
                                        style: TextStyle(fontSize: 17),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Card(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (ctx) => DetailScreen(
                                                image: ("assets/light1.jpg"),
                                                name: "Pendant Light",
                                                price: 950)));
                                  },
                                  child: Container(
                                    height: 260,
                                    width: 150,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 190,
                                          width: 160,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/light1.jpg"),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "RS 950",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          "Pendant Light",
                                          style: TextStyle(fontSize: 17),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
