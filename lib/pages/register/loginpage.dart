import 'package:figma_design2/material/colorclass.dart';
import 'package:figma_design2/material/strings.dart';
import 'package:figma_design2/pages/register/forget_page.dart';
import 'package:figma_design2/pages/register/singup.dart';
import 'package:figma_design2/widgetpage/border.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller/authController/sign_in_controller.dart';
import '../../controller/authController/sin_in_with_google_controller.dart';

  

class LoginPagState extends StatefulWidget {
  const LoginPagState({super.key});

  @override
  State<LoginPagState> createState() => _LoginPagStateState();
}

class _LoginPagStateState extends State<LoginPagState> {
//signInController ya SignInController class ka object hai
  SignInController signInController=Get.put(SignInController());


  final SignInWithGoogleController controller = Get.put(SignInWithGoogleController());




  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 21,left: 21),
          child: SingleChildScrollView(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.07),
                Text(
                  Mytext.signIn,
                  style: GoogleFonts.poppins(
                         fontSize: 28,
                         color: AppColors.appColorBlack  ,
                         fontWeight:FontWeight.bold
                      ),
                  ),
                   SizedBox(height: MediaQuery.of(context).size.height*0.006),
                  RichText(
                    text: TextSpan(
                    children: [
                      TextSpan(
                        text: Mytext.welComeBack,
                        style:GoogleFonts.poppins(
                        fontSize: 18,
                        color: AppColors.appColorBlack
                        ),
                      ),
                      TextSpan(
                        text: Mytext.trade,
                        style:GoogleFonts.poppins(
                         fontSize: 18,
                         color: AppColors.appThemeColor ,
                         fontWeight:FontWeight.w600
                      ),
                      )
                    ]
                  )),



                  SizedBox(height: MediaQuery.of(context).size.height*0.045),

                 SizedBox(
                  height: 56,
                   child: TextField(
                    controller: signInController.emailPhone,
                        decoration: InputDecoration(

                        hintText:Mytext.emailInput,
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
                 SizedBox(height: MediaQuery.of(context).size.height*0.015),
                 SizedBox(
                  height: 56,
                   child: TextField(
                    controller: signInController.password,

                        decoration: InputDecoration(
                          hintText: Mytext.passwordInput,

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
                 SizedBox(height: MediaQuery.of(context).size.height*0.025),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     GestureDetector
                      (
                        onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgetPage()));
                        },
                        child: Text(
                        Mytext.forget,
                        style: GoogleFonts.poppins(
                               fontSize:14,
                               color: AppColors.appColorForget,

                            ),


                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: MediaQuery.of(context).size.height*0.025),
                   GestureDetector(
                    onTap: (){
                      // ya fuction emeil password check kara ga sai hai ka nahe tha
                      //open kara ga navigator page
                      signInController.signInControllerButton();

                    },
                   child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: AppColors.appThemeColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                      Mytext.signIn,
                      style: GoogleFonts.poppins(
                         fontSize: 17,
                         color: Colors.white,
                      ),
                      ),
                    ),
                   ),
                 ),
                 SizedBox(height: MediaQuery.of(context).size.height*0.04),
                 Center(
                  child: Text(
                    Mytext.continueText,
                    style: GoogleFonts.poppins(
                      fontSize:14,
                         color: AppColors.appColorBlack
                    ),
                  ),
                 ),
                 SizedBox(height: MediaQuery.of(context).size.height*0.03),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      GestureDetector(
                        onTap: (){
                           controller.signInWithGoogle();
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width*0.1,
                          child:const  Image(
                            image:  AssetImage("assets/socialMediaIcon/GoogleIcon.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.1,
                        child:const Image(
                          image:  AssetImage("assets/socialMediaIcon/FacebookIcon.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.1,
                        child:const Image(
                          image:  AssetImage("assets/socialMediaIcon/InstagramIcon.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.1,
                        child:const Image(
                          image: AssetImage("assets/socialMediaIcon/twitterIcon.png"),
                          fit: BoxFit.fill,
                        ),
                      ),

                    ]
                ),
                 SizedBox(height: MediaQuery.of(context).size.height*0.025),
                 Center(
                   child: RichText(
                        text: TextSpan(
                        children: [
                          TextSpan(
                            text: Mytext.donHaveText,
                            style:GoogleFonts.poppins(
                            fontSize: 16,
                            color: AppColors.appColorBlack
                            ),
                          ),
                          TextSpan(
                            text: Mytext.singUpText,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                              },
                            style:GoogleFonts.poppins(
                             fontSize: 16,
                             color: AppColors.appThemeColor ,
                             fontWeight:FontWeight.w400
                          ),
                          )
                        ]
                      )),
                   ),


                SizedBox(height: MediaQuery.of(context).size.height*0.13),

                Center(
                  child: Text(
                    Mytext.singInBottomText,
                    style:GoogleFonts.poppins(
                           fontSize: 14,
                           fontWeight:FontWeight.w400
                        ),
                    ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}