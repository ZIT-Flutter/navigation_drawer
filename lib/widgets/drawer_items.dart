import 'package:flutter/material.dart';

import '../sample_page.dart';

const userHeader = UserAccountsDrawerHeader(
  accountName: Text('Rakib Hossain'),
  accountEmail: Text('rakib2023@gmail.com'),
  currentAccountPicture: CircleAvatar(
      backgroundColor: Colors.green,
      child: Text(
        'R',
        textScaleFactor: 2,
      )),
  otherAccountsPictures: [
    CircleAvatar(
      child: Text('A'),
      backgroundColor: Colors.blue,
    ),
    CircleAvatar(
      backgroundColor: Colors.yellow,
      child: Text('B'),
    ),
  ],
);

Widget drawerItemNew(BuildContext context){
  return ListView(
    children: [
      userHeader,
      ListTile(
        title: Text('Go to Page 1'),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => SamplePage(pageData: 'Page 1'))),
      ),
      ListTile(
        title: Text('Go to Page 2'),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => SamplePage(pageData: 'Page 1'))),
      ),
      ListTile(
        title: Text('Settings'),
        leading: Icon(Icons.settings),
        subtitle: Text('Go to setting page'),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => SamplePage(pageData: 'Settings'))),
      ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                margin: EdgeInsets.only(top: 200),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Log out'),
                ))
          ],
        ),
      )
    ],
  );
}

