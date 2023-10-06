import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AboutPage extends StatelessWidget {
  final String? id;
  const AboutPage( {Key? key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Contact Page : $id'),
          onPressed: (){
            context.go('/contact_us');
          },
        ),
      ),
    );
  }
}
