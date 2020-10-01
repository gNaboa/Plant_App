import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/detail_screen.dart';
import 'package:plant_app/model/plant_model.dart';

class PlantItem extends StatelessWidget {
  final Plant plant;

  PlantItem(this.plant);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25),
      child: GestureDetector(
        onTap: (){

          Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailScreen(plant)));
        },
        child: Container(
          width: 160,
          height: 270,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(plant.image), fit: BoxFit.cover)),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(

                        children: [
                          SizedBox(width: 10,),
                          Text(
                            plant.name,
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            "\$${plant.price}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
