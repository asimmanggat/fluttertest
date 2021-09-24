// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/utils/routes.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      child: ListView(
        padding: EdgeInsets.zero,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Asim"),
                  accountEmail: Text("asim.nazir@iwm.com.pk"),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/asim.jpg")))),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.green,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.green),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.green,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.green),
              textScaleFactor: 1.2,
            ),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.profileRoute);
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.arrow_counterclockwise,
                color: Colors.green),
            title: Text("Logout",
                style: TextStyle(color: Colors.green), textScaleFactor: 1.2),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.loginRoute);
              Fluttertoast.showToast(
                  msg: "You're logged out",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
          )
        ],
      ),
    ));
  }
}


















// Image getting code from firebase

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';

// future: _loadImages(),
//             builder:
//                 (context, AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
//               if (snapshot.connectionState == ConnectionState.done) {
//                 return ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: snapshot.data!.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     final Map<String, dynamic> image = snapshot.data![index];
//                     return Card(
//                         margin: EdgeInsets.symmetric(vertical: 10),
//                         child: ListTile(
//                           dense: false,
//                           leading: Image.network(image['url']),
//                           title: Text(image['path']),
//                         ));
//                   },
//                 );
//               } else if (snapshot.connectionState == ConnectionState.none) {
//                 return Text("No data");
//               }
//               return CircularProgressIndicator();
//             }

// FirebaseStorage storage = FirebaseStorage.instance;

  // Future<List<Map<String, dynamic>>> _loadImages() async {
  //   List<Map<String, dynamic>> files = [];

  //   final ListResult result = await storage.ref().list();
  //   final List<Reference> allFiles = result.items;

  //   await Future.forEach<Reference>(allFiles, (file) async {
  //     final String fileUrl = await file.getDownloadURL();
  //     final FullMetadata fileMeta = await file.getMetadata();
  //     files.add({
  //       "url": fileUrl,
  //       "path": file.fullPath,
  //       "uploaded_by": fileMeta.customMetadata?['uploaded_by'] ?? 'Nobody',
  //       "description":
  //           fileMeta.customMetadata?['description'] ?? 'No description'
  //     });
  //   });
  //   return files;
  // }
