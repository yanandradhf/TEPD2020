import 'package:flutter/material.dart';

void main() {
  runApp(Booking());
}

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  final _text1 = TextEditingController();
  final _text2 = TextEditingController();
  final _text3 = TextEditingController();
  final _text4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: _text1,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: "Full Name",
                  hintText: "Your Full Name",
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: _text2,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  labelText: "Email Address",
                  hintText: "Your Email Address",
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: _text3,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_android),
                  labelText: "Phone Number",
                  hintText: "Your Phone Number",
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: _text4,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_city),
                  labelText: "Type Vespa",
                  hintText: "Sprint / Primavera",
                  border: OutlineInputBorder(),
                ),
              ),
              RaisedButton.icon(
                  onPressed: () {
                    if (_text1.text.isEmpty ||
                        _text2.text.isEmpty ||
                        _text3.text.isEmpty ||
                        _text4.text.isEmpty) {
                      return showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Booking Failed"),
                              content: Text("Please Fill All From Field"),
                              actions: [
                                RaisedButton(
                                  child: Text("Okey"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          });
                    } else {
                      return showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Booking Confirmation"),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: [
                                    Text("Name :" + _text1.text),
                                    Text("email :" + _text2.text),
                                    Text("Phone :" + _text3.text),
                                    Text("City :" + _text4.text)
                                  ],
                                ),
                              ),
                              actions: [
                                RaisedButton(
                                  child: Text("Okay"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          });
                    }
                  },
                  textColor: Colors.white,
                  color: Colors.lightBlue,
                  icon: Icon(Icons.save),
                  label: Text("Book Now"))
            ],
          ),
        ),
      ),
    );
  }
}
