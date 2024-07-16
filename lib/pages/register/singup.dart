import 'package:country_code_picker/country_code_picker.dart';
import 'package:figma_design2/material/strings.dart';
import 'package:figma_design2/pages/register/verify_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller/authController/signup_controller.dart';
import '../../controller/authController/sin_in_with_google_controller.dart';
import '../../material/colorclass.dart';
import '../../widgetpage/border.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isCheck=false;
  SignupController signupController = Get.put(SignupController());

  final SignInWithGoogleController controller = Get.put(SignInWithGoogleController());

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
                  Mytext.singUpText,
                  style: GoogleFonts.poppins(
                         fontSize: 28,
                      color: AppColors.appColorBlack,
                         fontWeight:FontWeight.w600
                      ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.006),
                Text(
                  Mytext.letsText,
                  style: GoogleFonts.poppins(
                         fontSize: 18,
                    color: AppColors.appColorBlack,
                      ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.015),
                  Center(
                    child: Text(
                      "${Mytext.singUpText} with",
                      style: GoogleFonts.poppins(
                         fontSize: 18,
                          color: AppColors.appColorBlack,
                         fontWeight:FontWeight.w500
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
                       image: AssetImage("assets/socialMediaIcon/FacebookIcon.png"),
                       fit: BoxFit.fill,
                     ),
                   ),
                   SizedBox(
                     width: MediaQuery.of(context).size.width*0.1,
                     child:const Image(
                       image:AssetImage("assets/socialMediaIcon/InstagramIcon.png"),
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
               SizedBox(height: MediaQuery.of(context).size.height*0.015),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Expanded(
                     child: Divider(
                       color: AppColors.appColorDivider,
                       thickness: 1.0,
                       height: 20.0,
                       indent: 20.0,
                       endIndent: 20.0,
                     ),
                   ),
                    Text("Or",
                     style: GoogleFonts.poppins(
                         fontSize: 18,
                         color: AppColors.appColorHintInput,
                         fontWeight:FontWeight.w400
                     ),
                   ),
                   Expanded(
                     child: Divider(
                       color: AppColors.appColorDivider,
                       thickness: 1.0,
                       height: 20.0,
                       indent: 20.0,
                       endIndent: 20.0,
                     ),
                   ),
                 ],
               ),
               SizedBox(height: MediaQuery.of(context).size.height*0.045),
        
               SizedBox(
                 height: 56,
                 child: TextField(
                     controller: signupController.firstname,
                     decoration: InputDecoration(
        
                         hintText:Mytext.firstName,
                         border:         borderWidget ,
                         enabledBorder:  borderWidget ,
                         focusedBorder:  borderWidget ,
                         hintStyle: GoogleFonts.poppins(
                             fontSize:15,
                             fontWeight: FontWeight.w400,
                             color: AppColors.appColorHintInput
                         )
                     )
                 ),
               ),
               SizedBox(height: MediaQuery.of(context).size.height*0.015),
               SizedBox(
                 height: 56,
                 child: TextField(
                     controller: signupController.lastName,
                     decoration: InputDecoration(

                         hintText:Mytext.lastName,
                         border:         borderWidget ,
                         enabledBorder:  borderWidget ,
                         focusedBorder:  borderWidget ,
                         hintStyle: GoogleFonts.poppins(
                             fontSize:15,
                             fontWeight: FontWeight.w400,
                             color: AppColors.appColorHintInput
                         )
                     )
                 ),
               ),
               SizedBox(height: MediaQuery.of(context).size.height*0.015),
               SizedBox(
                 height: 56,
                 child: TextField(
                     controller: signupController.email,
                     decoration: InputDecoration(

                         hintText:Mytext.emailInputSignUp,
                         border:         borderWidget ,
                         enabledBorder:  borderWidget ,
                         focusedBorder:  borderWidget ,
                         hintStyle: GoogleFonts.poppins(
                             fontSize:15,
                             fontWeight: FontWeight.w400,
                             color: AppColors.appColorHintInput
                         )
                     )
                 ),
               ),
               SizedBox(height: MediaQuery.of(context).size.height*0.015),
               SizedBox(
                 height: 56,
                 child: TextField(
                     controller: signupController.password,
                     // style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                     decoration: InputDecoration(
                         hintText: Mytext.passwordInput,
        
                         border:         borderWidget ,
                         enabledBorder:  borderWidget ,
                         focusedBorder:  borderWidget ,
                         hintStyle: GoogleFonts.poppins(
                             fontSize:15,
                             fontWeight: FontWeight.w400,
                             color: AppColors.appColorHintInput
                         )
                     )
                 ),
               ),
               SizedBox(height: MediaQuery.of(context).size.height*0.015),
               SizedBox(
                 height: 56,
                 child: TextField(
                     controller: signupController.confirmPassword,
                     // style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                     decoration: InputDecoration(
                         hintText: Mytext.confirmPasswordInput,

                         border:         borderWidget ,
                         enabledBorder:  borderWidget ,
                         focusedBorder:  borderWidget ,
                         hintStyle: GoogleFonts.poppins(
                             fontSize:15,
                             fontWeight: FontWeight.w400,
                             color: AppColors.appColorHintInput
                         )
                     )
                 ),
               ),
               SizedBox(height: MediaQuery.of(context).size.height*0.025),
               Text(
                 Mytext.verifyText,
                 style: GoogleFonts.poppins(
                     fontSize: 14,
                     color: AppColors.appColorVerify,
        
                 ),
               ),
               SizedBox(height: MediaQuery.of(context).size.height*0.015),
               SizedBox(
                 height: 56,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
        
                       Container(
                         decoration: containerDecoration,
                         child: CountryCodePicker(
                           initialSelection: "PKR",
                           favorite: const ['+92','FR'],
                           showCountryOnly: false,
                           showOnlyCountryWhenClosed: false,
                           showFlag: false,
                           textStyle: TextStyle(
                           fontSize: 18,
                             color: AppColors.appColorHintInput,
                             fontWeight: FontWeight.w300
                         ),
        
                         ),
                       ),
        
                       SizedBox(width: MediaQuery.sizeOf(context).width*0.02),
                       Expanded(
                         //width: MediaQuery.sizeOf(context).width*0.63,
                         child: TextField(
                             controller: signupController.phone,
                             // style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                             decoration: InputDecoration(
        
                                 hintText:Mytext.phoneText,
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
        
                   ],
                 ),
               ),
               SizedBox(height: MediaQuery.of(context).size.height*0.025),
               Text(
                 Mytext.optional,
                 style: GoogleFonts.poppins(
                   fontSize: 14,
                   fontWeight:FontWeight.w500,
                   color: AppColors.appColorBlack,
                 ),
               ),
               SizedBox(height: MediaQuery.of(context).size.height*0.015),
               SizedBox(
                 height: 56,
                 child: TextField(
                     controller: signupController.countryCode,
                     // style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                     decoration: InputDecoration(
        
                         hintText:Mytext.rCode,
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
        
                 children: [
                   Checkbox(value: isCheck,
                       onChanged: (bool? newValue){
                     setState(() {
                       isCheck=newValue!;
                     });
        
                       },
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(6.0), // Set border radius to match the container's border radius
                     ),
                     side: BorderSide(
                       color: AppColors.appColorHintInput,
                     ),
                   ),
                   SizedBox(width: MediaQuery.sizeOf(context).width*0.02),
                   Text(
                     Mytext.checkText,
                     style: GoogleFonts.poppins(
                       fontSize: 14,
                       color: AppColors.appColorVerify,
        
                     ),
                   ),
        
        
                 ],
        
               ),
               SizedBox(height: MediaQuery.of(context).size.height*0.025),
        
        
               GestureDetector(
                 onTap: (){
                   signupController.signupControllerButton();
                 // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const VerifyPage()));
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
               SizedBox(height: MediaQuery.of(context).size.height*0.025),
             ], 
            ),
          ),
          ),
      ),
    );
  }
}