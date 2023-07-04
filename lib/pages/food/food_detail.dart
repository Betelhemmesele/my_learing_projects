import 'package:ecommerce_app/widgets/reusable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/dimensions.dart';
import '../../widgets/app_column.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_edit.dart';
import '../../widgets/small_text.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
//background image
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width:double.maxFinite ,
                height: Dimensions.foodDetailImgSize,
                decoration:BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/image/burger.png"
                    )
                  )
                )
              )),
          //icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
              right:  Dimensions.width20,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon:Icons.arrow_back_ios),
                  AppIcon(icon:Icons.shopping_cart_outlined),
                ],
              )
          ),
          //introduction of food
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.foodDetailImgSize-20,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight:Radius.circular(Dimensions.radius20),
                    topLeft:Radius.circular(Dimensions.radius20),

                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    AppColumn(text: 'Ethiopian food',),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Introduce"),

                        Expanded(
                          child: SingleChildScrollView( child: const ReusableText(text: "An essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                            "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                            " but the definition is vague, overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                              "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                              " but the definition is vague, overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                              "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                              " but the definition is vague, overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                              "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                              " but the definition is vague, overlapping with those of a letter, a paper,"),
                    ),
                        ),
                  ]
                )

              )
          ),
          //expandable text


        ],
      ),
        bottomNavigationBar:Container(
          height:Dimensions.bottomHeightBar,
          padding: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
          decoration:BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20*2),
                topRight: Radius.circular(Dimensions.radius20*2),
            ),
              color:Colors.black12,



            ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left:Dimensions.width20,right:Dimensions.width20, ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color:Colors.white30,
                ),
                child: Row(
                  children: [
                    Icon(Icons.remove, color:Colors.black ,),
                    SizedBox(width: Dimensions.width20/2,),
                    BigText(text: '0'),
                    SizedBox(width: Dimensions.width20/2,),
                    Icon(Icons.add,color:Colors.black),
                  ],
                ),

              ),
              Container(
                padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left:Dimensions.width20,right:Dimensions.width20, ),
                child: BigText(text: "\$10 Add to cart",color: Colors.black),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.lime,
                ),
              )
            ],
          ),
          ),
        );

  }
}
