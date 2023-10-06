import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Contact Page')),
      body: Center(
        child: ElevatedButton(
          child: Text('home Page'),
          onPressed: (){
            context.go('/');
          },
        ),
      ),
    );
  }
}
