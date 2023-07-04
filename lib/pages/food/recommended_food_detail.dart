import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:ecommerce_app/widgets/app_icon.dart';
import 'package:ecommerce_app/widgets/big_text.dart';
import 'package:ecommerce_app/widgets/reusable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
         SliverAppBar(
           toolbarHeight: 90,
           title: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               AppIcon(icon: Icons.clear),
               AppIcon(icon: Icons.shopping_cart_outlined),
             ],
           ),
           bottom: PreferredSize(
             preferredSize: Size.fromHeight(10),
             child: Container(

               child: Center(child: BigText(size: Dimensions.font26,text: "Ethiopian dish",),),
               width: double.maxFinite,
               padding: EdgeInsets.only(top: 5,bottom: 10),
               decoration: BoxDecoration(
                   color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(Dimensions.radius20),
                   topRight: Radius.circular(Dimensions.radius20),
                   
                 )
               ),
             ),
             
           ),
           pinned: true,
           backgroundColor: Colors.blueGrey,
           expandedHeight: 300,
           flexibleSpace:FlexibleSpaceBar(
             background: Image.asset(
               "assets/image/burger.png",
               width: double.maxFinite,
               fit: BoxFit.cover,
             ),

           )

         ),
          SliverToBoxAdapter(
            child: Container(
               child: Column(
                children: [
                  Container(
                    child: ReusableText(text:"An essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                        "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                        " but the definition is vague, overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                        "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                        " but the definition is vague, overlapping with those of a letter,An essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                        "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                        " but the definition is vague, overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                        "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                        " but the definition is vague, overlapping with those of a letterAn essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                        "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                        " but the definition is vague, overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                        "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                        " but the definition is vague, overlapping with those of a letter,An essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                        "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                        " but the definition is vague, overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                        "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                        " but the definition is vague, overlapping with those of a letter,An essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                        "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                        " but the definition is vague, overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument, but the definition is vague, "
                        "overlapping with those of a letter, a paper,An essay is, generally, a piece of writing that gives the author's own argument,"
                        " but the definition is vague, overlapping with those of a letter,,"),
                    margin: EdgeInsets.only(left:Dimensions.width20,right:Dimensions.width20),


                  )
                ],
              )
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize:Dimensions.iconSize24,
                  backgroundColor:Colors.indigoAccent,
                  icon: Icons.remove,
                  iconColor: Colors.black,
                ),
                BigText(text: "\$12.88"+" X"+" 0",size:Dimensions.font26),
                AppIcon(
                    iconSize:Dimensions.iconSize24,
                    backgroundColor:Colors.indigoAccent,
                    iconColor: Colors.black,
                    icon: Icons.add
                ),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: Colors.lightBlue,
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
        ],
      ),
    );
  }
}
