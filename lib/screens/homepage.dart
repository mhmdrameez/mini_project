import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minpro/screens/alerts.dart';
import 'package:minpro/screens/bill.dart';
import 'package:minpro/screens/data.dart';
import 'package:minpro/screens/notifications.dart';

import 'package:minpro/screens/send.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> path = [Bill(), Send(), Data(), Alerts()];

  Items item1 = new Items(
    title: "Bill Payment",
    img: "images/bill.png",
    path: '/bill',
  );

  Items item2 =
      new Items(title: "Send Queries", img: "images/send.png", path: '/send');
  Items item3 = new Items(
      title: "Analyze Data", img: "images/analyze.png", path: '/data');
  Items item4 =
      new Items(title: "Alerts", img: "images/alert.png", path: '/alerts');

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4];
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image(
                    image: AssetImage("images/menu.png"),
                    color: Colors.white,
                    width: 5,
                    height: 5,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifications()));
                },
                child: Image.asset('images/bell.png'))
          ],
        ),
        body: Column(
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 10.0),
                width: double.infinity,
                height: 330,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 6.0)
                    ]),
                child: Flexible(
                  child: GridView.count(
                      childAspectRatio: 1.0,
                      padding: EdgeInsets.only(left: 16, right: 16),
                      crossAxisCount: 2,
                      crossAxisSpacing: 18,
                      mainAxisSpacing: 18,
                      children: myList.map((data) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, data.path);
                            print(data.path);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0),
                                      blurRadius: 6.0)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  data.img,
                                  width: 42,
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  data.title,
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList()),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(60)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0)
                  ],
                  color: Colors.white),
              child: Column(
                children: [
                  Text('REAL TIME CURRENT\nCONSUMPTION DATA'),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 10.0),
                          width: 120,
                          decoration: BoxDecoration(
                            color: Color(0xFF50C878),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: FlatButton(
                            child: Column(
                              children: [
                                Text(
                                  'Amount',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Rs 12000',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage())),
                          )),
                      Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 10.0),
                          width: 120,
                          decoration: BoxDecoration(
                            color: Color(0xFF50C878),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: FlatButton(
                            child: Column(
                              children: [
                                Text(
                                  'Usage',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '1000 kwh',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage())),
                          ))
                    ],
                  ),
                  Text('Your Devices'),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 10.0),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 6.0)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('images/fan.png'),
                        Text('Usage\n120kwh'),
                        Text('Amount\nRs500')
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 10.0),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 6.0)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('images/fan.png'),
                        Text('Usage\n120kwh'),
                        Text('Amount\nRs500')
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class Items {
  String title;
  String img;
  String path;
  Widget wid;
  Items({this.title, this.img, this.path, this.wid});
}
