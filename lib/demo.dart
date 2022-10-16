import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final TextEditingController first = TextEditingController();
  final TextEditingController second = TextEditingController();
  final TextEditingController time = TextEditingController();

  double _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc3bbbb),
      appBar: AppBar(
        title: Text(
          'β-hCG CALCULATOR',
          style: TextStyle(fontSize: 20, color: Color(0xff151212)),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffafe333),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assests/logo.png"),
                ),
              ),
            ),
            SizedBox(height: 80),
            TextField(
              controller: first,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'First β-hCG level (mIU/mL)',
                labelStyle: TextStyle(fontSize: 15, color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: second,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Second β-hCG level (mIU/mL)',
                labelStyle: TextStyle(fontSize: 15, color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: time,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Time between measurement',
                labelStyle: TextStyle(fontSize: 15, color: Color(0xff000000)),
              ),
            ),
            SizedBox(height: 25),
            RaisedButton(
              color: Color(0xffafe333),
              child: Text(
                "CALCULATE",
                style: TextStyle(color: Color(0xff151212)),
              ),
              onPressed: calculateBMI,
            ),
            SizedBox(height: 15),
            Text(
              _result == null
                  ? "Enter Value"
                  : "Difference ${_result.toStringAsFixed(2)} mIU/mL",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calculateBMI() {
    double first1 = double.parse(first.text);
    double second1 = double.parse(second.text);

    double result = second1 - first1;

    _result = result;

    setState(() {});
  }
}
