import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent,statusBarBrightness: Brightness.light));

  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar ( title: Text("Garra Crema :"),elevation: 0,),
        body: Center(
          child: Container(
            child: Text("Universitario de Deportes",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            )
            ),
         bottomNavigationBar: BottomNavigationBar(items: const<BottomNavigationBarItem> [
                BottomNavigationBarItem(icon:Icon(Icons.verified_user_outlined,),label: "User" ),
                BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting")

         ],   
            ),
    )
    );
  }
}
