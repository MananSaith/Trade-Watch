import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../material/colorclass.dart';
import '../../material/strings.dart';
class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  logOut() async{
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    final heightSet =MediaQuery.of(context).size.height;
    final widthSet =MediaQuery.of(context).size.width;
    
    List   listForSetting=[
      Mytext.wallet,
      Mytext.myActivity,
      Mytext.referralCode,
      Mytext.contact,
      Mytext.termAndServices
    ];
    
    return SafeArea(
        child: Scaffold(
          body: Padding(
              padding:const EdgeInsets.only(right: 22,left: 22),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Container(
                    width: widthSet,
                    height: heightSet/2.7,
                    decoration: BoxDecoration(
                      color: AppColors.appColorWhite
                    ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: heightSet*0.07),
                          Text(
                            Mytext.settingText,
                            style: GoogleFonts.poppins(
                                fontSize: 36,
                                color: AppColors.appColorBlack,
                                fontWeight:FontWeight.w700
                            ),
                          ),
                          SizedBox(height:heightSet*0.019),
                          Container(
                            // color: AppColors.appColorDivider,
                            height: heightSet*0.18,
                            width: widthSet,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment:CrossAxisAlignment.start ,
                                  children: [
                                    SizedBox(height: heightSet*0.02),
                                    Text(
                                      Mytext.profileName,
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          color: AppColors.appColorBlack,
                                          fontWeight:FontWeight.w700
                                      ),

                                    ),
                                    SizedBox(height:heightSet*0.019),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(Mytext.editProfile,
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              color: AppColors.appThemeColor,
                                              fontWeight:FontWeight.w500
                                          ),
                                        ),
                                        SizedBox(width:widthSet*0.019),
                                        SizedBox(
                                          width: widthSet*0.08,
                                          height: heightSet*0.03,
                                          child:Image.asset("assets/iconsFigma/Edit.png"),
                                        ),

                                      ],
                                    ),
                                    SizedBox(height:heightSet*0.019),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: widthSet*0.08,
                                          height: heightSet*0.03,
                                          child:Image.asset("assets/iconsFigma/Add User.png"),
                                        ),
                                        SizedBox(width:widthSet*0.025),
                                        Text(Mytext.inviteFriend,
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              color: AppColors.appThemeColor,
                                              fontWeight:FontWeight.w500
                                          ),
                                        )
                                      ],
                                    )
                                  ],

                                ),
                                Column(
                                  crossAxisAlignment:CrossAxisAlignment.end ,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/mananpik.jpeg",
                                        width: widthSet*0.30,
                                        height: heightSet*0.12,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height:heightSet*0.019),
                                    GestureDetector(
                                      onTap: ()=>logOut(),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: widthSet*0.09,
                                            height: heightSet*0.025,
                                            child:Image.asset("assets/iconsFigma/Logout1.png",color: AppColors.appColorHintInput,),
                                          ),
                                          // Icon(Icons.logout,
                                          //   color: AppColors.appColorHintInput,
                                          //
                                          // ),
                                          SizedBox(width:widthSet*0.015),
                                          Text(Mytext.logOut,
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color: AppColors.appColorHintInput,
                                                fontWeight:FontWeight.w500
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],

                                )
                              ],

                            ),
                          )
                        ],
                      )
                  ),
                  SizedBox(height: heightSet*0.025,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Mytext.language,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: AppColors.appColorBlack,
                                fontWeight:FontWeight.w400
                            ),

                          ),
                          SizedBox(height: heightSet*0.01,),
                          Text(
                            Mytext.selectedLanguage,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: AppColors.appColorBlack,
                                fontWeight:FontWeight.w600
                            ),

                          ),
                          SizedBox(height: heightSet*0.01,),
                        ],
                      ),
                      ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.appThemeColor,
                              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 12), // Change the button padding
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9), // Change the border radius
                        ),
                          ),
                          child: Text(
                            Mytext.buttonText,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: AppColors.appColorWhite,
                                fontWeight:FontWeight.w600
                            ),
                          )

                      )
                    ],
                  ),

                     Divider(
                      color: AppColors.appColorDivider,
                      thickness: 1.0,
                      height: 30.0,
                    ),

                  SizedBox(
                    width: widthSet,
                    height: heightSet*0.35,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: listForSetting.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: widthSet,
                          height: heightSet*0.08,
                          child: GestureDetector(
                            onTap: (){},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: heightSet*0.005,),
                                // wallet
                                Text(
                                  listForSetting[index],
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: AppColors.appColorBlack,
                                      fontWeight:FontWeight.w600
                                  ),

                                ),

                                // my activity

                                Divider(
                                  color: AppColors.appColorDivider,
                                  thickness: 1.0,
                                  height: 30.0,

                                ),

                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );

  }
}
