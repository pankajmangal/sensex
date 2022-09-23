import 'package:flutter/material.dart';
import 'package:sensex/model/live_market_index.dart';
import 'package:sensex/utils/color_helper.dart';

import '../../utils/gap_helper.dart';

class LiveMarketItemScreen extends StatelessWidget {
  LiveMarketItemScreen({Key? key, required this.index,
    required this.liveMarketIndex}) : super(key: key);

  final int index;
  final LiveMarketIndex liveMarketIndex;

  final _colors = [
    Colors.blue.withOpacity(0.8),
    Colors.red.withOpacity(0.8),
    Colors.yellow.withOpacity(0.8),
    Colors.green.withOpacity(0.8),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(6.0, 8.0, 6.0, 8.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        width: MediaQuery.of(context).size.width * 0.65,
        decoration: BoxDecoration(
            color: const Color(0xffF6F6F6).withOpacity(0.2),
            borderRadius: BorderRadius.circular(12.0)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 6.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: _colors[index % _colors.length]
                          ),
                          child: Text(liveMarketIndex.stockName,
                            style: const TextStyle(
                                fontSize: 14.0,
                                color: whiteColor,
                                fontWeight: FontWeight.w500
                            ),),
                        ),
                        const VerticalGap(gap: 6.0),
                        Text(liveMarketIndex.stockPrice,
                          style: const TextStyle(
                              fontSize: 20.0,
                              color: whiteColor,
                              fontWeight: FontWeight.w500
                          ),),
                      ],
                    ),
                    const HorizontalGap(gap: 10.0),
                    const Icon(Icons.arrow_upward, color: greenColor, size: 28,)
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(liveMarketIndex.increaseByPercent,
                      style: const TextStyle(
                          fontSize: 16.0,
                          color: whiteColor,
                          fontWeight: FontWeight.w400
                      ),),
                    const VerticalGap(gap: 6.0),
                    Text(liveMarketIndex.stockVal,
                      style: const TextStyle(
                          fontSize: 16.0,
                          color: greenColor,
                          fontWeight: FontWeight.w400
                      ),),
                  ],
                )
              ],
            ),
            const VerticalGap(gap: 16.0),
            Text(liveMarketIndex.stockDate,
              style: const TextStyle(
                  fontSize: 12.0,
                  color: whiteColor,
                  fontWeight: FontWeight.w400
              ),)
          ],
        ),
      ),
    );
  }
}
