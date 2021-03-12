import 'package:flutter/material.dart';
import 'test.dart';
import 'About_Kvk.dart';
import 'Avliable_For_Sale.dart';
import 'Contact.dart';
import 'Crops_Update.dart';
import 'Display_Unit.dart';
import 'Farmer_Story.dart';
import 'Home_Science.dart';
import 'Photo_Gallery.dart';
import 'Staf.dart';
import 'Training.dart';
import 'Weather.dart';
import 'Whatsapp_Group.dart';
import 'test1.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
  Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KVK',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'KVK'),
    );
  }
}
  

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

  
    var column = 
Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: [
            
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Icon(Icons.umbrella_rounded),
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: RaisedButton(
                        color: Colors.grey,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>MyApp()));
                        },
                        child: Text('About KVK '),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Training()),
                    );
                  },
                  child: Text('Training'),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FarmerStory()),
                    );
                  },
                  child: Text('Farmer Story'),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CropsUpdate()),
                    );
                  },
                  child: Text('Crops Update'),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DisplayUnit()),
                    );
                  },
                  child: Text('Display Unit'),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,                                                                                                                                                                                                                                                                                                                                                                                     
                      MaterialPageRoute(builder: (context) => Staf()),
                    );
                  },
                  child: Text('Staff'),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScience()),
                    );
                  },
                  child: Text('Home Science'),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PhotoGallery()),
                    );
                  },
                  child: Text('Photo Gallery'),
                ),
              ),
            ),
          ],
        ),
        Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width /2,
                  child: Card(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Contact(),
                          ),
                        );
                      },
                      child: Text('Contact details'),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Card(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AvliableForSale()),
                        );
                      },
                      child: Text('Avliable for sale'),
                    ),
                  ),
                ),
              ],
            ),
          
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Card(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Weather()),
                      );
                    },
                    child: Text('Weather'),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Card(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WhatsappGroup()),
                      );
                    },
                    child: Text('Join whatsapp group'),
                  ),
                ),
              ),
            ],
          ),
          ],
          );
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and++ use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          scrollDirection: Axis.vertical,
              children:[ Column(
              children:[
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          color: Colors.blue,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 2.3,
                          child: MyApp1(),
                        ),
                      ),
                       SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Card(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WhatsappGroup()),
                      );
                    },
                    child: Text('ASk Question/query'),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Card(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WhatsappGroup()),
                      );
                    },
                    child: Text('Soln of query'),
                  ),
                ),
              ),
                     
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height/2,
                            child:column,
                            ),
                    
            
               ],),
                  ],),
      ),
    );
  }
}
