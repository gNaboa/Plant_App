import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/detail_buttons.dart';

import 'model/plant_model.dart';

class DetailScreen extends StatelessWidget {
  final Plant plant;

  DetailScreen(this.plant);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  SizedBox(
                    height: 50,
                  ),
                  DetailButtons(Icons.brightness_5),
                  SizedBox(
                    height: 50,
                  ),
                  DetailButtons(Icons.branding_watermark),
                  SizedBox(
                    height: 50,
                  ),
                  DetailButtons(Icons.image),
                  SizedBox(
                    height: 50,
                  ),
                  DetailButtons(Icons.settings_input_svideo),
                ],
              )),
              Container(
                height: size.height * 0.7,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    image: DecorationImage(
                        image: AssetImage(plant.image), fit: BoxFit.cover)),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  plant.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                SizedBox(
                  width: 170,
                ),
                Text(
                  "\$${plant.price}",
                  style: TextStyle(color: Colors.green, fontSize: 25),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Align(alignment: Alignment.bottomLeft,
                child: Container(
                  alignment: Alignment.center,
                  height: 90,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(50))
                  ),
                  child: Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 25),),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 90,
                width: 200,
                child: Text("Description",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              )
            ],
          )
        ],
      )),
    );
  }
}
