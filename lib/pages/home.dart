import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
         child: Text('About Page'),
          onPressed: (){
           context.goNamed('aboutPage', pathParameters: {'id' : 'ankit'});
          },
        ),
      ),
    );
  }
}
