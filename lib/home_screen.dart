import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/categories_itens.dart';
import 'file:///D:/Users/Ronaldo/AndroidStudioProjects/plant_app/lib/plant_item.dart';

import 'model/plant_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        child: BottomItens(),

      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: Icon(
          Icons.blur_on,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child:SizedBox(
          height: size.height +80,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25))),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Uishop !",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          Icon(
                            Icons.settings_input_svideo,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),


                  Padding(
                    padding: EdgeInsets.all(32),
                    child: Row(
                      children: [
                        Text(
                          "Recomended",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              )),
                          child: Text(
                            "More",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: size.width - 10,
                      height: 200,
                      alignment: Alignment.center,
                      child: Expanded(
                          child: ListView.builder(
                              itemCount: plants.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return PlantItem(plants[index]);
                              }))),
                  Padding(
                    padding: EdgeInsets.all(32),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Featured Plants",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              )),
                          child: Text(
                            "More",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),


                      ],
                    ),
                  ),
                  Container(
                      width: size.width - 10,
                      height: 200,
                      alignment: Alignment.center,

                      child: ListView.builder(
                          itemCount: plants.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return PlantItem(plants[index]);
                          }))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 110),
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Search"),
                  ),
                ),
              )
            ],
          ),
        )
        ,
      ),
    );
  }
}
