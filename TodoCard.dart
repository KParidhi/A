import 'package:flutter/material.dart';
class TodoCard extends StatelessWidget {


 TodoCard({
    required Key key,
    required this.title,
    required this.iconData,
    required this.iconColor,
  required this.time,
  required this.check,
  required this.iconBgColor,
    required bool selected,

  }) : super(key: key);

  //to assign value dynamically
   String title;
   IconData iconData;
   Color iconColor;
   String time;
   bool check;
   Color iconBgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width ,
      child: Row(
        children: [
          Theme(
            child:Transform.scale(
      scale:1.5,
        child:Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),),
            activeColor: Colors.cyanAccent,
            checkColor: Colors.blue,
            value: false,
            onChanged: ( value) {},
          ),),
      data: ThemeData(
      primarySwatch: Colors.blue,
          unselectedWidgetColor: Colors.purple),
          ),
          Expanded(
          child:Container(
            height: 75,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.white10,
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                    height: 33,
                    width: 36,
                    decoration: BoxDecoration(
                      color: iconBgColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      iconData,color: iconColor,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(title,
                    style: TextStyle(
                    fontSize: 18,
                    letterSpacing:1 ,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),)
                ],
              ),
            ),
          ),
          ),
          Text(
          time,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),),
          SizedBox(width: 20,),
        ],
      ),
    );
  }
}
