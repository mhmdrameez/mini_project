import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 10.0),
              width: 800,
              height: 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0)
                  ]),
              child: Center(
                child: ListTile(
                  leading: Image.asset('images/bell1.png'),
                  title: Text('Load shedding scheduled'),
                  subtitle: Text('load shedding scheduled for tommorow'),
                ),
              )
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     Image.asset('images/bell1.png'),
              //     Text(
              //         'Load shedding scheduled\nload shedding scheduled for tommorow')
              //   ],
              // ),
              ),
        ],
      ),
    );
  }
}
