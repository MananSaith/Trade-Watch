import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../controller/bellController.dart';
import '../../../../material/coins_data.dart';
import '../../../../material/colorclass.dart';
class CryptoWidget extends StatelessWidget {
   CryptoWidget({super.key});

   var controller = Get.put(MyController());
   var isStar=false.obs;
  var isBell=false.obs;


  @override
  Widget build(BuildContext context) {
    final heightSet =MediaQuery.of(context).size.height;
    final widthSet =MediaQuery.of(context).size.width;
   return ListView.builder(
     itemCount: 10,
       itemBuilder: (context,index){
         return  SizedBox(
           height: 85,
           width: widthSet,
           child: Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(coinData["data"][0]["name"],
                         style: GoogleFonts.poppins(
                             fontSize: 16,
                             color: AppColors.appColorBlack,
                             fontWeight:FontWeight.w600
                         ),
                       ),
                       Text(coinData["data"][0]["symbol"],
                         style: GoogleFonts.poppins(
                             fontSize: 16,
                             color: AppColors.appColorHintInput,
                             fontWeight:FontWeight.w600
                         ),
                       ),
                     ],
                   ),
                   Row(
                     children: [
                       Column(crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           Text(" \$${coinData["data"][0]["quote"]["USD"]["price"] }",
                             style: GoogleFonts.poppins(
                                 fontSize: 12,
                                 color: AppColors.appColorBlack,
                                 fontWeight:FontWeight.w600
                             ),
                           ),
                           Text(
                               "+${coinData["data"][0]["status"].toString()}%",
                               style: GoogleFonts.poppins(
                                   fontSize: 10,
                                   color: (coinData["data"][0]["status"]>0)?AppColors.appPlus:AppColors.appLose,
                                   fontWeight:FontWeight.w400
                               )),

                         ],
                       ),
                       Icon(Icons.arrow_upward,color: AppColors.appPlus,)
                     ],
                   ),
                   Obx(
                         ()=> Row(
                       children: [
                         IconButton(
                           onPressed: (){
                             isBell.value = !isBell.value;
                           },
                           icon: isBell.value?
                           Icon(Icons.notifications_active,size: 35):
                           Icon(Icons.notifications_none,size: 35)
                           ,
                           color: AppColors.appPlus,
                         )   ,
                         IconButton(
                           onPressed: ()
                           {
                             isStar.value = !isStar.value;
                             print('hallo');
                           },
                           icon: isStar.value?
                           Icon(Icons.star_rounded,size: 35):
                           Icon(Icons.star_border_rounded,size: 35,)
                           ,
                           color: AppColors.appPlus,

                         )   ,
                       ],
                     ),
                   )
                 ],
               ),
               Divider(
                 color: AppColors.appColorDivider,
                 thickness: 1.0,
                 height: 30.0,

               ),

             ],
           ),
         );
       });
  }
}
