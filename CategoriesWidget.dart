import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i = 1; i < 8; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10)
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20), 
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  // use i variable to change pictures in loop
                  "images/$i.png", 
                  width: 40, 
                  height: 40,
                ),
                Text(
                  "Sneakers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Color(0xFF4C53A5), 
                  ),
                )
              ],
            ),
          ) 
        ],
      ),
    );
  }
}
