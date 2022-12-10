

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:furni/chair.dart';
import 'package:furni/bed.dart';
import 'package:furni/detailscreen.dart';
import 'package:furni/storage.dart';
import 'package:furni/listproduct.dart';
import 'package:furni/login.dart';
import 'package:furni/sofa.dart';
import 'package:furni/lighting.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  bool homeColor = true;

  bool cartColor = false;

  bool aboutColor = false;

  bool contactusColor = false;

  Widget _buildMyDrawer() {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Furni",
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/sofa3.jpg"),
            ),
            decoration: BoxDecoration(color: Colors.grey),
            accountEmail: Text(
              "dram123@gmail.com",
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            selected: homeColor,
            onTap: () {
              setState(() {
                homeColor = true;
                contactusColor = false;
                cartColor = false;
                aboutColor = false;
              });
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            selected: cartColor,
            onTap: () {
              setState(() {
                cartColor = true;
                contactusColor = false;
                homeColor = false;
                aboutColor = false;
              });
            },
            leading: Icon(Icons.shopping_cart),
            title: Text("Cart"),
          ),
          ListTile(
            selected: aboutColor,
            onTap: () {
              setState(() {
                aboutColor = true;
                contactusColor = false;
                cartColor = false;
                homeColor = false;
              });
            },
            leading: Icon(Icons.info),
            title: Text("About"),
          ),
          ListTile(
            selected: contactusColor,
            onTap: () {
              setState(() {
                contactusColor = true;
                homeColor = false;
                cartColor = false;
                aboutColor = false;
              });
            },
            leading: Icon(Icons.phone),
            title: Text("Contant Us"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginPage())));
            },
            leading: Icon(Icons.exit_to_app),
            title: Text("Logout"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: _buildMyDrawer(),
      appBar: AppBar(
        title: Text(
          "Furni",
          style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic,fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[100],
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              _key.currentState?.openDrawer();
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
              Container(
                height: 120,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categorie",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text("See All",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (ctx) => BedPage()));
                      },
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 35,
                              backgroundColor: Colors.white,
                              child: Image(
                                  image: AssetImage(
                                      "assets/bed6.png")),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (ctx) => ChairPage()));
                              },
                              child: CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.white,
                                child: Image(
                                    image: AssetImage(
                                        "assets/chair1.png")),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (ctx) => SofaPage()));
                              },
                              child: CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.white,
                                child: Image(
                                    image: AssetImage(
                                        "assets/sofa1.png")),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (ctx) => LightingPage()));
                              },
                              child: CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.white,
                                child: Image(
                                    image: AssetImage(
                                        "assets/light6.jpg")),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (ctx) =>
                                            StoragePage()));
                              },
                              child: CircleAvatar(
                                maxRadius: 35,
                                backgroundColor: Colors.white,
                                child: Image(
                                    image: AssetImage(
                                        "assets/storage1.png")),
                              ),
                            )
                          ],
                        ),
                      ),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Product",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (ctx) => ListProduct()));
                                  },
                                  child: Text(
                                    "see all",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (ctx) => DetailScreen(
                                            image:
                                                ("assets/chair5.png"),
                                            name: "Rolling Chair",
                                            price: 7499)));
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
                                                  "assets/chair5.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "RS 7499",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "Rolling Chair",
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
                                                    ("assets/storage2.jpg"),
                                                name: "Wardrobe",
                                                price: 15999)));
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
                                                    "assets/storage2.jpg"),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "RS 15999",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            "Wadrobe",
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
                      children: <Widget>[
                        Text(
                          "New Achives",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (ctx) => ListProduct()));
                          },
                          child: Text(
                            "View More",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
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
                                                ("assets/wall1.jpg"),
                                            name: "Wall Decor",
                                            price: 700)));
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
                                                "assets/wall1.jpg"),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "RS 700",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        "Wall Decor",
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
                                                    ("assets/wall2.jpg"),
                                                name: "Wooden Wall Decor",
                                                price: 999)));
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
                                                    "assets/wall2.jpg"),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "RS 999",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            "Wooden Wall Decor",
                                            style: TextStyle(fontSize: 17),
                                          )
                                        ],
                                      )),
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

