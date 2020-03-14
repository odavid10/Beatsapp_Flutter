import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:beats/src/providers/productos_provider.dart';
import 'package:beats/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      provider: [
        ChangeNotifierProvider( builder: (context) => ProductosProvider(),),
      ],
      child: MaterialApp(
        debugShowChekedModeBanner: false,
        title: 'Beats App',
        initialRoute: 'home',
        route: [
          'home' : (BuildContext context) => HomePage()
        ],
      ),
    );
  }

}