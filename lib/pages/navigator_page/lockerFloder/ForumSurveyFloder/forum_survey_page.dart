import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:figma_design2/pages/navigator_page/lockerFloder/ForumSurveyFloder/survey_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../material/colorclass.dart';
import '../../../../material/strings.dart';
import 'furom_page.dart';
class ForumSurveyPage extends StatefulWidget {
  const ForumSurveyPage({super.key});

  @override
  State<ForumSurveyPage> createState() => _ForumSurveyPageState();
}

class _ForumSurveyPageState extends State<ForumSurveyPage> {
  @override
  Widget build(BuildContext context) {
    final heightSet =MediaQuery.of(context).size.height;
    final widthSet =MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding:const EdgeInsets.only(left: 21,right: 21),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: heightSet*0.03),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: (){
                              Get.back();
                            },
                            icon:Icon(Icons.arrow_back_outlined,size: 30,color: AppColors.appColorBlack,)
                        ),
                        IconButton(
                            onPressed: (){

                            },
                            icon: Image.asset("assets/iconsFigma/IconSearch.png",width: widthSet*0.08,)
                        )
                      ],
                    ),

                    SizedBox(
                        width: widthSet,
                        height: heightSet,
                        child: ContainedTabBarView(
                          tabBarProperties: TabBarProperties(
                            indicatorColor: AppColors.appPlus,
                            alignment: TabBarAlignment.start,
                          ),
                          tabs: [
                            Text(Mytext.furom,
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  color: AppColors.appColorBlack,
                                  fontWeight:FontWeight.w700
                              ),
                            ),
                            Text(Mytext.survey,
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  color: AppColors.appColorBlack,
                                  fontWeight:FontWeight.w700
                              ),
                            ),
                          ],
                          views: [
                           FuromPage(),
                            SurveyPage(),

                          ],
                        ),
                      ),

                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
