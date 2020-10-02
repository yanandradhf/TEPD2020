import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _iconColor = Colors.grey[500];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Mission 1"),
            ),
            body: Stack(
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.red, Colors.blue]))),
                Column(children: <Widget>[
                  Flexible(
                      flex: 2,
                      child: Container(
                          //color: Colors.white,
                          margin: EdgeInsets.only(bottom: 5),
                          width: 700,
                          height: 700,
                          padding: EdgeInsets.all(3),
                          child: Image(
                            image: NetworkImage(
                                "https://www.carmudi.co.id/journal/wp-content/uploads/2019/03/Deretan-Vespa-Terbaru-dipajang-di-Dealer-Sinergi-Ciledug.jpg"),
                            fit: BoxFit.fill,
                          ))),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        // color: Colors.red,
                        child: Row(children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: 300,
                              height: 300,
                              padding: EdgeInsets.all(2),
                              margin: EdgeInsets.only(left: 3, right: 3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://statik.tempo.co/data/2019/09/18/id_873465/873465_720.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: 300,
                              height: 300,
                              padding: EdgeInsets.all(2),
                              margin: EdgeInsets.only(left: 3, right: 3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://imgcdnblog.carbay.com/wp-content/uploads/2020/07/28185324/2020-Vespa-LX-125-i-get-Yellow-Lime.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: 300,
                              height: 300,
                              padding: EdgeInsets.all(2),
                              margin: EdgeInsets.only(left: 3, right: 3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://s4.bukalapak.com/uploads/content_attachment/4ceb6bd3a372b432d86158b5/w-744/2._Tips_Mudah_Merawat_Skuter_Matik_Piaggio.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              width: 300,
                              height: 300,
                              padding: EdgeInsets.all(2),
                              margin: EdgeInsets.only(left: 3, right: 3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://s0.bukalapak.com/uploads/content_attachment/00b9b9b4a22679ed38de38b5/w-744/Tips_Mudah_Merawat_Skuter_Matik_Piaggio.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ]),
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                          //    color: Colors.yellow,6
                          child: Text(
                        "PIAGGIO MODERN SCOOTER",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 25),
                      ))),
                  Flexible(
                      flex: 3,
                      child: Container(
                          child: ListView(
                        children: <Widget>[
                          Text(
                            "The new Vespa S 125 i-get experiences a significant enhancement to provide a better riding experience for its riders. One of the most visible change can be seen from the newly reshaped footrest to enhance control and comfort for both the rider and the passenger.",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            " ",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Another change is the new double seat saddle with redesigned shape, having a flatter and narrower tip to ensure a comfortable ride. Likewise, the new saddle material further enhances the premium look ",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            " ",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "To strengthen the effervescent & trendy look of the rider is the introduction of new sporty Vespa helmet, a half-face helmet style with an infusion of a sporty and masculine feel, injected by the mixture of strong grey titanio and a vivid blue vivace colour gracing its surface. The new Vespa S 125 i-get is dedicated to young people who want to live more with youth - to live playfully and have a young lifestyle. For those who dare to personalize Vespa S 125 i-get more can access Vespa configurator to enjoy the fun of configuring Vespa using Vespa stylish accessories that would enhance the look of their Vespa S 125 i-get. While for those who want to take a step closer of owning the new Vespa S 125 i-get can make e-prebooking in Vespa Indonesia website by completing pre-book form for later the selected dealers will follow up the booking process of dream Vespa. ",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )
                        ],
                      ))),
                ]),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          if (_iconColor == Colors.grey[500]) {
                            _iconColor = Colors.red;
                          } else if (_iconColor == Colors.red) {
                            _iconColor = Colors.grey[500];
                          }
                        });
                      },
                      child: Icon(
                        Icons.favorite,
                        color: _iconColor,
                      ),
                      backgroundColor: Colors.grey[100],
                    ),
                  ),
                )
              ],
            )));
  }
}
