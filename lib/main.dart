import 'package:contact_app/contact_detail_view.dart';
import'package:flutter/material.dart';

import 'home_view.dart';


void main() {
  runApp(const ContactApp());
}
class ContactApp extends StatelessWidget {
  const ContactApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ContactApp',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
home: ContactDetailView(),
    );
}
}
