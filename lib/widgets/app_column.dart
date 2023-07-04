import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_edit.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size:Dimensions.font26),
        SizedBox(height: Dimensions.height10,),
        Row(

          children: [
            Wrap(
                children:
                List.generate(5,(index)=>Icon(Icons.star,color:Colors.blue,size: 15,))

            ),
            SizedBox(width: 10,),
            SmallText(text: "4.5"),
            SizedBox(width: 10,),
            SmallText(text: "356 "),
            SizedBox(width: 10,),
            SmallText(text: "Comments"),


          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(icon:Icons.circle_sharp,
                text: "normal",
                iconColor:Colors.amber
            ),
            SizedBox(width: 20,),
            IconAndText(icon:Icons.location_on,
                text: "1.6km",
                iconColor:Colors.blue
            ),
            SizedBox(width: 20,),
            IconAndText(icon:Icons.access_alarm_rounded,
                text: "1hr",
                iconColor:Colors.amber
            ),
          ],
        )
      ],
    );
  }
}
