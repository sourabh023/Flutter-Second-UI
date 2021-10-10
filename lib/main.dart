import 'package:flutter/material.dart';
import 'package:newui2/btmnvgbar.dart';
import 'package:newui2/cooking.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff8f9ff),
           floatingActionButton: SizedBox(
          height: 50,
          width: 50,
          child: FloatingActionButton(
            backgroundColor: Color(0xff261EBE),
            onPressed: () {  },
            child: Icon(Icons.add),
            
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.indigo[400],
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Icon(Icons.public_outlined),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Icon(Icons.notifications_active_outlined),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.indigo[400],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Hi Sonia",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          // Icon(Icons.queue_play_next_outlined),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(50)),
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Icon(
                              Icons.search_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Search here",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff575766)),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Icon(Icons.delete_forever_outlined,
                                size: 30, color: Color(0xfffc2bfe8)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Icon(Icons.note_outlined,
                                size: 30, color: Color(0xfffc2bfe8)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Icon(Icons.arrow_circle_up_rounded,
                                size: 30, color: Color(0xfffc2bfe8)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xfffff2c7),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xfffff9e7),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Icon(Icons.bubble_chart_outlined,
                                          color: Colors.orange, size: 35),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: (Text(
                                      "New Ideas",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.orangeAccent,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffd8efff),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xfff2faff),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Icon(Icons.music_note_rounded,
                                          color: Color(0xff7dbbea), size: 35),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: (Text(
                                      "Music",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff7dbbea),
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 140,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffe0d7ff),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xfff3f1ff),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Icon(Icons.tv_off_outlined,
                                                color: Color(0xff7b63d9),
                                                size: 35),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: (Text(
                                            "Programming",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xff7b63d9),
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 140,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xfffbe2fa),
                                    ),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          child: Container(
                                            margin: EdgeInsets.only(top: 20),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xfffdf0ff),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Icon(
                                                  Icons.food_bank_outlined,
                                                  color: Color(0xffe268c0),
                                                  size: 35),
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CooKing()),
                                            );
                                          },
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: (Text(
                                            "Cooking",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xffe268c0),
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 140,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xfffff2c7),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xfffff9e7),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Icon(
                                                Icons.bubble_chart_outlined,
                                                color: Colors.orange,
                                                size: 35),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: (Text(
                                            "New Ideas",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.orangeAccent,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 140,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffd8efff),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xfff2faff),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Icon(
                                                Icons.music_note_rounded,
                                                color: Color(0xff7dbbea),
                                                size: 35),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: (Text(
                                            "Music",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xff7dbbea),
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 140,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color(0xffe0d7ff),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 20),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xfff3f1ff),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Icon(
                                                      Icons.tv_off_outlined,
                                                      color: Color(0xff7b63d9),
                                                      size: 35),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: (Text(
                                                  "Programming",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Color(0xff7b63d9),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 140,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color(0xfffbe2fa),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 20),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xfffdf0ff),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Icon(
                                                      Icons.food_bank_outlined,
                                                      color: Color(0xffe268c0),
                                                      size: 35),
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: (Text(
                                                  "Cooking",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Color(0xffe268c0),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Nav(),
      ),
    );
  }
}
