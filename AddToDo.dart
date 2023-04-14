import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddToDoPage extends StatefulWidget {
  const AddToDoPage({Key? key}) : super(key: key);

  @override
  State<AddToDoPage> createState() => _AddToDoPageState();
}

class _AddToDoPageState extends State<AddToDoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
           width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color:Colors.black,

          ),

          child: SingleChildScrollView(

              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                      Container(
                        height: 800,
                        width: 390,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(onPressed: () {},
                                  icon: Icon(CupertinoIcons.arrow_left,
                                    color: Colors.white,),
                                ),
                              SizedBox(
                                width: 10,
                              ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text("Create",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 4,
                                    ),
                                  ),
                                ),
                                  ],
                            ),
                                  Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 6,),
                                          Text("New ToDo",
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 2,
                                            ),
                                          ),
                                          SizedBox(
                                            height:20 ,
                                          ),
                                          label("Task Title"),
                                          SizedBox(
                                            height: 14,
                                          ),
                                          title(),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          label("Task Type"),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              chipData("important",0xff2664fa),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          chipData("planned",0xff2bc8d9),
                                        ],
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          label("Description"),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          description(),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          label("Category"),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Wrap(
                                            runSpacing: 10,
                                            children: [
                                              chipData("food",0xff2664fa),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              chipData("workout",0xff2bc8d9),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              chipData("work",0xff2bc8d9),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              chipData("Design",0xff2bc8d9),
                                              SizedBox(
                                                  width: 20,
                                              ),
                                          chipData("Run",0xff2bc8d9),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          button(),


                                        ]
                                      ),
                              ]
                    ),

                        ),
                ],
              ),
            ),
          )

    );
  }
  Widget button(){
    return Container(
      height: 50,
       width: MediaQuery.of(context).size.width,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Color(0xff8a32f1),
            Color(0xffad32f9),

          ]
        )
      ) ,
      child: Center(
        child: Text(
          "Create",style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        ),

      ),
    );
  }
Widget description(){
  return Container(
  height: 140,
  width: MediaQuery.of(context).size.width,
  decoration: BoxDecoration(
  color: Color(0xff2a2e3d),
  borderRadius: BorderRadius.circular(13),
  ),
  child: TextFormField(
  style: TextStyle(
  color: Colors.grey,
  fontSize: 17,
  ),
  maxLines:null,
  decoration: InputDecoration(
  border:InputBorder.none,
  hintText:"details of task",
  hintStyle: TextStyle(
  color: Colors.grey,
  fontSize: 17,
  ),
  contentPadding:EdgeInsets.only(
  left: 20,
  right: 20,
  )
  ),
  ),
  );

}
  Widget chipData(String label,int color){
    return Chip(
      backgroundColor:Color(color) ,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10,)
      ),
      label:Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
        fontWeight:FontWeight.w600,
        ),
      ),
      labelPadding: EdgeInsets.symmetric(
        horizontal: 17,
        vertical:3.8,
      ),
      );



  }
  Widget title(){
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xff2a2e3d),
        borderRadius: BorderRadius.circular(13),
      ),
      child: TextFormField(
        style: TextStyle(
          color: Colors.grey,
          fontSize: 17,
        ),
        decoration: InputDecoration(
                border:InputBorder.none,
                hintText:"Task title",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 17,
            ),
            contentPadding:EdgeInsets.only(
              left: 20,
              right: 20,
            )
        ),
      ),
    );

  }
    Widget label(String label){
    return Text(label,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600, fontSize: 17,
          letterSpacing: 1,
        ));
  }
}
