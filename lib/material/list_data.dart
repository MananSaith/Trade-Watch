import 'package:figma_design2/material/strings.dart';

import '../pages/navigator_page/lockerFloder/ForumSurveyFloder/forum_survey_page.dart';
import '../pages/navigator_page/lockerFloder/WatchListFolder/watch_list_page.dart';
List<Map> listCatogories=[{
  "lable":Mytext.stock,
  "pik":"assets/homePagePiks/Stocks.png",
  "navigate":WatchListPage()
},
  {
    "lable":Mytext.crypto,
    "pik":"assets/homePagePiks/crypto.png",
    "navigate":WatchListPage()
  },
  {
    "lable":Mytext.commodity,
    "pik":"assets/homePagePiks/commondity.png",
    "navigate":WatchListPage()
  },
  {
    "lable":Mytext.furomSurvey,
    "pik":"assets/homePagePiks/survey.png",
    "navigate":ForumSurveyPage()
  },

];