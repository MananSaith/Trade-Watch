import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import '../../../../material/colorclass.dart';
import '../../../../material/strings.dart';
import '../../homeFloder/cryptoFolder/crypto_widget.dart';
import '../../navigator_page.dart';
class WatchListPage extends StatefulWidget {
  const WatchListPage({super.key});

  @override
  State<WatchListPage> createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {
  @override
  Widget build(BuildContext context) {
    final heightSet =MediaQuery.of(context).size.height;
    final widthSet =MediaQuery.of(context).size.width;

    return  SafeArea(child: Scaffold(
      body: Padding(
          padding:const EdgeInsets.only(left: 21,right: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: heightSet*0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              IconButton(
                  onPressed: (){
                    Get.back();
                  },
                  icon:Icon(Icons.arrow_back_outlined,size: 30,color: AppColors.appColorBlack,)
              ),

                  Text(Mytext.watchList,
                    style: GoogleFonts.poppins(
                        fontSize: 26,
                        color: AppColors.appColorBlack,
                        fontWeight:FontWeight.w700
                    ),
                  ),

                  IconButton(
                      onPressed: (){

                      },
                      icon:const Icon(Icons.keyboard_arrow_down_sharp,size: 40,)
                  )   ,

              Spacer(flex: 1,),
              IconButton(
                  onPressed: (){

                  },
                  icon: Image.asset("assets/iconsFigma/IconSearch.png",width: widthSet*0.08,)
              )
            ],
          ),
          SizedBox(height: heightSet*0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.add_box,color: AppColors.appPlus,),
              SizedBox(width:  widthSet*0.015),
              Text(Mytext.addWatchList,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: AppColors.appPlus,
                    fontWeight:FontWeight.w600
                ),
              ),
             const Spacer(flex: 1),
              Image.asset("assets/coinIcons/dollorcoin.png",width: widthSet*0.06,),
              IconButton(
                  onPressed: (){

                  },
                  icon:const Icon(Icons.keyboard_arrow_down_sharp,size: 30,)
              )   ,
            ],
          ),
          SizedBox(height: heightSet*0.01),

          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              width: widthSet,
              height: heightSet,
              child: ContainedTabBarView(
                tabBarProperties:TabBarProperties(
                  indicatorColor: AppColors.appPlus,
                  alignment: TabBarAlignment.start,
                ),
                tabs: [
                  Text(Mytext.stock,
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: AppColors.appColorBlack,
                        fontWeight:FontWeight.w600
                    ),
                  ),
                  Text(Mytext.crypto,
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: AppColors.appColorBlack,
                        fontWeight:FontWeight.w600
                    ),
                  ),
                  Text(Mytext.commodity,
                    style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: AppColors.appColorBlack,
                        fontWeight:FontWeight.w600
                    ),
                  ),
                ],
                views: [
                CryptoWidget(),
                  CryptoWidget(),
                  CryptoWidget(),
                ],
              ),
            ),
          ),

        ],
        ),
      ),
    )
    );
  }
}
