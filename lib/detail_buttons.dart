import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailButtons extends StatelessWidget {

  final IconData _icon;

  DetailButtons(this._icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: Colors.black)

      ),
      child: Icon(_icon,color: Colors.green,),
    );
  }
}
