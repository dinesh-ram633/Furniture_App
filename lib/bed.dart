import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:furni/detailscreen.dart';
import 'package:furni/homescreen.dart';


class BedPage extends StatefulWidget {
  const BedPage({Key? key}) : super(key: key);

  @override
  State<BedPage> createState() => _BedPageState();
}

class _BedPageState extends State<BedPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  bool homeColor = true;

  bool cartColor = false;

  bool aboutColor = false;

  bool contactusColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text(
          "Bed",
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
                                                ("assets/bed2.png"),
                                            name: "Single Bed",
                                            price: 9500)));
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
                                                  "assets/bed2.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "RS 9500",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "Single Bed",
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
                                                image: ("assets/bed3.png"),
                                                name: "King Size Bed",
                                                price: 22000)));
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
                                                    "assets/bed3.png"),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "RS 22000",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            "King Size Bed",
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
                                                ("assets/bed4.png"),
                                            name: "Queen Size Bed",
                                            price: 16000)));
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
                                                "assets/bed4.png"),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "RS 16000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "Queen Size Bed",
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
                                                    ("assets/bed1.png"),
                                                name: "Foam bed ",
                                                price: 13500)));
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
                                                  "assets/bed1.png"),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "RS 13500",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          "Foam bed",
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