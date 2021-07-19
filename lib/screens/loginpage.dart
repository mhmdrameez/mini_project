import 'package:flutter/material.dart';
import 'package:minpro/screens/homepage.dart';

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);
  // final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController where = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 10),
            //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            //   width: size.width * 0.8,
            //   decoration: BoxDecoration(
            //     color: Colors.lightGreen,
            //     borderRadius: BorderRadius.circular(29),
            //   ),
            //   child: TextField(
            //     controller: where,
            //     cursorColor: Colors.white,
            //   ),
            // ),
            Text('UserName'),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 10.0),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0)
                  ]),
              child: TextField(
                controller: where,
                cursorColor: Colors.white,
              ),
            ),
            Text('Password'),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 10.0),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 6.0)
                  ]),
              child: TextField(
                controller: where,
                cursorColor: Colors.white,
              ),
            ),
            Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 10.0),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: Color(0xFF50C878),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: FlatButton(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => HomePage()));
                  },
                )),
            // RoundedInputField(),
            // SizedBox(
            //   height: 10,
            // ),

            // RoundedButton(
            //   text: "Get Started",
            //   color: Colors.blue,
            //   press: submitMobileNumber,
            // )
          ],
        ),
      ),
    );
  }
}
