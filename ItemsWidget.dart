import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      // it disable the scroll functionality of gridview
      // then it will scroll in list view of homepage 
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=1; i<8; i++),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-50%", 
                      style: TextStyle(
                        fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold
                      )
                      )
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
              ],),
            
              InkWell(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/$1.png"
                    height: 120,
                    width: 120,
                  ), 
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8)
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Title", 
                  style: TextStyle(
                    fontSize: 18, 
                    color: Color.fromARGB(255, 0, 0, 0), 
                    fontWeight: FontWeight.bold
                  )
                )
              ),
              Container(
                alignmnet: Alignment.centerLeft,
                child: Text(
                  "Write Description or product", 
                  style: TextStyle(
                    fontSize: 15, 
                    color: Color.fromARGB(255, 0, 0, 0),
                  )
                )
              )
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\S55",
                      style: TextStyle(
                          fontSize: 16, 
                          fontWeight: FontWeight.bold, 
                          color: Color.fromARGB(255, 0, 0, 0)
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout, 
                      color: Color.fromARGB(255, 0, 0, 0)
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
