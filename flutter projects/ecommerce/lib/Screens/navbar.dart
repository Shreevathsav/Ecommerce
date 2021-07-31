import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(accountName: Text('Shreevathsav'), accountEmail: Text('vickyvathsav.ss@gmail.com'),currentAccountPicture: CircleAvatar(child: ClipOval(child: Image.asset('images/self.jpg',height: 90,width: 90,fit: BoxFit.cover,),),),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/menu_back.jpg'),fit: BoxFit.cover)
          
          ),
          ),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Your Orders'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Wish List'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Categories'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Your Account'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: (){},
          ),

        ]
        ,),
    );
  }
}