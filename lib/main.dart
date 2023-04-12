import 'package:flutter/material.dart' ;



void main() {
  runApp(App()) ;
}

class App extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App>{
@override

Widget build(BuildContext context){

  return MaterialApp(debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('draApp'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightGreen
              ),
              child:Column(
                children: [
                ClipRRect(child: Image.network(
                  'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80',height: 100,width:100,),
                  borderRadius: BorderRadius.circular(50),
                  ),
                  Text('\nPhoto'),
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                ),

                ListTile(
                  title: Text('Account'),
                  leading: Icon(Icons.account_box),
                ),

                ListTile(
                  title: Text('Cart'),
                  leading: Icon(Icons.shopping_cart),
                ),

                ListTile(
                  title: Text('Logout'),
                  leading: Icon(Icons.logout),
                ),

                ListTile(
                  title: Text('Cancle'),
                  leading: Icon(Icons.cancel),
                ),

                ListTile(
                  title: Text('ThankYou'),
                  leading: Icon(Icons.book_sharp),
                )
              ],
            )
          ], 
        ),
      ),
    ),

  );
}

}