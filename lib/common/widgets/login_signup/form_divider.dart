import 'package:flutter/material.dart';
import 'package:ibb_store/utils/constants/colors.dart';

class form_divider extends StatelessWidget {
  const form_divider({
    super.key,
    required this.dark,
    required this.dividerText
  });

  final bool dark;
  
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //create 2 divider lines spearetd by space, beneath each we would add our google and fb logos
        Flexible(child: Divider(color: dark? TColors.darkGrey : TColors.grey,thickness: 0.5,indent: 60, endIndent: 5,)),//DIVIDER LINE,
        Text(dividerText,style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark? TColors.darkGrey : TColors.grey,thickness: 0.5,indent: 5, endIndent: 60,))//DIVIDER LINE
      ],);
  }
}