import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Api/Service.dart';
import 'package:flutter_app/first_Page.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/models/users.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Users> users;
  bool isLoading;

  List<String> _list = ["0","1","2","3","4","5","6","7","8","9","0","1","2","3","4","5","6","7","8","9"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLoading = true;

    Service.getUsers().then((value) {
      setState(() {
        users = value;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.orange,
      ),
      body: Container(child: _GridView1()),
    );
  }

  Widget _listView() {
    return isLoading
        ? Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: users == null ? 0 : users.length,
            itemBuilder: (context, index) {
              Users user = users[index];
              return Card(
                child: ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.address.city),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => MyPage(user.name, user.phone))),
                ),
              );
            },
          );
  }

  Widget _GridView() {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double heightScreen = mediaQueryData.size.height;

    return isLoading
        ? Center(child: CircularProgressIndicator())
        : GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 1,
            childAspectRatio: MediaQuery.of(context).size.height / 1100,


          ),
          itemCount: users.length,
          itemBuilder: (context, index) {
            Users user = users[index];
            return Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: double.infinity,
                      height: 80,
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://static.toiimg.com/photo/72975551.cms"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      user.name,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      user.phone,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      user.email,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      user.email,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      user.email,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              /*decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://static.toiimg.com/photo/72975551.cms"
              )
          )
          ),*/
            );

          },
        );
  }

  Widget _GridView1(){
    return isLoading
        ? Center(child: CircularProgressIndicator())
        : GridView.count(
      semanticChildCount :users == null ? 0 : users.length ,
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      childAspectRatio: MediaQuery.of(context).size.height / 600,
      children: users.map((value) {
        return GestureDetector(
          onTap: (){
            print("Click ${value.name}");
            Navigator.push(context, MaterialPageRoute(builder: (_) => MyPage(value.name,value.phone)));
          },
          child: Card(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(border: Border.all(color: Colors.black),),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text(value.name),
                    SizedBox(height: 20.0,),
                    Text(value.phone),
                ],
              )
            ),
          ),
        );
      }).toList(),
    );
  }
}
