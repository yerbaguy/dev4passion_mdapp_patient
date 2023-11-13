import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:dev4passion_mdapp_patient/screens/services/auth.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerQuantity = TextEditingController();

  final userNameController = TextEditingController();
  final userAgeController = TextEditingController();
  final userSalaryController = TextEditingController();

  late DatabaseReference dbRef;
  final AuthService _auth = AuthService();


  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Students');
  }


  @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     child: Center(
  //       child: Text("Settings Page - Cloud Firestore"),
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("Rapid Tech"),
      ),
      body: Column (
        children: [
          TextFormField(

           // controller: _controllerName,
            controller: userNameController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration (
              hintText: 'Enter Name',
            ),
          ),

          TextFormField(

            // controller: _controllerQuantity,

            controller: userAgeController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration (
              hintText: 'Enter Age',
            ),
          ),

          TextFormField(

            // controller: _controllerQuantity,

            controller: userSalaryController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration (
              hintText: 'Enter Salary',
            ),

          ),



          // ElevatedButton( onPressed: (){

          //   Map<String, String> dataToSave = {
          //     'name':_controllerName.text,
          //     'quantity':_controllerQuantity.text
          //   };

          //   print(dataToSave);
          
          // }, child: Text('Submit')

             
          // ),
          MaterialButton( onPressed: (){

            Map<String, String> students = {
              'name': userNameController.text,
              'age': userAgeController.text,
              'salary': userSalaryController.text
            };

           // print(dataToSave);
           dbRef.push().set(students);
          
          }, child: Text('Submit')

             
          ),

           MaterialButton( onPressed: () async {


           // print(dataToSave);
           // dbRef.push().set(students);

           //
          //  dynamic result = await _auth.signInAnon();
          //         if (result == null) {
          //           print('error signing in');
          //         } else {
          //           print('Signed in');
          //           print(result);
          //         }
            //

            print("lkjsdlkfj");
          
          }, child: Text('SignIn Anon')

             
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'Home',
        ),

        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'Home',
        ),


      ],),



      // bottomNavigationBar: BottomAppBar(

      //   shape: CircularNotchedRectanle(),
      //   notchMargin: 10,
      //   child: Container(
      //     height: 60,
      //     child: row(
      //       crossAxissAlignment: CrossAxisAlignment.start,
      //       children: [
      //         MaterialButton(
      //           minWidth: 50,
      //           onPressed: (){
      //             setState(() {
      //               currentScreen = Settings();
      //               // currentIndex = 0;
      //               currentPage = 0;
      //             });

      //           },

      //           child: Column (
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Icon(
      //                 Icons.home_filled,
      //                 color: currentIndex == 0 ? Colors.pinkAccent : Colors.grey,
      //               ),
      //               Text(
      //                 "Home",

      //               )
      //             ],
      //           ),
      //         )
      //       ]
      //     )
      //   )
      // )




    );
  }
}