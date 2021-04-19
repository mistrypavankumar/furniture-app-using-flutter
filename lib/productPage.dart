import 'package:flutter/material.dart';
import 'package:furniture_app/constants/styleScheme.dart';
import 'package:furniture_app/widget.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),
    );
  }
}

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  Color currentColor = Color(0xff2f4b81);
  String currentChair = "1";

  String sofaColor = "blueSofa";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            CustomeAppBar(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5, right: 5),
                  height: 250,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: containerStyle("all"),
                  child: Container(
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'asset/images/$sofaColor/$currentChair.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width * 0.15,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  margin: EdgeInsets.only(bottom: 5, right: 5),
                  decoration: containerStyle("left"),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      colorWidget(Color(0xff2f4b81)),
                      colorWidget(Color(0xffbc4747)),
                      colorWidget(Color(0xfffec286)),
                      colorWidget(Color(0xff47bc66)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    productWidget("1"),
                    productWidget("2"),
                    productWidget("3"),
                    productWidget("4"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5, right: 5),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: containerStyle("left"),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "NASHVILLE ARMCHAIR",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ratingStar(Color(0xffffda00)),
                          SizedBox(
                            width: 5,
                          ),
                          ratingStar(Color(0xffffda00)),
                          SizedBox(
                            width: 5,
                          ),
                          ratingStar(Color(0xffffda00)),
                          SizedBox(
                            width: 5,
                          ),
                          ratingStar(Color(0xffffda00)),
                          SizedBox(
                            width: 5,
                          ),
                          ratingStar(Color(0xffd3d3d1)),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      Text(
                        "\$349.00",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.15,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  margin: EdgeInsets.only(bottom: 5, right: 5),
                  decoration: containerStyle("left"),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Text(
                            "-",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Text(
                            "+",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Icon ratingStar(Color iconColor) {
    return Icon(
      Icons.star,
      color: iconColor,
    );
  }

  InkWell productWidget(String img) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        currentChair = img;
        setState(() {});
      },
      child: Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.only(right: 10, bottom: 10),
        decoration: containerStyle("all").copyWith(
          border: Border.all(
              color: (currentChair == img)
                  ? Color(0xff005dff)
                  : Colors.transparent),
        ),
        child: Center(
          child: Container(
            height: 80,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/$sofaColor/$img.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container colorWidget(Color colorName) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: (currentColor == colorName) ? colorName : Colors.transparent,
        ),
      ),
      child: Center(
        child: InkWell(
          onTap: () {
            currentColor = colorName;

            if (colorName == Color(0xffbc4747)) {
              sofaColor = "redSofa";
            } else {
              sofaColor = "blueSofa";
            }

            setState(() {});
          },
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorName,
            ),
          ),
        ),
      ),
    );
  }
}
