import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/Background.dart';
import 'package:flutter_app/PopularList.dart';
import 'package:flutter_app/models/dummy.dart';
import 'package:flutter_app/second_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Horizental List"),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.white,
        body:SecondPage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Fab Click.....");
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

}

class listCart extends StatefulWidget {
  @override
  _listCartState createState() => _listCartState();
}

class _listCartState extends State<listCart> {
  List<Dummy> dummyList = [
    Dummy(
        name: "Suresh",
        mobile: "8985018103",
        email: "suresh@gmail.com",
        image:
            "https://1.bp.blogspot.com/-NiNaLUVIuaE/XdP7uYpCD_I/AAAAAAAAbu8/j1n9UFpof_QqchUqFqJO2ZNcu6wRToLpwCLcBGAsYHQ/s1600/24%2BHearts%2BDP%2BProfile%2BPictures%2Bcollection%2B2019%2B-facebookdp%2B%252817%2529.jpg",
        num: 0),
    Dummy(
        name: "Suresh",
        mobile: "8985018103",
        email: "suresh@gmail.com",
        image:
            "https://1.bp.blogspot.com/-NiNaLUVIuaE/XdP7uYpCD_I/AAAAAAAAbu8/j1n9UFpof_QqchUqFqJO2ZNcu6wRToLpwCLcBGAsYHQ/s1600/24%2BHearts%2BDP%2BProfile%2BPictures%2Bcollection%2B2019%2B-facebookdp%2B%252817%2529.jpg",
        num: 0),
    Dummy(
        name: "Suresh",
        mobile: "8985018103",
        email: "suresh@gmail.com",
        image:
            "https://1.bp.blogspot.com/-NiNaLUVIuaE/XdP7uYpCD_I/AAAAAAAAbu8/j1n9UFpof_QqchUqFqJO2ZNcu6wRToLpwCLcBGAsYHQ/s1600/24%2BHearts%2BDP%2BProfile%2BPictures%2Bcollection%2B2019%2B-facebookdp%2B%252817%2529.jpg",
        num: 0),
    Dummy(
        name: "Suresh",
        mobile: "8985018103",
        email: "suresh@gmail.com",
        image:
            "https://1.bp.blogspot.com/-NiNaLUVIuaE/XdP7uYpCD_I/AAAAAAAAbu8/j1n9UFpof_QqchUqFqJO2ZNcu6wRToLpwCLcBGAsYHQ/s1600/24%2BHearts%2BDP%2BProfile%2BPictures%2Bcollection%2B2019%2B-facebookdp%2B%252817%2529.jpg",
        num: 0),
    Dummy(
        name: "Suresh",
        mobile: "8985018103",
        email: "suresh@gmail.com",
        image:
            "https://1.bp.blogspot.com/-NiNaLUVIuaE/XdP7uYpCD_I/AAAAAAAAbu8/j1n9UFpof_QqchUqFqJO2ZNcu6wRToLpwCLcBGAsYHQ/s1600/24%2BHearts%2BDP%2BProfile%2BPictures%2Bcollection%2B2019%2B-facebookdp%2B%252817%2529.jpg",
        num: 0),
    Dummy(
        name: "Suresh",
        mobile: "8985018103",
        email: "suresh@gmail.com",
        image:
            "https://1.bp.blogspot.com/-NiNaLUVIuaE/XdP7uYpCD_I/AAAAAAAAbu8/j1n9UFpof_QqchUqFqJO2ZNcu6wRToLpwCLcBGAsYHQ/s1600/24%2BHearts%2BDP%2BProfile%2BPictures%2Bcollection%2B2019%2B-facebookdp%2B%252817%2529.jpg",
        num: 0)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: dummyList == null ? 0 : dummyList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0.3,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              width: double.infinity,
              height: 400,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://images.techhive.com/images/article/2016/09/android-old-habits-100682662-primary.idge.jpg"))),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 250,
                      color: Colors.black,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: ClipOval(
                                child: Image.network(
                                  dummyList[index].image,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                dummyList[index].name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                dummyList[index].email,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                dummyList[index].mobile,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                RaisedButton(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      dummyList[index].num--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 0,
                                ),
                                Text(dummyList[index].num.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                SizedBox(
                                  width: 0,
                                ),
                                RaisedButton(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      dummyList[index].num++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 0,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),

    );
  }
}


class IncrementData extends StatefulWidget {
  @override
  _IncrementDataState createState() => _IncrementDataState();
}

class _IncrementDataState extends State<IncrementData> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text(
                "-",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                if (num > 0) {
                  setState(() {
                    num--;
                  });
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                num.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
            RaisedButton(
              child: Text(
                "+",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                setState(() {
                  num++;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
