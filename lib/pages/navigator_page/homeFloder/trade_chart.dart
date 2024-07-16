import 'package:figma_design2/material/colorclass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../material/coins_data.dart';
import '../../../material/strings.dart';
import 'chartdataLine.dart';
class TradeChart extends StatefulWidget {
  const TradeChart({super.key});

  @override
  State<TradeChart> createState() => _TradeChartState();
}

class _TradeChartState extends State<TradeChart> {
  @override
  Widget build(BuildContext context) {
    final heightSet =MediaQuery.of(context).size.height;
    final widthSet =MediaQuery.of(context).size.width;
    return Stack(
      children: [Container(
        padding: const EdgeInsets.only(left: 12,right: 10,top: 10),
        width: widthSet,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(Mytext.topTrend,
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: AppColors.appColorBlack,
                      fontWeight:FontWeight.w700
                  ),
                ),
                SizedBox(height: heightSet*0.015,),
                Expanded(
                    child:ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context,index){
                            final current=coinData["data"][index];

                      return CoinDataList(obj: current,);
                    })
                )
              ],
            ),
      ),
        Container(
          margin: EdgeInsets.only(top: heightSet*0.2),
          height: heightSet*0.1,
          width: widthSet,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.appLowWhite,
                AppColors.appColorWhite,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
          ),
          child: Center(
            child: Image.asset("assets/coinIcons/downdoublearrow.png",height: heightSet*0.07,),
          ),
        )
    ]
    );
  }
}
