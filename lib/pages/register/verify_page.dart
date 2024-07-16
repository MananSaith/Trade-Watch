
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:figma_design2/material/colorclass.dart';
import 'package:figma_design2/material/strings.dart';
import 'package:figma_design2/widgetpage/border.dart';
import '../navigator_page/navigator_page.dart';
class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {



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
                  Mytext.verifyCode,
                  style: GoogleFonts.poppins(
                      fontSize: 28,
                      color: AppColors.appColorBlack,
                      fontWeight:FontWeight.w600
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.006),
                Text(
                  Mytext.verifyCodeStat,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight:FontWeight.w400,
                    color: AppColors.appColorBlack,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.025),
                Text(
               Mytext.numberSendForVerify,
               style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight:FontWeight.w400,
            color: AppColors.appColorHintInput,
          ),
        ),
            SizedBox(height: MediaQuery.of(context).size.height*0.045),
                Center(
                  child: Image(
                    image: const AssetImage("assets/otp_pik.png"),
                    width: MediaQuery.of(context).size.width/1.4,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.025),
        
                Pinput(
                  defaultPinTheme:defaultPinTheme ,
                  focusedPinTheme: defaultPinTheme ,
                  submittedPinTheme: defaultPinTheme,
                  validator: (number){
                    return number=="1234"?null:Mytext.incorrectPin;
                  },
                ),
        
        
                SizedBox(height: MediaQuery.of(context).size.height*0.045),
                GestureDetector(
                  onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const NavigatorPage()));
                    },
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: AppColors.appThemeColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        Mytext.verifyButtonText,
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
                              text: Mytext.dReceiveText,
                              style:GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: AppColors.appColorHintInput
                              ),
                            ),
                            TextSpan(
                              text: Mytext.request,
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
