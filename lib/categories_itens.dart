import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomItens extends StatefulWidget {
  @override
  _BottomItensState createState() => _BottomItensState();
}

class _BottomItensState extends State<BottomItens> {


  var selected = 0;



  Widget iconBottom(IconData icon,int index){

    return GestureDetector(
      onTap: (){
        setState(() {
          selected=index;
        });
      },
      child: Icon(icon,
        size: 40,
        color: selected ==index? Colors.green:Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        iconBottom(Icons.star,0),
        SizedBox(width: 80,),
        iconBottom(Icons.not_listed_location ,1),
        SizedBox(width: 80,),
        iconBottom(Icons.person, 2)
      ]
    );
  }
}
