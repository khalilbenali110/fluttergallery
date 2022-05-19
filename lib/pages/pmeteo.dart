import 'package:flutter/material.dart';
class PageMeteo extends StatelessWidget {
  const PageMeteo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meteo'),

      ),
      body: Center(
          child:Text('Meteo')
      ),
    );
  }
}
