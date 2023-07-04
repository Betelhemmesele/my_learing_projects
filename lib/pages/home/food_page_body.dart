import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_app/widgets/big_text.dart';
import 'package:ecommerce_app/widgets/icon_and_text_edit.dart';
import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../controllers/product_controller.dart';
import '../../utils/dimensions.dart';
import '../../widgets/app_column.dart';
class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController=PageController(viewportFraction: 0.85);
  var _currPageValue=0.0;
  double scaleFactor=0.8;
  double _height=Dimensions.pageViewContainer;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue=pageController.page!;
       // print("current value is "+ _currPageValue.toString());
      });
    });
  }
  @override
  void dispose(){
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        //slider section
        GetBuilder<ProductController>(builder:(popularProducts){
          return Container(
            //color: Colors.redAccent,
            height:Dimensions.pageView,
            child: PageView.builder(
                controller: pageController,
                itemCount: 6,//popularProducts.productList.length,
                itemBuilder: (context,position){
                  return _buildPageItem(position);
                }),
          );
        }),
        //dots
    GetBuilder<ProductController>(builder:(popularProducts) {
      return DotsIndicator(
        dotsCount: 6,//popularProducts.productList.length,
        position: _currPageValue,
        decorator: DotsDecorator(
          color: Colors.black87, // Inactive color
          activeColor: Colors.blueGrey,
        ),
      );
    }),

        //popular text
        SizedBox(height:Dimensions.height30),
        Container(
          margin:EdgeInsets.only(left: Dimensions.width30),
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:[
              BigText(text:"popular"),
              SizedBox(width:Dimensions.width10),
              Container(
                margin:EdgeInsets.only(bottom: 3),
                  child: BigText(text:".")
              ),
              SizedBox(width:Dimensions.width10),
              Container(
                  child: SmallText(text:"food pairing")
              ),
            ]
          )
        ),
        //list of foods and images

         ListView.builder(
          physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,bottom:Dimensions.height10 ),
                child: Row(
                  children: [
                    //image section
                    Container(
                      width:Dimensions.listViewImgSize,
                      height: Dimensions.listViewImgSize,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius20),
                          color:Colors.black,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/image/burger.png"

                              )
                          )
                      ),
                    ),
                    //text section
                    Expanded(child:
                    Container(
                      height: Dimensions.listViewTextCurrSize,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          bottomRight: Radius.circular(Dimensions.radius20),
                        ),
                        color:Colors.black12,
                      ),
                      child: Padding(
                        padding:EdgeInsets.only(left:Dimensions.width10,right:Dimensions.width10),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(text: "Ethiopian Ertib"),
                            SizedBox(height:Dimensions.height10),
                            SmallText(text:"this food is soo loveable"),
                            SizedBox(height: Dimensions.height10),
                            Row(
                              children: [
                                IconAndText(icon:Icons.circle_sharp,
                                    text: "normal",
                                    iconColor:Colors.blue
                                ),
                                SizedBox(width: 10,),
                                IconAndText(icon:Icons.location_on,
                                    text: "1.6km",
                                    iconColor:Colors.blue
                                ),
                                SizedBox(width: 10,),
                                IconAndText(icon:Icons.access_alarm_rounded,
                                    text: "1hr",
                                    iconColor:Colors.blueAccent
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                    )
                  ],
                ),
              );
            }),




    ],
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix=new Matrix4.identity();
    if (index==_currPageValue.floor()){
      var currScale=1-(_currPageValue-index)*(1-scaleFactor);
      var currTrans=_height*(1-currScale)/2;
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans, 0);
    }else if(index==_currPageValue.floor()+1){
      var currScale=scaleFactor+(_currPageValue-index+1)*(1-scaleFactor);
      var currTrans=_height*(1-currScale)/2;
      //matrix=Matrix4.diagonal3Values(1, currScale, 1);
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans, 0);
    }else if(index==_currPageValue.floor()-1){
      var currScale=1-(_currPageValue-index)*(1-scaleFactor);
      var currTrans=_height*(1-currScale)/2;
      matrix=Matrix4.diagonal3Values(1, currScale, 1);
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0,currTrans, 0);
    }else{
      var currScale=0.8;
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-scaleFactor), 0);
    }


    return Transform(
        transform: matrix,
        child:Stack(
         children: [
        Container(
      height: Dimensions.pageViewContainer,
      margin: EdgeInsets.only(left: 5,right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius30),
          color: index.isEven?Colors.black:Colors.amberAccent,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
                "assets/image/burger.png"
            ),
          )
      ),
    ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Dimensions.pageViewTextContainer,
            margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,bottom: Dimensions.height10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: Colors.white,
              boxShadow:[
                BoxShadow(
                  color:Colors.black12,
                  blurRadius: 1.0,
                  offset: Offset(0, 5),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5,0),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(5,0),
                ),
              ]
            ),
            child: Container(
              padding: EdgeInsets.only(top: Dimensions.height15,left:Dimensions.width15,right: Dimensions.width15),
              child: AppColumn(text: 'Ethiopian food',),
            ),

          ),
        ),
      ],
    ),
    );
  }
}
