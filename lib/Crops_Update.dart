import 'package:flutter/material.dart';

class CropsUpdate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var text = Iterable<int>.generate(10).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Crops Update"),
      ),
      body: Center(
        child: Image.network(
          "https://kvkapp.s3.ap-south-1.amazonaws.com/gallery/1.jpg",
          fit: BoxFit.cover,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes
                    : null,
              ),
            );
          },
        ),
      ),
    );
  }
}
