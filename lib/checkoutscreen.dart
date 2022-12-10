import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckOutScreen extends StatefulWidget {
  final double price;
  final String name;
  final String image;
  CheckOutScreen(
      {required this.image, required this.name, required this.price});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  TextStyle myStyle = TextStyle(fontSize: 18);

  Widget _buildSingleCartProduct() {
    return Container(
      height: 150,
      width: double.infinity,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("${widget.image}"),
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  width: 200,
                  child: ListTile(
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: myStyle,
                        ),
                        Text("Cloths"),
                        Text(
                          "Rs ${widget.price.toString()}",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text("Quentity"), Text("1")],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomDetail({String? startname, String? endname}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          startname!,
          style: myStyle,
        ),
        Text(
          endname!,
          style: myStyle,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "CheckOut Page",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {}),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        width: 50,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.only(bottom: 10),
        child: TextButton(
            child: Text(
              "Buy Now",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            onPressed: () {}),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSingleCartProduct(),
                _buildSingleCartProduct(),
                _buildSingleCartProduct(),
                _buildSingleCartProduct(),
                Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildBottomDetail(
                          startname: "Your Price", endname: "Rs.500"),
                      _buildBottomDetail(startname: "Discount", endname: "3%"),
                      _buildBottomDetail(
                          startname: "Shipping", endname: "Rs.50"),
                      _buildBottomDetail(startname: "Total", endname: "Rs.535")
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

