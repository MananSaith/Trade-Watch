// Padding(
// padding:const EdgeInsets.only(left: 21,right: 21),
//
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// SizedBox(height: heightSet*0.03),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// IconButton(
// onPressed: (){
// Get.back();
// },
// icon:Icon(Icons.arrow_back_outlined,size: 30,color: AppColors.appColorBlack,)
// ),
// IconButton(
// onPressed: (){
//
// },
// icon: Image.asset("assets/iconsFigma/IconSearch.png",width: widthSet*0.08,)
// )
// ],
// ),
//
// Expanded(
// child: SizedBox(
// width: widthSet,
// height: heightSet,
// child: ContainedTabBarView(
// tabBarProperties: TabBarProperties(
// indicatorColor: AppColors.appPlus,
// alignment: TabBarAlignment.start,
// ),
// tabs: [
// Text(Mytext.furom,
// style: GoogleFonts.poppins(
// fontSize: 24,
// color: AppColors.appColorBlack,
// fontWeight:FontWeight.w700
// ),
// ),
// Text(Mytext.survey,
// style: GoogleFonts.poppins(
// fontSize: 24,
// color: AppColors.appColorBlack,
// fontWeight:FontWeight.w700
// ),
// ),
// ],
// views: [
// FuromPage(),
// SurveyPage(),
// ],
// ),
// ),
// ),
// ],
// ),
// ),