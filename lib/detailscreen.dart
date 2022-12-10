import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:furni/cartscreen.dart';
import 'package:furni/homescreen.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  final String image;
  final String name;
  final double price;
  DetailScreen({required this.image, required this.name, required this.price});
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int count = 1;
  // ProductProvider productProvider;
  Widget _buildImage() {
    return Center(
      child: Container(
        width: 350,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(13),
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage("${widget.image}"))),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNameToDescriptionPart() {
    return Container(
      height: 100,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Rs ${widget.price.toString()}",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Text(
                "Description",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDiscription() {
    return Container(
      height: 90,
      child: Wrap(
        children: [
          Text(
            "The furniture had a simplicity and a flare all at once, as if inspired by the simple gown that is confident in taking up its space",
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget _buildColorPart() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 265,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.blue[200],
                    child: Center(),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.green[200],
                    child: Center(),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.yellow[200],
                    child: Center(),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.cyan[300],
                    child: Center(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildQuentityPart() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                              child: Icon(Icons.remove),
                              onTap: () {
                                setState(() {
                                  if (count > 1) {
                                    count--;
                                  }
                                });
                              }),
                          Text(
                            count.toString(),
                            style: TextStyle(fontSize: 18),
                          ),
                          GestureDetector(
                              child: Icon(Icons.add),
                              onTap: () {
                                setState(() {
                                  count++;
                                });
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildButtonPart() {
    return Container(
      height: 50,
      width: double.infinity,
      child: TextButton(
          child: Text(
            "Check Out",
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {
            // productProvider.getCartData(
            //     name: widget.name,
            //     image: widget.image,
            //     quentity: count,
            //     price: widget.price);
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => CartScreen()));
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Detail Page",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => HomePage()));
              }),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                ),
                onPressed: () {})
          ],
        ),
        body: Container(
          child: ListView(
            children: [
              Container(
                child: Container(
                  height: 1000,
                  child: Column(
                    children: [
                      _buildImage(),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildNameToDescriptionPart(),
                            _buildDiscription(),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "color",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      _buildColorPart(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Quantity",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _buildQuentityPart(),
                      SizedBox(
                        height: 15,
                      ),
                      _buildButtonPart()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}