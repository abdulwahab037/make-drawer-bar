import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Drawer'),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            children: [
              itemFood('Food1', 'asset/img/pizza3.jpg'),
              itemFood('Food1', 'asset/img/pizza3.jpg'),
              itemFood('Food1', 'asset/img/pizza3.jpg'),
              itemFood('Food1', 'asset/img/pizza3.jpg'),
              itemFood('Food1', 'asset/img/pizza3.jpg'),
              itemFood('Food1', 'asset/img/pizza3.jpg'),
              itemFood('Food1', 'asset/img/pizza3.jpg'),
              itemFood('Food1', 'asset/img/pizza3.jpg'),
            ],
          )),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('Abdul Wahab'),
              accountEmail: Text('abwahab2766@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('asset/img/abdulwahab.jpg'),
              ),
            ),
            ListTile(
              title: Text('My Profile'),
              leading: Icon(CupertinoIcons.person),
            ),
            ListTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite),
            ),
            ListTile(
              title: Text('Payments'),
              leading: Icon(Icons.payments),
            ),
            ListTile(
              title: Text('Archive'),
              leading: Icon(CupertinoIcons.archivebox),
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(CupertinoIcons.settings),
            ),
            ListTile(
              title: Text('Meta Verified'),
              leading: Icon(Icons.verified),
            ),
            ListTile(
              title: Text('Saved'),
              leading: Icon(Icons.save),
            ),
          ],
        ),
      ),
    );
  }

  itemFood(String title, String img) => Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                color: Theme.of(context).primaryColor.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 5,
              )
            ]),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(title, style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
      );
}
