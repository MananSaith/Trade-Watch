import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../material/colorclass.dart';
import '../../../material/locker_grid_list.dart';
import '../../../material/strings.dart';
class LockerPage extends StatefulWidget {
  const LockerPage({super.key});

  @override
  State<LockerPage> createState() => _LockerPageState();
}

class _LockerPageState extends State<LockerPage> {
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
                SizedBox(height: heightSet*0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Mytext.locker,
                      style: GoogleFonts.poppins(
                          fontSize: 36,
                          color: AppColors.appColorBlack,
                          fontWeight:FontWeight.w700
                      ),
                    ),
                    IconButton(
                        onPressed: (){

                        },
                        icon: Image.asset("assets/iconsFigma/IconSearch.png",width: widthSet*0.08,)
                    )
                  ],
                ),
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

                // grid
                SizedBox(height: heightSet*0.02,),
                GridView.builder(
                  //  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent:154

                  ),

                  itemCount: lockerGridData.length,
                  itemBuilder: (_,index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> lockerGridData[index]["navigatePage"] ));


                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(lockerGridData[index]["image"]),
                                  fit:BoxFit.fill
                              )

                            //color: Colors.black,
                          ),
                          child: Container(
                            margin:const EdgeInsets.only(top: 100),
                            decoration: BoxDecoration(
                              borderRadius:const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: AppColors.appColorTransparent ,
                            ),

                            child: Center(
                                child:Text(lockerGridData[index]["lable"],
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
