import 'package:flutter/material.dart';

class AvliableForSale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var text = Iterable<int>.generate(10).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: 
        Center(
        child: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              
              Column(
                children: [
                  for (var i in text) 
                    Container(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Image.network(
                          'https://kvkapp.s3.ap-south-1.amazonaws.com/gallery/$i.jpg',
                          errorBuilder: (BuildContext context, Object exception,
                              StackTrace stackTrace) {
                               return  Container();

                          },
                        ),
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