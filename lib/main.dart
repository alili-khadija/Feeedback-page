import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(CTStatelessClass());

class CTStatelessClass extends StatelessWidget {
  const CTStatelessClass({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    double ffem = 1.0;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(27, 20, 27, 110),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'lib/Images/Feedback-bro 1.png',
                    width: 230 * fem,
                    height: 225 * fem,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
                      child: Text(
                        'Rate switch it !',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.46,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Container(
                      width: 307,
                      height: 48.94,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: Center(
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color:
                                Color(0xFFFFD700), // Set star color to FFD700
                            size: 50, // Fixed star size
                            semanticLabel: 'Star', // Provide a semantic label
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: Text(
                        'Write your feedback',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.46,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: 307,
                      height: 153,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      decoration: BoxDecoration(
                        color: Color(0xFFFBF3AB),
                        borderRadius: BorderRadius.circular(15.88),
                        border: Border.all(
                          color: Colors.black,
                          width: 0.6,
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 307,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFD700),
                    borderRadius: BorderRadius.circular(10 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'Submit',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6900FF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
