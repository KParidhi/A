import 'package:authenticate/Service/Auth_Service.dart';
import 'package:authenticate/custom/TodoCard.dart';
import 'package:authenticate/pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HomePage extends StatefulWidget  {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}
get key=>key;
 class HomePageState extends State<HomePage> {
  @override


//   AuthClass authClass=AuthClass();
//  late SharedPreferences logindata;
//  late String email;

   void initState(){
   super.initState();
 //   initial();
 }

 // void initial() async{
 //   logindata = await SharedPreferences.getInstance();
   //setState(() {
 //     email = logindata.getString("Email...")!;
   // }) {
     //
   //}


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Today's Schedule",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),

        ),
        actions: [
          CircleAvatar(
            backgroundImage:AssetImage("lib/images/neha.jpg") ,
          ),
          SizedBox(width: 25,),
        ],
        bottom: PreferredSize(
          child:Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Monday 21",
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        preferredSize: Size.fromHeight(35),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                      size:32,
        color: Colors.white,),
              label: "home"
            ),

            BottomNavigationBarItem(
              icon:Container(
                height: 52,
                width: 52,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.indigoAccent,
                      Colors.purple,
                    ]
                  )
                ),
                child: Icon(
                  Icons.add,
                  size:32,
                  color: Colors.white,),
              ),
              label: "add"

            ),
            BottomNavigationBarItem(
                icon:Icon(
                  Icons.settings,
                  size:32,
                  color: Colors.white,),
              label: "settings"

            )
          ],
        ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              TodoCard(
                title: "Wake up Bro",
                check: true,
                iconBgColor: Colors.white,
                iconColor: Colors.red,
                iconData: Icons.alarm,
                selected:true,
                time: "07 am", key: key,
              ),
              SizedBox(height: 10,),
              TodoCard(
                title: "Gym",
                check: false,
                iconBgColor: Colors.white,
                iconColor: Colors.red,
                iconData: Icons.alarm,
                selected:true,
                time: "08 am",
                key: key,
              ),
              SizedBox(height: 10,),
              TodoCard(
                title: "Breakfast",
                check: true,
                iconBgColor: Colors.white,
                iconColor: Colors.red,
                iconData: Icons.alarm,
                selected:true,
                time: "09 am",
                key: key,
              ),
              SizedBox(height: 10,),

            ],
          ),
        ),

      ),


    );
  }



}








//Future
//
// Container(
// height:MediaQuery.of(context).size.height,
// width:MediaQuery.of(context).size.width,
// color: Colors.black,
// child:Padding(
// padding: EdgeInsets.only(top: 300),
// child:Center(
// child: Column(
// children:[
//
// ElevatedButton(onPressed :()
// {
// logindata.setBool('login', true);
// Navigator.pushReplacement(context,
// new MaterialPageRoute(builder: (context)=>LoginPage()));
// },
// style:ButtonStyle(
// backgroundColor: MaterialStateProperty.all(Colors.orange)
// ),
// child: Container(
// decoration: BoxDecoration(
// color: Colors.orange
// ),
// child: Text('logout',
// style: TextStyle(
// color: Colors.white
// ),),
// ),
// ),
//
//
//
// ]
// ),
// ),
// ),
//)
