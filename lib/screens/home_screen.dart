import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     
        appBar: AppBar ( title: Text("Garra Crema :"),elevation: 0,backgroundColor: Color.fromARGB(255, 187, 50, 41)),
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
    );
  }

}