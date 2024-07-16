import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../material/colorclass.dart';
import '../../../../material/furom_list_data.dart';
import '../../../../material/strings.dart';
import '../../../../widgetpage/border.dart';
class FuromPage extends StatefulWidget {
  const FuromPage({super.key});

  @override
  State<FuromPage> createState() => _FuromPageState();
}

class _FuromPageState extends State<FuromPage> {
  var isFavorite=false.obs;
  var isShare=false.obs;
  var isDislike=false.obs;

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
        Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(20)
    ),
          child: Container(
            padding:const EdgeInsets.all(16),
            height: heightSet*0.5,
            width: widthSet,
            decoration: BoxDecoration(
              color: AppColors.appColorWhite,
                  borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius:const  BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      child: Image.asset(addPost["dp"],width: widthSet*0.18,),
                    ),
                    SizedBox(width: widthSet*0.06,),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            addPost["heading"],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: AppColors.appColorBlack,
                                fontWeight:FontWeight.w600
                            ),

                          ),

                          Text(addPost["idName"],

                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                color: AppColors.appColorHintInput,
                                fontWeight:FontWeight.w500
                            ),
                          ),
                          SizedBox(height: heightSet*0.01),
                          Row(
                            children: [
                              Text(addPost["day"],
                                style: GoogleFonts.poppins(
                                    fontSize: 8,
                                    color: AppColors.appColorDivider,
                                    fontWeight:FontWeight.w500
                                ),
                              ),
                              SizedBox(width: widthSet*0.05,),
                              Text(addPost["time"],
                                style: GoogleFonts.poppins(
                                    fontSize: 8,
                                    color: AppColors.appColorDivider,
                                    fontWeight:FontWeight.w500
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: heightSet*0.01),
                Image.asset(addPost["post"]),
                SizedBox(height: heightSet*0.01),
                Text(
                  addPost["description"],
                  style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: AppColors.appColorBlack,
                      fontWeight:FontWeight.w400
                  ),
                ),
                SizedBox(height: heightSet*0.025),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: (){
                          setState(() {
                            isFavorite.value = !isFavorite.value;
                          });

                        },

                        icon: isFavorite.value?
                        Icon(Icons.favorite):
                        Icon(Icons.favorite_border),
                        color: AppColors.appPlus,)   ,
                      IconButton(
                        onPressed: (){
                          setState(() {
                            isShare.value = !isShare.value;
                          });

                        },
                        icon: isShare.value?
                        Icon(Icons.share):
                        Icon(Icons.share_outlined)
                        ,
                        color: AppColors.appPlus,
                      ),
                      IconButton(
                        onPressed: (){
                          setState(() {

                            isDislike.value = !isDislike.value;
                          });

                        },
                        icon: isDislike.value?
                        Icon(Icons.heart_broken_rounded):
                        Icon(Icons.heart_broken_outlined)
                        ,
                        color: AppColors.appPlus,
                      )   ,
                      IconButton(
                        onPressed: (){
                          setState(() {

                          });

                        },

                        icon: Icon(Icons.mode_comment_outlined),
                        color: AppColors.appPlus,)   ,

                    ]

                ),
                Row(
                  children: [
                    Text(addPost["coin"],
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: AppColors.appColorSkyBlue,
                          fontWeight:FontWeight.w700
                      ),
                    ),
                    SizedBox(width: widthSet*0.05,),
                    Text(addPost["view"],
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: AppColors.appColorHintInput,
                          fontWeight:FontWeight.w600
                      ),
                    ),
                    SizedBox(width: widthSet*0.05,),
                    Text(addPost["respond"],
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: AppColors.appColorHintInput,
                          fontWeight:FontWeight.w600
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: heightSet*0.01,),
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            child: Container(
              padding:const EdgeInsets.all(16),
              height: heightSet*0.1,
              width: widthSet,
              decoration: BoxDecoration(
                  color: AppColors.appColorWhite,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children:[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius:const  BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                        child: Image.asset(addPost["dp"],width: widthSet*0.12,),
                      ),
                      SizedBox(width: widthSet*0.06,),
                      Expanded(
                        child: Column(
          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                               style: GoogleFonts.poppins(
                                   fontSize:10,
                                   color: AppColors.appColorBlack,
                                   fontWeight:FontWeight.w400
                               ),
                                maxLines: 3,
                                decoration: InputDecoration(
                                    hintText:Mytext.comment,
                                    border:         borderWidget ,
                                    enabledBorder:  borderWidget ,
                                    focusedBorder:  borderWidget ,
                                    hintStyle: GoogleFonts.poppins(
                                        fontSize:10,
                                        color: AppColors.appColorHintInput
                                    )
                                )
                            ),
                            SizedBox(height: heightSet*0.01,),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: (){ }, 
                                    icon: const Icon(Icons.image),color: AppColors.appColorHintInput,),
                                IconButton(
                                  onPressed: (){ },
                                  icon:const Icon(Icons.camera_alt_outlined),color: AppColors.appColorHintInput,),
                                     Spacer(flex: 1,),
                                ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.appThemeColor,
                                      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 8), // Change the button padding
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(9), // Change the border radius
                                      ),
                                    ),
                                    child: Text(
                                      Mytext.respond,
                                      style: GoogleFonts.poppins(
                                          fontSize: 8,
                                          color: AppColors.appColorWhite,
                                          fontWeight:FontWeight.w600
                                      ),
                                    )

                                )
                              ],

                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ]
              ),
            ),
          ),
        )

      ],
    );
  }
}
