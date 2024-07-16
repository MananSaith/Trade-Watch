import 'package:figma_design2/pages/register/email_send.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:figma_design2/widgetpage/border.dart';
import '../../material/colorclass.dart';
import '../../material/strings.dart';
class ForgetPage extends StatefulWidget {
  const ForgetPage({super.key});

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  final TextEditingController emailPhone=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 21,left:21),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.07),
                Text(
                  Mytext.forgetPassword,
                  style: GoogleFonts.poppins(
                      fontSize: 28,
                      color: AppColors.appColorBlack,
                      fontWeight:FontWeight.w600
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.006),
                Text(
                  Mytext.forgetStatement,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight:FontWeight.w400,
                    color: AppColors.appColorBlack,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.025),

                Center(
                  child: Image(
                    image: const AssetImage("assets/forget_pik.png"),
                    width: MediaQuery.of(context).size.width/1.6,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.045),

               SizedBox(
                height: 56,
                 child: TextField(
                  controller: emailPhone,

                      decoration: InputDecoration(
                        hintText: Mytext.emailInputSignUp,

                      border:         borderWidget ,
                      enabledBorder:  borderWidget ,
                      focusedBorder:  borderWidget ,
                      hintStyle: GoogleFonts.poppins(
                        fontSize:15,
                         color: AppColors.appColorHintInput
                      )
                      )
                 ),
               ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03),

                GestureDetector(
                  onTap: (){
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const EmailSendPag()));

                  },
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: AppColors.appThemeColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        Mytext.sendResetLink,
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


              ],
            ),
          ),
        ),

      ),
    );
  }
}
