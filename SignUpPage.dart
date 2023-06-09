import 'package:authenticate/Service/Auth_Service.dart';
import 'package:authenticate/pages/AddToDo.dart';
import 'package:authenticate/pages/HomePage.dart';
import 'package:authenticate/pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
class SignUpPage extends StatefulWidget{
  SignUpPage({super.key });

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  bool circular =false;
  late AuthClass authClass;
 void asyncButtonItem() async {
   authClass = AuthClass();
    await authClass.googleSignIn(context);
  }

  @override
  Widget build(BuildContext context){
   return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height:MediaQuery.of(context).size.height ,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center ,
              children:[
                Text("Sign Up",
                  style: TextStyle(
                    fontSize:35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),

                Padding(
              padding: const EdgeInsets.only(top: 10),
                  child: buttonItem("lib/images/googleIcon.png","continue with google",25,
                          )),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("OR",style: TextStyle(color: Colors.white,fontSize: 20),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: textItem("Email...",_emailController,false),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: textItem("Password...",_pwdController,true),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: colorButton(),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("If you already have an account?",
                        style: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                      InkWell(
                        onTap: (){
                         Navigator.pushAndRemoveUntil(
                             context, MaterialPageRoute(builder: (builder)=>LoginPage()),
                                 (route) => false);
                        },
                        child:
                      Text("Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight:FontWeight.bold ),
                      ),
                      )
                  ],),
                ),
              ],
            ),
          ),
        ),

    );

  }
  Widget colorButton(){
    return
      InkWell(
        onTap: ()async {
          setState(() {
            circular = true;
          });
          try {
            firebase_auth.UserCredential userCredential =
            await firebaseAuth.createUserWithEmailAndPassword(
                email: _emailController.text, password: _pwdController.text);
            print(userCredential.user?.email);
            setState(() {
              circular=false;
            });
           Navigator.pushAndRemoveUntil(context,
               MaterialPageRoute(builder: (builder)=>HomePage()),
          (route) => false);
          }
          catch (e) {
           // final snackbar = SnackBar(content:Text(e.toString()));
            //ScaffoldMessenger.of(context).showSnackBar(snackbar);
            //setState(() {
              //circular=false;
           // });
          }
        },
        child:Container(
      width: MediaQuery.of(context).size.width - 90,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
          color:Colors.orange,
      ),
      child:Center(
        child: circular?CircularProgressIndicator():
        Text("Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),),
      ) ,
        )
    );
  }
  Widget buttonItem(String imagepath,String buttonName,double size) {

    return InkWell(
        onTap:(){asyncButtonItem();},
       child:
      Container(
      width: MediaQuery.of(context).size.width - 60,
      height: 60,

      child: Card(
        elevation: 8,
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
              width: 1,
              color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagepath,
              height: size,
              width: size,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              buttonName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),),
          ],
        ),
      ),
      ),
    );
  }
  Widget textItem(String labeltext,TextEditingController controller,bool obscureText)
  {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      height:55,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(
          fontSize:17,color: Colors.white,
        ),
        decoration:InputDecoration(
          labelText: labeltext,labelStyle: TextStyle(
          fontSize:17,color: Colors.white,
        ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
                width: 1.5,
                color: Colors.amber),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
                width: 1,
                color: Colors.grey),
          ),
        ),


      ),
    );
  }
}

