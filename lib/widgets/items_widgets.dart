import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/single_item_screen.dart';

class ItemsWidgets extends StatelessWidget{
  List img = [
    'Latte',
    'Espresso',
    'Cold Coffee',
    'Black Coffee',
  ];
  @override
  Widget build(BuildContext context){
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150/195),
      children: [
        for(int i = 0 ; i < img.length ; i++ )
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            margin: EdgeInsets.symmetric(horizontal: 13,vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF212325),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 8,

                )
              ]
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SingleItemScreen(img[i])));
                  },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        "images/${img[i]}.png",
                        width: 120,
                          height: 120,
                        fit: BoxFit.contain,
                      ),
                    ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text(
                        img[i],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Best Coffee",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),
                ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$30",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xFFE57734),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          CupertinoIcons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ],

    );
  }

}