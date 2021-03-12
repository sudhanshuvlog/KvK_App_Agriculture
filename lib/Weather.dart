import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

//import 'package:url_launcher/url_launcher.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var text = Iterable<int>.generate(100).toList();
     var end=0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
      ),
      body: Center(
        child:
          Container(
          child: 
          ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                   
                  for (var i in text)
                  Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                                                  children: [
                                                    Text("$end"),
                                                    SizedBox(
                             
                            width: MediaQuery.of(context).size.width,
                            child: Image.network(
                              'https://kvkapp.s3.ap-south-1.amazonaws.com/gallery/$i.jpg',
                              fit: BoxFit.cover,
                              loadingBuilder: (BuildContext context, Widget child,
                                  ImageChunkEvent loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress.cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes
                                        : null,
                                  ),
                                );
                              },
                              errorBuilder: (BuildContext context, Object exception,
                                  StackTrace stackTrace) {
                                   end =1;
                                return Text("$end");
                              },
                            ),

                            //  Image.network(
                            //   'https://kvkapp.s3.ap-south-1.amazonaws.com/gallery/$i.jpg',
                            // errorBuilder: (BuildContext context, Object exception,
                            //     StackTrace stackTrace) {
                            //    return Container();
                            //   },
                            //  ),
                          ),
                                                  ],),
                      ),
                    ),
  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 
