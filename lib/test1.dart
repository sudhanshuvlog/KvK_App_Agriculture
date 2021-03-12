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
      home: MyApp1(),
    );
  }
}

class MyApp1 extends StatefulWidget {
  // This widget is the root of your application.
  @override
  MyAppState1 createState() => MyAppState1();
}

class MyAppState1 extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: getSimpleCrousel(),
    ));
  }

  Widget getSimpleCrousel() {
    return FinitePager(
      overscroll: -300, // Over Scroll value when user slide in or slide off
      pagerType: PagerType.stack, // PagerType by default set to carousel
      scrollDirection: Axis.horizontal, // Scroll direction for pager
      children: <Widget>[
        // Add your child here
        Container(
          child: Center(
            child: Card(
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
/*return FinitePager(
      scrollDirection: Axis.horizontal,
      children: <Widget>[*/
        Container(
          child: Center(
            child: Card(
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          child: Center(
            child: Card(
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),

        Container(
          child: Center(
            child: Card(
              child: Image.asset("images/watch_1.jpg"),
            ),
          ),
        ),
        Container(
          child: Center(
            child: Card(
              child: Image.asset("images/watch_2.jpg"),
            ),
          ),
        ),
      ],
    );
  }
}
