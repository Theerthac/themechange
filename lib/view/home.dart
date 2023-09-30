import 'package:colorsprovider/controller/colors_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
              
                  Provider.of<ColorsProvider>(context, listen: false).themeChange();
                  // current = (current + 1) % colors.length;
              
              },
              child: Consumer<ColorsProvider>(
                builder: (context, value, child) {
                  return Container(
                    width: 350,
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: value.colors.elementAt(value.current),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
