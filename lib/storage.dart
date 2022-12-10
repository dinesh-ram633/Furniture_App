import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:furni/detailscreen.dart';
import 'package:furni/homescreen.dart';


class StoragePage extends StatefulWidget {
  const StoragePage({Key? key}) : super(key: key);

  @override
  State<StoragePage> createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Storage",
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
                                                ("assets/storage3.jpg"),
                                            name: "Modern Wardrobe",
                                            price: 13500)));
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
                                                  "assets/storage3.jpg"),
                                            ),
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
                                        "Modern Wardrobe",
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
                                                    ("assets/storage4.jpg"),
                                                name: "Wooden Wardrobe",
                                                price: 8500)));
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
                                                    "assets/storage4.jpg"),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "RS 8500",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            "Wooden Wardrobe",
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
                                                ("assets/storage5.png"),
                                            name: "Classic Wardrobe ",
                                            price: 11000)));
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
                                                "assets/storage5.png"),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "RS 11000",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "Classic Wardrobe",
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
                                                    ("assets/storage6.jpg"),
                                                name: "Sliding Wardrobe",
                                                price: 7500)));
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
                                                  "assets/storage6.jpg"),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "RS 7500",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          "Sliding Wardrobe",
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