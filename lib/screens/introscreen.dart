import 'package:flutter/material.dart';
import 'package:notes_app/screens/note_list.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          new Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color(0xff2c2b4d)),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 30),
                      child: IconButton(
                          icon: Icon(
                            Icons.info,
                            size: 30,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    )
                  ],
                ),
                new SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "Create",
                    style: new TextStyle(color: Colors.white, fontSize: 45),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "and record",
                    style: new TextStyle(color: Colors.white, fontSize: 45),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "your notes",
                    style: new TextStyle(color: Colors.white, fontSize: 45),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "easily",
                    style: new TextStyle(color: Colors.white, fontSize: 45),
                  ),
                ),
                new SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "Note-tacker to annotate documents",
                    style:
                        new TextStyle(color: Color(0xff8c8ba1), fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "record lectures and more",
                    style:
                        new TextStyle(color: Color(0xff8c8ba1), fontSize: 15),
                  ),
                ),
                new Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 33, right: 33, top: 33, bottom: 20),
                      child: GestureDetector(
                        onTap: () {
                         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>NoteList()), (route) => false);
                          print("next page");
                        },
                        child: new Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: new BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(16),
                              color: Color(0xfffa5b5f)),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Get Started ",
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              new SizedBox(
                                width: 75,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 289,
                  width: MediaQuery.of(context).size.width,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.network(
                      "http://image.freepik.com/free-vector/add-notes-concept-illustration_114360-2496.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
