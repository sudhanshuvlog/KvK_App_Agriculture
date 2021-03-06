import 'package:finite_coverflow/finite_coverflow.dart';
import 'package:flutter/material.dart';

void main() => runApp(EntryWidget());

class EntryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finite Coverflow Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Simple Crousel"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: Center(
                        child: SizedBox(
                          height: 250,
                          child: getSimpleCrousel(),
                        ),
                      ),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("Reverse Crousel"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: Center(
                        child: SizedBox(
                          height: 250,
                          child: getReverseCrousel(),
                        ),
                      ),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("Item Rotation Crousel"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: Center(
                        child: SizedBox(
                          height: 250,
                          child: getRotationalCrousel(),
                        ),
                      ),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("Item Variable Scale Crousel"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: Center(
                        child: SizedBox(
                          height: 250,
                          child: getVariableScaleCrousel(),
                        ),
                      ),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("Item Opacity Control Crousel"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: Center(
                        child: SizedBox(
                          height: 250,
                          child: getOpacityCrousel(),
                        ),
                      ),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("Simple Stack Slider"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: Center(
                        child: getStackSlider(),
                      ),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("Reverse Stack Slider"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: getReverseStackSlider(),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("OverScroll Stack Slider"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    home: Scaffold(
                      body: getOverScrollStackSlider(),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("Gallery Slider"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    theme: ThemeData.dark(),
                    home: Scaffold(
                      body: getGallerySlider(),
                    ),
                  );
                }));
              },
            ),
            ListTile(
              title: Text("WalkThrough Slider"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MaterialApp(
                    theme: ThemeData.light(),
                    home: Scaffold(
                      body: WalkThroughSliderExample(),
                    ),
                  );
                }
                )
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget getPage(int index, double position) {
    return Card(
      child: Center(
        child: Text("$index"),
      ),
    );
  }

  Widget getSimpleCrousel() {
    return FinitePager(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
      ],
    );
  }

  Widget getReverseCrousel() {
    return FinitePager(
      reverse: true,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
        
        Container(
          color: Colors.green,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
      ],
    );
  }

  Widget getRotationalCrousel() {
    return FinitePager(
      rotationY: 60,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
         
        Container(
          color: Colors.green,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
      ],
    );
  }

  Widget getVariableScaleCrousel() {
    return FinitePager(
      scaleX: 0.8,
      scaleY: 0.4,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Card(
              child: Image.asset(
                "images/watch_1.jpg",
                height: 200,
              ),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          child: Center(
            child: Card(
              child: Image.asset(
                "images/watch_2.jpg",
                height: 200,
              ),
            ),
          ),
        ),
        
        Container(
          color: Colors.green,
          child: Center(
            child: Card(
              child: Image.asset(
                "images/watch_1.jpg",
                height: 200,
              ),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Card(
              child: Image.asset(
                "images/watch_2.jpg",
                height: 200,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getOpacityCrousel() {
    return FinitePager(
      opacity: 0.4,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          color: Colors.deepPurple,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
        
        Container(
          color: Colors.green,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Card(
              shape: CircleBorder(),
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
      ],
    );
  }

  Widget getStackSlider() {
    return FinitePager(
      pagerType: PagerType.stack,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Card(
          child: Image.asset(
            "images/watch_1.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_2.jpg",
            fit: BoxFit.cover,
          ),
        ),
        
        Card(
          child: Image.asset(
            "images/watch_1.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget getReverseStackSlider() {
    return FinitePager(
      reverse: true,
      pagerType: PagerType.stack,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Card(
          child: Image.asset(
            "images/watch_2.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_1.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_2.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_1.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_2.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_1.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget getOverScrollStackSlider() {
    return FinitePager(
      overscroll: -300,
      pagerType: PagerType.stack,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Card(
          child: Image.asset(
            "images/watch_1.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_2.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_1.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_2.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_1.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_2.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget getGallerySlider() {
    return FinitePager(
      opacity: 0.2,
      scaleX: 0.5,
      scaleY: 0.5,
      overscroll: 0,
      reverse: true,
      pagerType: PagerType.stack,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Card(
          child: Image.asset(
            "images/watch_1.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_2.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_1.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_2.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_1.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Card(
          child: Image.asset(
            "images/watch_2.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

}

class WalkThroughSliderExample extends StatefulWidget {
  @override
  _WalkThroughSliderExampleState createState() =>
      _WalkThroughSliderExampleState();
}

class _WalkThroughSliderExampleState extends State<WalkThroughSliderExample> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: FinitePager(
            pagerType: PagerType.stack,
            overscroll: -200,
            opacity: 0.2,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            children: <Widget>[
              Container(
                child: Image.asset(
                  "images/watch_2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Image.asset(
                  "images/watch_1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Image.asset(
                  "images/watch_2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Image.asset(
                  "images/watch_1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Image.asset(
                  "images/watch_2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Image.asset(
                  "images/watch_1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          child: Text(
            "Page ${selectedIndex + 1}",
            style: Theme
                .of(context)
                .textTheme
                .display3
                .copyWith(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}