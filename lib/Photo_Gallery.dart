import 'package:flutter/material.dart';
import 'package:firebase_image/firebase_image.dart';
import 'package:firebase_core/firebase_core.dart';
/*class PhotoGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
      ),
      body: Center(
        child:Text('hi'),
      ),
    );
  }
}
*/
/*void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   runApp(PhotoGallery());
}*/
class PhotoGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Firebase Image Provider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotoGalleryState(title: 'Firebase Image Provider example'),
    );
  }
}

class PhotoGalleryState extends StatefulWidget {
  PhotoGalleryState({Key key, this.title}) : super(key: key);
  

  final String title;

  @override
  _PhotoGalleryState createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGalleryState> {
  @override
  void initState() {
    super.initState();
  Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Image(
        image: FirebaseImage(
          ' gs://kvkapp-7892d.appspot.com/scott-goodwill-CtRE4_4L7b8-unsplash.jpg',
          shouldCache: true, // The image should be cached (default: True)
          maxSizeBytes: 3000 * 1000, // 3MB max file size (default: 2.5MB)
          cacheRefreshStrategy: CacheRefreshStrategy.NEVER // Switch off update checking
        ),
        width: 100,
      ),
    );
  }
}