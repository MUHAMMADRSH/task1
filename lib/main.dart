import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get child => null;

  get children => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram',
      home: Scaffold(
        appBar: AppBar(
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Telegram'),
              Icon(Icons.search, color: Colors.white),
            ],
            //
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: buildStack("assets/images/karoonpro.jpg"),
                      margin: const EdgeInsets.all(4.0),
                    ),
                    Text(
                      "mohammad",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "+98140456580", 
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: new Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(3.0),
                      child: Icon(Icons.group, color: Colors.grey),
                    ),
                    Text(
                      "New Group",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    )
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: new Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(3.0),
                      child: Icon(Icons.lock, color: Colors.grey),
                    ),
                    Text(
                      "New Secret Chat",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    )
                  ],
                ),
              ),
              ListTile(
                title: new Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(3.0),
                      child: Icon(Icons.streetview, color: Colors.grey),
                    ),
                    Text(
                      "New Channel",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    )
                  ],
                ),
              ),
              Divider(),
              ListTile(
                title: new Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(3.0),
                      child:
                          Icon(Icons.perm_contact_calendar, color: Colors.grey),
                    ),
                    Text(
                      "Contacts",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    )
                  ],
                ),
              ),
              ListTile(
                title: new Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(3.0),
                      child: Icon(Icons.message, color: Colors.grey),
                    ),
                    Text(
                      "Send Messages",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    )
                  ],
                ),
              ),
              ListTile(
                title: new Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(3.0),
                      child: Icon(Icons.call, color: Colors.grey),
                    ),
                    Text(
                      "Calls",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    )
                  ],
                ),
              ),
              ListTile(
                title: new Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(3.0),
                      child: Icon(Icons.person_add, color: Colors.grey),
                    ),
                    Text(
                      "Invite Friends",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    )
                  ],
                ),
              ),
              ListTile(
                title: new Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(3.0),
                      child: Icon(Icons.settings, color: Colors.grey),
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    )
                  ],
                ),
              ),
              ListTile(
                title: new Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(3.0),
                      child: Icon(Icons.help_outline, color: Colors.grey),
                    ),
                    Text(
                      "Telegram FAQ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: getlistView(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.border_color, color: Colors.white),
          backgroundColor: Colors.blue[400],
        ),
      ),
    );
  }

  /*Widget buildCulomn() {
    return Column(
      children: <Widget>[
        Text(
          "type of fruits",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "To create a row or column in Flutter, you add a list of children widgets"
                    " to a Row or Column widget. In turn, each child can itsel",
                style: TextStyle(
                    fontSize: 14, color: Colors.black26, fontFamily: 'Roboto'),
              ),
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.star, color: Colors.green),
            Icon(Icons.star, color: Colors.green),
            Icon(Icons.star, color: Colors.green),
            Icon(Icons.star, color: Colors.black38),
            Icon(Icons.star, color: Colors.black38),
            Text(
              "170 liked",
              style: TextStyle(fontSize: 13, color: Colors.red),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.access_time, color: Colors.amber),
                Text(
                  "time",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "1 hours ago",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.cloud_download, color: Colors.green),
                Text(
                  "download",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "1 min ago",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.group_add, color: Colors.indigo),
                Text(
                  "contact",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "2 sec ago",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }*/

  Widget getlistView() {
    return ListView(
      children: <Widget>[
        getlistTile("assets/images/trump.jpeg", "Trump",
            "we want attack to iran with wholw arm", "1 min ago", "12"),
        Divider(),
        getlistTile(
            "assets/images/ainshtain.jpeg",
            "ainshtain",
            "i am detect a material that can remain bilion years for live human",
            "yesterday",
            "2"),
        Divider(),
        getlistTile(
            "assets/images/mask.jpeg",
            "alex",
            "we will go to italya and we want create a butiffle mashine",
            "2:10",
            "123"),
        Divider(),
        getlistTile(
            "assets/images/matarsak.jpeg",
            "matarsak",
            "hey mohammad are you watch football iran & usa in germany",
            "20:10",
            "1"),
        Divider(),
        getlistTile(
            "assets/images/oldman.jpeg",
            "grand father",
            "hello my boy are you going to my home with your father",
            "14:10",
            "65"),
        Divider(),
        getlistTile(
            "assets/images/stujobs.jpeg",
            "Steve Jobs",
            "we will create a mobile that can flexable and very butifle",
            "17:15",
            "20"),
        Divider(),
        getlistTile("assets/images/sun.jpg", "sun Women",
            "we want to go to dance are you will come", "long time a go", "17"),
      ],
    );
  }

  Widget buildStack(String image) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 30,
        ),
      ],
    );
  }

  ListTile getlistTile(String Image, String channelname, String text,
      String date, String number) {
    return ListTile(
      leading: buildStack(
        Image,
      ),
      title: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            channelname,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          Container(
            decoration: BoxDecoration(),
            child: Text(
              date,
              style: TextStyle(
                fontSize: 10,
                height: 1,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ],
      ),
      subtitle: new Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(),
            width: 230,
            child: Text(
              text,
              maxLines: 1,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black38,
              ),
            ),
          ),
          Container(
            alignment: Alignment(0, 0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
            ),
            width: 22,
            height: 20,
            child: Text(
              number,
              style: TextStyle(
                fontSize: 10,
                height: 1,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
