import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../material/colorclass.dart';
import '../../../material/strings.dart';
class CoinDataList extends StatelessWidget {
  Map obj;
   CoinDataList({required this.obj ,super.key});

  @override
  Widget build(BuildContext context) {
    final heightSet =MediaQuery.of(context).size.height;
    final widthSet =MediaQuery.of(context).size.width;
    return Container(
        width: widthSet,
        height: heightSet*0.06,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Image.asset(obj["image"],height: heightSet*0.7,width: widthSet*0.07,),


            Column(
              children: [
                Text(obj["name"],
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: AppColors.appColorBlack,
                      fontWeight:FontWeight.w600
                  )),
              Text(obj["symbol"],
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: AppColors.appColorDivider,
                    fontWeight:FontWeight.w600
                )),
              ],
            ),

            // chart
            SizedBox(
              height: heightSet*0.04,
              width: widthSet*0.19,
              child: AspectRatio(
                // like size of chart
                  aspectRatio: 6, // Aspect ratio for better visualization

                  child: LineChart(
                    //main working
                    LineChartData(
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(0, 3),
                            FlSpot(1, 4),
                            FlSpot(2, 3.5),
                            FlSpot(3, 5),
                            FlSpot(4, 4),
                            FlSpot(5, 6),
                          ],
                          // show curve at every point
                          dotData: const FlDotData(show: false),
                          isCurved: true,
                          color: (obj["status"]>0)?AppColors.appPlus:AppColors.appLose,
                          barWidth: 2.5,
                        ),
                      ],
                      //index show x and y axise
                      titlesData: FlTitlesData(show: false),
                      // box show around chart
                      borderData: FlBorderData(show: false),
                      // show table
                      gridData: FlGridData(show: false),

                    ),
                  )
              ),
            ),





            Column(
              children: [
                Text("\$${obj["quote"]["USD"]["price"]}",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: AppColors.appColorBlack,
                        fontWeight:FontWeight.w600
                    )),
                Row(
                  children: [
                    Image.asset((obj["status"]>0)?obj["plus"]:obj["lose"],height: heightSet*0.015,width: widthSet*0.015,),
                    Text(
                        " ${obj["status"].toString()}%",
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: (obj["status"]>0)?AppColors.appPlus:AppColors.appLose,
                            fontWeight:FontWeight.w400
                        )),
                  ],
                ),
              ],
            )


          ],
        ),
      );
  }
}
