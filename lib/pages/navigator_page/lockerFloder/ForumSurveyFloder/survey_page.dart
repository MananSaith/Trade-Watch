import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../../../../material/colorclass.dart';
import '../../../../material/strings.dart';
import '../../../../material/survey_list_data.dart';

class SurveyPage extends StatefulWidget {
  const SurveyPage({super.key});

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  @override
  Widget build(BuildContext context) {
    final heightSet =MediaQuery.of(context).size.height;
    final widthSet =MediaQuery.of(context).size.width;
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: heightSet*0.015),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("assets/coinIcons/bitcoin-btc-logo.png",width: widthSet*0.06,),
                SizedBox(width:  widthSet*0.015),
                Text(Mytext.crypto,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: AppColors.appColorBlack,
                      fontWeight:FontWeight.w500
                  ),
                ),
                SizedBox(width:  widthSet*0.015),
                IconButton(
                  onPressed: (){

                  },
                  icon:  Image.asset("assets/lockerPagePiks/downarrowSingle.png",width: widthSet*0.07,),
                )

              ],
            )
            ,
            Row(
              children: [
                Image.asset("assets/coinIcons/Ethereum.png",width: widthSet*0.06,),
                SizedBox(width:  widthSet*0.015),
                Text(Mytext.ethereum,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: AppColors.appColorBlack,
                      fontWeight:FontWeight.w500
                  ),
                ),
                SizedBox(width:  widthSet*0.015),
                IconButton(
                  onPressed: (){

                  },
                  icon:  Image.asset("assets/lockerPagePiks/downarrowSingle.png",width: widthSet*0.07,),
                )
              ],
            )
          ],
        ),
        SizedBox(height: heightSet*0.02,),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector
              (
              onTap: (){

                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("working done"))
                );
              },
              child: Container(
                height: heightSet*0.05,
                width: widthSet*0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColors.appColorHintInput, // specify the border color here
                    width: 1, // specify the border width here
                  ),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/iconsFigma/driller.png",width: widthSet*0.04,),
                    SizedBox(width:  widthSet*0.015),
                    Text(Mytext.driller,
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: AppColors.appColorHintInput,
                          fontWeight:FontWeight.w600
                      ),
                    ),
                  ],
                ),


              ),
            ),
          ],
        ),

        SizedBox(height: heightSet*0.02,),
        Text(Mytext.topics,
          style: GoogleFonts.poppins(
              fontSize: 16,
              color: AppColors.appColorBlack,
              fontWeight:FontWeight.w700
          ),
        ),
        SizedBox(height: heightSet*0.02,),
        CarouselSlider.builder(
            itemCount:surveyDataList.length,
            itemBuilder: (context,index,realIndex){
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(surveyDataList[index]["image"]),
                            fit:BoxFit.fill
                        )

                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.only(top: 150,left: 30),
                    child:  Text(surveyDataList[index]["lable"],
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: AppColors.appColorWhite,
                          fontWeight:FontWeight.w600
                      ),
                    ),
                  )
                ],

              );

            },
            options:CarouselOptions(
              height: 250,
              viewportFraction: 1,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
            )
        ),
        SizedBox(height: heightSet*0.03,),

        Expanded(
            child:ListView.builder(
                itemCount: questionSurvey.length,
                itemBuilder: (context,index){
              return  Card(

                elevation: 6,
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                 padding:const  EdgeInsets.only(left: 12,),
                  width: widthSet,
                  height: heightSet*0.1,
                  decoration: BoxDecoration(
                    color: AppColors.appColorWhite,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius:const  BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        child: Image.asset(questionSurvey[index]["image"],width: widthSet*0.1,),
                      ),
                      SizedBox(width: widthSet*0.03,),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        
                              Text(
                                questionSurvey[index]["description"],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: AppColors.appColorBlack,
                                    fontWeight:FontWeight.w500
                                ),
                        
                              ),
                        
                            Text(questionSurvey[index]["question"],
                        
                              style: GoogleFonts.poppins(
                                  fontSize: 8,
                                  color: AppColors.appColorHintInput,
                                  fontWeight:FontWeight.w300
                              ),
                            ),
                            SizedBox(height: heightSet*0.01,),
                            Row(
                              children: [
                                Text(questionSurvey[index]["answer"],
                                  style: GoogleFonts.poppins(
                                      fontSize: 8,
                                      color: AppColors.appColorSkyBlue,
                                      fontWeight:FontWeight.w600
                                  ),
                                ),
                                SizedBox(width: widthSet*0.05,),
                                Text(questionSurvey[index]["xyz"],
                                  style: GoogleFonts.poppins(
                                      fontSize: 8,
                                      color: AppColors.appColorHintInput,
                                      fontWeight:FontWeight.w500
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
                ;
            }) )
      ],
    );
  }
}
