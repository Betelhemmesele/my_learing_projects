import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class ReusableText extends StatefulWidget {
  final String text;
  const ReusableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ReusableText> createState() => _ReusableTextState();
}

class _ReusableTextState extends State<ReusableText> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText=true;
  double textHeight=Dimensions.screenHeight/5.63;
  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf=widget.text.substring(0,textHeight.toInt());
      secondHalf=widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }
    else{
      firstHalf=widget.text;
      secondHalf=" ";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:secondHalf.isEmpty?SmallText(color:Colors.black,size:Dimensions.font16,text: firstHalf):Column(
        children: [
          SmallText(height:1.8,color:Colors.black,size:Dimensions.font16,text:hiddenText?("$firstHalf..."):(firstHalf+secondHalf) ),
          InkWell(
            onTap: (){
              setState(() {

                hiddenText=!hiddenText;
              });

            },
            child: Row(
              children: [
                SmallText(text: hiddenText?("show more"):("show less"),color: Colors.lightBlueAccent,),
               Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color:  Colors.lightBlueAccent,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
