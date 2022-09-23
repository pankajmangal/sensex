import 'package:flutter/material.dart';
import 'package:sensex/model/investment.dart';
import 'package:sensex/utils/gap_helper.dart';

import '../../utils/color_helper.dart';

class InvestItemView extends StatelessWidget {
  const InvestItemView({Key? key, required this.index,
    required this.investment}) : super(key: key);

  final int index;
  final Investment investment;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 64,
          height: 64,
          child: Card(
            color: Colors.black45,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset(investment.name),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        const VerticalGap(gap: 4.0),
        Text(investment.title,
          style: const TextStyle(
              fontSize: 14.0,
              color: whiteColor,
              fontWeight: FontWeight.w500
          ),),
        const VerticalGap(gap: 4.0),
        Text(investment.amount,
          style: const TextStyle(
              fontSize: 13.0,
              color: Color(0xffC6E6FF),
              fontWeight: FontWeight.w500
          ),),
      ],
    );
  }
}
