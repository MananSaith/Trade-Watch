import 'package:figma_design2/material/colorclass.dart';
import 'package:figma_design2/material/list_data.dart';
import 'package:figma_design2/material/strings.dart';
import 'package:figma_design2/widgetpage/border.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'slidepart.dart';
import 'trade_chart.dart';
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final TextEditingController search = TextEditingController();

  final slide =[const TradeChart(),const slide2()];
  @override
  Widget build(BuildContext context) {
    final heightSet =MediaQuery.of(context).size.height;
    final widthSet =MediaQuery.of(context).size.width;




    return  SafeArea(
      child: Scaffold(
        body: Padding(
            padding:const EdgeInsets.only(left: 21,right: 21),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.07),
        
              SizedBox(
                height: 50,
                child: TextField(
                  controller: search,
                  decoration: InputDecoration(
                    hintText: Mytext.searchFeild,
                    filled: true,
                    fillColor: AppColors.appColorSearch,
                    hintStyle: TextStyle(
                        color: AppColors.appColorDivider,
                          fontSize: 14
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Image.asset("assets/iconsFigma/IconSearch.png",width:widthSet*0.06,),
                    ), // Icon on the left side
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child:Image.asset("assets/iconsFigma/Voice.png",width:widthSet*0.06,),
                    ), // Icon on the right side
                    border: borderWidgetForHomeSearch,
                    enabledBorder: borderWidgetForHomeSearch,
                    focusedBorder: borderWidgetForHomeSearch// Optionally, add border for TextField
                  ),
                ),
              ),

              SizedBox(height: heightSet*0.05,),

                CarouselSlider.builder(
                    itemCount: slide.length,
                    itemBuilder: (context,index,realIndex){
                      return slide[index];

                    },
                    options:CarouselOptions(
                      autoPlay: true,
                      height: 250,
                      viewportFraction: 1,
                      scrollDirection: Axis.horizontal,
                    )
                ),
              SizedBox(height: heightSet*0.03,),
              Text(Mytext.categorise,
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: AppColors.appColorBlack,
                    fontWeight:FontWeight.w700
                ),
              ),
              SizedBox(height: heightSet*0.02,),
              GridView.builder(
              //  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent:100

                ),

                  itemCount: listCatogories.length,
                  itemBuilder: (_,index){
                    return GestureDetector(
                      onTap: (){
                      Get.to(listCatogories[index]["navigate"]);
                      },
                      child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(listCatogories[index]["pik"]),
                              fit:BoxFit.fill
                          )

                           //color: Colors.black,
                         ),
                        child: Container(
                              margin:const EdgeInsets.only(top: 50),
                              decoration: BoxDecoration(
                                borderRadius:const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: AppColors.appColorTransparent ,
                              ),

                              child: Center(
                                  child:Text(listCatogories[index]["lable"],
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: AppColors.appColorWhite,
                                        fontWeight:FontWeight.w400
                                    ),)
                              ),
                            )

                      ),
                    );
                  },
               )

            ],
          ),
        ),
        )
      ),
    );
  }
}