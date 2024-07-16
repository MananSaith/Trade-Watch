import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import '../../../../material/news_list.dart';
import '../../../../material/strings.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../material/colorclass.dart';
import '../../../../material/video_listdata.dart';
import '../../navigator_page.dart';
import 'package:get/get.dart';
class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(
            Uri.parse("https://www.youtube.com/watch?v=ShU3fd6jgL4"))

    );

  }

  var isFavorite=false.obs;
  var isShare=false.obs;
  var isDislike=false.obs;
  @override
  Widget build(BuildContext context) {
    final heightSet =MediaQuery.of(context).size.height;
    final widthSet =MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Scaffold(
          body: Padding(
            padding:const EdgeInsets.only(left: 21,right: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: heightSet*0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: (){
                              Get.back();
                            },
                            child: Image.asset("assets/iconsFigma/arrorleft.png",width: widthSet*0.09,)),
                        SizedBox(width:  widthSet*0.015),
                        Text(Mytext.video,
                          style: GoogleFonts.poppins(
                              fontSize: 36,
                              color: AppColors.appColorBlack,
                              fontWeight:FontWeight.w700
                          ),
                        ),
                        SizedBox(width:  widthSet*0.015),
                        IconButton(
                            onPressed: (){

                            },
                            icon:const Icon(Icons.keyboard_arrow_down_sharp,size: 40,)
                        )   ,

                      ],
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
                SizedBox(height: heightSet*0.02,),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (context,index){
                        return  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              elevation: 4,
                              shape:  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                width: widthSet,
                                height: heightSet*0.32,
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
                                      child: Stack(
                                        children: [
                                          AspectRatio(
                                            aspectRatio: 16/9,
                                            child: FlickVideoPlayer(flickManager: flickManager,),

                                          ),
                                          // Container(
                                          //   margin: EdgeInsets.only(top: heightSet*0.02),
                                          //   height: heightSet*0.08,
                                          //   width: widthSet,
                                          //   decoration: BoxDecoration(
                                          //       gradient: LinearGradient(
                                          //         colors: [
                                          //           AppColors.appLowWhite,
                                          //           AppColors.appColorWhite,
                                          //         ],
                                          //         begin: Alignment.topCenter,
                                          //         end: Alignment.bottomCenter,
                                          //       )
                                          //   ),
                                          //   child: Center(
                                          //     child: Text("tecsjxbnxxn"),
                                          //   ),
                                          // )
                                        ],

                                      ),
                                    ),

                                    Padding(
                                      padding:const  EdgeInsets.all(8),
                                      child:  Row(
                                            children: [
                                              Row(

                                                  children: [

                                                    ClipRRect(
                                                      borderRadius:const  BorderRadius.only(
                                                        topLeft: Radius.circular(20.0),
                                                        topRight: Radius.circular(20.0),
                                                      ),
                                                      child: Image.asset("assets/mananpik.jpeg",height: heightSet*0.065,width: widthSet*0.065,),
                                                    ),

                                                    SizedBox(width:widthSet*0.03),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          videoDataList[0]["idName"],
                                                          style: GoogleFonts.poppins(
                                                            fontSize: 12,
                                                            fontWeight:FontWeight.w500,
                                                            color: AppColors.appColorIdName,
                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              videoDataList[0]["day"],
                                                              style: GoogleFonts.poppins(
                                                                fontSize: 10,
                                                                fontWeight:FontWeight.w500,
                                                                color: AppColors.appColorDivider,
                                                              ),
                                                            ),
                                                            SizedBox(width:widthSet*0.03),
                                                            Text(
                                                              videoDataList[0]["view"],
                                                              style: GoogleFonts.poppins(
                                                                fontSize: 10,
                                                                fontWeight:FontWeight.w500,
                                                                color: AppColors.appColorDivider,
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    )
                                                  ]
                                              ),
                                              SizedBox(width:widthSet*0.025),
                                              Row(
                                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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


                                                  ]
                                              ),
                                            ],
                                          ),

                                    )


                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      }

                  ),
                )

              ],
            ),

          )
      ),
    );
  }
}
