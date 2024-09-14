import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://lh3.googleusercontent.com/a/ACg8ocKMoiqGP1nJzUWdkhOEdBLizw5gFgKs7JlqA0l6BEn-zz0llnk=s576-c-no";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                   decoration: BoxDecoration(color:Colors.deepPurple),
                  margin: EdgeInsets.zero,
                  accountName: Text("Gaurav Shukla"),
                  accountEmail: Text("gauravv8181@gmail.com"),  
                  currentAccountPicture:CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ) ,
                 )
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.home,color: Colors.white,),
                  title: Text("Home",style: TextStyle(color: Colors.white),),
                ),
                 ListTile(
                  leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
                  title: Text("Profile",style: TextStyle(color: Colors.white),),
                ),
                 ListTile(
                  leading: Icon(CupertinoIcons.mail,color: Colors.white,),
                  title: Text("Email me",style: TextStyle(color: Colors.white),),
                ),
          ],
        ),
      ),
    );
  }
}
