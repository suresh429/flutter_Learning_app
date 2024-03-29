import 'package:flutter/material.dart';

class PopularList extends StatefulWidget {
  PopularList({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PopularListState createState() => new _PopularListState();
}

class _PopularListState extends State<PopularList> {
  List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8"
  ];

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    final headerList = new ListView.builder(
      itemBuilder: (context, index) {
        EdgeInsets padding = index == 0?const EdgeInsets.only(
            left: 20.0, right: 10.0, top: 4.0, bottom: 30.0):const EdgeInsets.only(
            left: 10.0, right: 10.0, top: 4.0, bottom: 30.0);

        return new Padding(
          padding: padding,
          child: new InkWell(
            onTap: () {
              print('Card selected');
            },
            child: new Container(
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(10.0),
                color: Colors.lightGreen,
                boxShadow: [
                  new BoxShadow(
                      color: Colors.black.withAlpha(70),
                      offset: const Offset(3.0, 10.0),
                      blurRadius: 15.0)
                ],
                image: new DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage('https://images.techhive.com/images/article/2016/09/android-old-habits-100682662-primary.idge.jpg'),
                ),
              ),
              //                                    height: 200.0,
              width: 200.0,
              child: new Stack(
                children: <Widget>[
                  new Align(
                    alignment: Alignment.bottomCenter,
                    child: new Container(
                        decoration: new BoxDecoration(
                            color: const Color(0xFF273A48),
                            borderRadius: new BorderRadius.only(
                                bottomLeft: new Radius.circular(10.0),
                                bottomRight: new Radius.circular(10.0))),
                        height: 30.0,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              '${items[index%items.length]}',
                              style: new TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        );
      },
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
    );

    final body = new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        elevation: 0.0,
        backgroundColor: Colors.black,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),
      backgroundColor: Colors.white,
      body: new Container(
        child: new Stack(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.only(top: 10.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Align(
                    alignment: Alignment.centerLeft,
                    child: new Padding(
                        padding: new EdgeInsets.only(left: 8.0),
                        child: new Text(
                          'Recent Items',
                          style: new TextStyle(color: Colors.white70),
                        )),
                  ),
                  new Container(
                      height: 300.0, width: _width, child: headerList),
                  new Expanded(child:
                  ListView.builder(itemBuilder: (context, index) {
                    return new ListTile(
                      title: new Column(
                        children: [
                          new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 72.0, height: 72.0,
                                decoration: BoxDecoration(
                                  //shape: BoxShape.circle,
                                  color: Colors.redAccent,
                                  image: DecorationImage(
                                      fit: BoxFit.cover, image: NetworkImage('https://images.techhive.com/images/article/2016/09/android-old-habits-100682662-primary.idge.jpg')),

                                  borderRadius: new BorderRadius.circular(50),
                                  border: new Border.all(
                                    color: Colors.green,
                                    width: 2.0,
                                  ),
                                ),

                              ),

                              SizedBox(width: 10.0,),

                              Expanded(
                                child: new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("My item header",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, ),),
                                    Text("Item Subheader goes here\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"),
                                  ],
                                ),
                              ),

                              new Icon(Icons.shopping_cart,color: Colors.black,size: 40,),
                            ],
                          ),
                          new Divider(),
                        ],
                      ),
                      /*title: new Column(
                        children: <Widget>[
                          *//*new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                height: 72.0,
                                width: 72.0,
                                decoration: new BoxDecoration(
                                    color: Colors.red,
                                    boxShadow: [
                                      new BoxShadow(
                                          color:
                                          Colors.black.withAlpha(70),
                                          offset: const Offset(2.0, 2.0),
                                          blurRadius: 2.0)
                                    ],
                                    borderRadius: new BorderRadius.all(
                                        new Radius.circular(12.0)),
                                    image: new DecorationImage(
                                      image: new ExactAssetImage(
                                        'assets/img_${index%items.length}.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              new SizedBox(
                                width: 8.0,
                              ),
                              new Expanded(
                                  child: new Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      new Text(
                                        'My item header',
                                        style: new TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      new Text(
                                        'Item Subheader goes here\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                                        style: new TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.normal),
                                      )
                                    ],
                                  )),
                              new Icon(
                                Icons.shopping_cart,
                                //color: const Color(0xFF273A48),
                              )
                            ],
                          ),*//*
                          new Divider(),
                        ],
                      ),*/
                    );
                  }))
                ],
              ),
            ),
          ],
        ),
      ),
    );

    return new Container(
      decoration: new BoxDecoration(
        color: const Color(0xFF273A48),
      ),
      child: new Stack(
        children: <Widget>[
          new CustomPaint(
            size: new Size(_width, _height),
            // painter: new Background(),
          ),
          body,
        ],
      ),
    );
  }
}