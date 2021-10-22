import 'package:facebook_ui/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  IconData iconData;
  String label;
   Color iconColor;
   double padLeft;
   double padRight;
   String dividerStr;

  CustomButton({Key? key, required this.label,required this.dividerStr,required this.iconColor,required this.iconData,required this.padLeft,required this.padRight}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Padding(
                           padding:  EdgeInsets.only( left: padLeft ,right: padRight),
                            child: GestureDetector(onTap: (){}, child: Row(children: [
                          FaIcon(iconData,color: iconColor,size: 20,),
                              const SizedBox(width: 5,),
                              Text(label,style:
                              const TextStyle(fontSize: 15, color: Colors.white),),CustomDivider(txt: dividerStr,),
                            ],)),
                            
                          );
  }
}

