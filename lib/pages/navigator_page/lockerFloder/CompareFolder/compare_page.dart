import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../../../../material/colorclass.dart';
import '../../../../material/other_info.dart';
import '../../../../material/strings.dart';

class ComparePage extends StatefulWidget {
  const ComparePage({super.key});

  @override
  State<ComparePage> createState() => _ComparePageState();
}

class _ComparePageState extends State<ComparePage> {
  @override
  Widget build(BuildContext context) {
    final heightSet = MediaQuery.of(context).size.height;
    final widthSet = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 21, right: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: heightSet*0.01,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(
                                Icons.arrow_back_outlined,
                                size: 30,
                                color: AppColors.appColorBlack,
                              )),
                          SizedBox(width: widthSet * 0.015),
                          Text(
                            Mytext.compare,
                            style: GoogleFonts.poppins(
                                fontSize: 27,
                                color: AppColors.appColorBlack,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: widthSet * 0.015),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 40,
                              )),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/iconsFigma/IconSearch.png",
                            width: widthSet * 0.08,
                          ))
                    ],
                  ),

                  Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Mytext.primary,
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: AppColors.appColorHintInput,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: heightSet*0.01,),
                          Container(
                            width:widthSet*0.425,
                            height: heightSet*0.06,
                            padding:const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.appColorHintInput
                              ),
                              borderRadius:  BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/coinIcons/bitcoin-btc-logo.png",height: heightSet*0.03,),
                                SizedBox(width:widthSet*0.01,),
                                Text(
                                  Mytext.crypto,
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: AppColors.appColorBlack,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(flex: 1,),
                                IconButton(
                                    onPressed: (){

                                    }, icon:const Icon(Icons.keyboard_arrow_down_sharp))

                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(width:widthSet*0.02,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Mytext.primary,
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: AppColors.appColorHintInput,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: heightSet*0.01,),
                          Container(
                            height: heightSet*0.06,
                            width:widthSet*0.425,
                            padding:const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.appColorHintInput
                                ),
                                borderRadius:  BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/coinIcons/stocksCoin.png",height: heightSet*0.03,),
                                SizedBox(width:widthSet*0.01,),
                                Text(
                                  Mytext.stock,
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: AppColors.appColorBlack,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(flex: 1,),
                                IconButton(
                              onPressed: (){

                              }, icon:const Icon(Icons.keyboard_arrow_down_sharp))
                              ],
                            ),
                          )
                        ],
                      ),

                      ],
                  ),
                  SizedBox(height: heightSet*0.01,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(

                        height: heightSet*0.06,
                        padding:const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.appColorHintInput
                            ),
                            borderRadius:  BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/coinIcons/bitcoin-btc-logo.png",height: heightSet*0.025,),
                            SizedBox(width:widthSet*0.01,),
                            Text(
                              Mytext.crypto,
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: AppColors.appColorBlack,
                                  fontWeight: FontWeight.w500),
                            ),
                            IconButton(
                                onPressed: (){

                                }, icon:const Icon(Icons.keyboard_arrow_down_sharp))

                          ],
                        ),
                      ),
                      Icon(Icons.swap_horiz_rounded,color: AppColors.appThemeColor,size: 40,),
                      Container(

                        height: heightSet*0.06,
                        padding:const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.appColorHintInput
                            ),
                            borderRadius:  BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/coinIcons/tesla.png",height: heightSet*0.025,),
                            SizedBox(width:widthSet*0.01,),
                            Text(
                              Mytext.tesla,
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: AppColors.appColorBlack,
                                  fontWeight: FontWeight.w500),
                            ),
                            IconButton(
                                onPressed: (){

                                }, icon:const Icon(Icons.keyboard_arrow_down_sharp))
                          ]


                        ),
                      )

                    ],
                  ),
                 SizedBox(height: heightSet*0.015,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(Mytext.comparisonChart,
                      style: GoogleFonts.poppins(
                        color: AppColors.appColorBlack,
                        fontSize: 15,
                        fontWeight:FontWeight.w700
                      ),),
                      Spacer(flex: 1,),
                     Image.asset("assets/coinIcons/dollorcoin.png",height: heightSet*0.03,),
                      IconButton(
                          onPressed: (){

                          }, icon:const Icon(Icons.keyboard_arrow_down_sharp))

                    ],
                  ),

                  Container(
                    height: heightSet*0.4,
                    padding: const EdgeInsets.only(left: 4,right: 4,bottom: 8),
                    decoration: BoxDecoration(
                      color: AppColors.appColorWhite,
                      border: Border.all(

                        color: AppColors.appColorHintInput
                      ),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RichText(text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: Mytext.leadingRate1,
                                      style: GoogleFonts.poppins(
                                        fontSize:20,
                                        color: AppColors.leadChart,
                                          fontWeight: FontWeight.w900
                                      )
                                  ),
                                  TextSpan(
                                    text: Mytext.leadingRate11,
                                    style: GoogleFonts.poppins(
                                        fontSize:10,
                                        color: AppColors.appPlus,
                                        fontWeight: FontWeight.w900
                                    ),
                                  ),
                                ]
                              )

                              ),
                              RichText(text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: Mytext.leadingRate1,
                                        style: GoogleFonts.poppins(
                                            fontSize:20,
                                            color: AppColors.leadChart1,
                                          fontWeight: FontWeight.w900
                                        ),
                                    ),
                                    TextSpan(
                                      text: Mytext.leadingRate11,
                                      style: GoogleFonts.poppins(
                                          fontSize:10,
                                          color: AppColors.appPlus,
                                          fontWeight: FontWeight.w900
                                      ),
                                    ),
                                  ]
                              )

                              ),



                            ],
                          ),
                        ),
                        AspectRatio(
                          // like size of chart
                            aspectRatio: 1.2, // Aspect ratio for better visualization

                            child: LineChart(
                              //main working
                              LineChartData(
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: const[

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
                                    color: AppColors.leadChart,
                                    barWidth: 2.5,
                                  ),
                                  LineChartBarData(
                                    spots: const[

                                      FlSpot(0, 4),
                                      FlSpot(1, 4),
                                      FlSpot(2, 5),
                                      FlSpot(3, 4),
                                      FlSpot(4, 5),
                                      FlSpot(5, 4.4),
                                    ],

                                    // show curve at every point
                                    dotData: const FlDotData(show: false),
                                    isCurved: true,
                                    color: AppColors.leadChart1,
                                    barWidth: 3.5,
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
                      ],

                    ),
                  ),
                  SizedBox(height: heightSet*0.01,),
                  Text(Mytext.otherInformation,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: AppColors.appColorBlack,
                    fontWeight: FontWeight.w700
                  ),),
                  SizedBox(height: heightSet*0.01,),
                  GridView.builder(
                    shrinkWrap: true,
                      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 150,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10

                      ),
                      itemCount: otherInfo.length,
                      itemBuilder: (_,index){
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.appColorWhite
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius:const  BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                                child: Image.asset(otherInfo[index]["image"],width: widthSet,),
                              ),
                              SizedBox(height: heightSet*0.005,),
                              Text(otherInfo[index]["id"],
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: AppColors.appColorBlack,
                                    fontWeight: FontWeight.w500
                                ),),
                              Text(otherInfo[index]["description"],
                                style: GoogleFonts.poppins(
                                    fontSize: 5,
                                    color: AppColors.appColorBlack,
                                    fontWeight: FontWeight.w400
                                ),),
                            ],
                          ),
                        );
                      }),

                  
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
