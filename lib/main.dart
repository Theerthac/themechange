import 'package:colorsprovider/controller/colors_provider.dart';
import 'package:colorsprovider/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => ColorsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomePage() ,
      ),
    );
  }
}