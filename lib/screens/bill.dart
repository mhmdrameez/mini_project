import 'package:flutter/material.dart';
import 'package:minpro/screens/notifications.dart';

class Bill extends StatefulWidget {
  @override
  _BillState createState() => _BillState();
}

class _BillState extends State<Bill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bill Payments'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(20),
              width: 220,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFF50C878),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total Payment',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rs 12000',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          Text(
            'PAYMENT METHODS',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 10.0),
              width: 800,
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
                  leading: Image.asset('images/gpay.png'),
                  title: Text('GOOGLE PAY'),
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
          Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 10.0),
              width: 800,
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
                  leading: Image.asset('images/phonepe.png'),
                  title: Text('PHONE PE'),
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
          Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 10.0),
              width: 800,
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
                  leading: Image.asset('images/paytm.png'),
                  title: Text('PAYTM'),
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
