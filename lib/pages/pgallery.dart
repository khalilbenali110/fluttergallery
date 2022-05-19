import 'package:flutter/material.dart';
class PageGallery extends StatelessWidget {
  const PageGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),

      ),
      body: Center(
          child:Text('Gallery')
      ),
    );
  }
}
