import 'package:figma_design2/material/colorclass.dart';
import 'package:figma_design2/material/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../navigator_page/navigator_page.dart';

class EmailSendPag extends StatefulWidget {
  const EmailSendPag({super.key});

  @override
  State<EmailSendPag> createState() => __EmailSendPagState();
}

class __EmailSendPagState extends State<EmailSendPag> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(right: 21,left:21),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.07),
                Text(
                  Mytext.sendEmailText,
                  style: GoogleFonts.poppins(
                      fontSize: 28,
                      color: AppColors.appColorBlack,
                      fontWeight:FontWeight.w600
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.006),
                Text(
                  Mytext.sendEmailStatement,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight:FontWeight.w400,
                    color: AppColors.appColorBlack,
                  ),
                ),

            SizedBox(height: MediaQuery.of(context).size.height*0.075),
                Center(
                  child: Image(
                    image: const AssetImage("assets/emai_send_pik.png"),
                    width: MediaQuery.of(context).size.width/1.4,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.075),
                GestureDetector(
                  onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const NavigatorPage()));
                    },
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: AppColors.appThemeColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        Mytext.signIn ,
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight:FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.035),
                Center(
                  child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: Mytext.donReceiveLink,
                              style:GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: AppColors.appColorHintInput
                              ),
                            ),
                            TextSpan(
                              text: Mytext.resend,
                              style:GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: AppColors.appColorForget ,
                                  fontWeight:FontWeight.bold
                              ),
                            )
                          ]
                      )),
                ),

              ],
            ),
          ),
        ),

      ),
    );
  }
}