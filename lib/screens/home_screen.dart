import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentPage = 0;
  final PageController pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("Garra Crema : " ),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 187, 50, 41)),

          
     //
     //

      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
         currentPage =index;
        
         setState(() {}); 

         pageController.animateToPage(index, duration: Duration(seconds: 5), curve: Curves.bounceOut);
           
        },
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.verified_user_outlined,),  label: "User"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.car_crash), label: "car")
        ],
      ),

        body: PageView(
               controller:PageController() ,
               physics: NeverScrollableScrollPhysics(),
               children: [
                CustomScreen(color: Color.fromARGB(255, 229, 196, 152)),
                CustomScreen(color: Color.fromARGB(255, 187, 50, 41)),
                CustomScreen(color: Colors.white),
      ]),

    );
  }
}

class CustomScreen extends StatelessWidget {
  final Color color ;

  CustomScreen({super.key, required this.color});

  @override
  Widget build(Object context) {
    return Container(
        color: color,
        child: Center(
          child: Text(
            "Universitario de Deportes",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
