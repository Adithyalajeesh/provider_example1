import 'package:flutter/material.dart';
import 'package:proprovider/list_provider.dart';
import 'package:provider/provider.dart';

import 'favorite/home_page.dart';
import 'favorite/provider/favorite_provider.dart';
import 'home.dart';


void main() {
  runApp (const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>favoriteProvider())
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
