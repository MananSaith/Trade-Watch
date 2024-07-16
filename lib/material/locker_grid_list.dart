import 'package:figma_design2/material/strings.dart';

import '../pages/navigator_page/lockerFloder/BrokerFolder/broker_page.dart';
import '../pages/navigator_page/lockerFloder/CompareFolder/compare_page.dart';
import '../pages/navigator_page/lockerFloder/ForumSurveyFloder/forum_survey_page.dart';
import '../pages/navigator_page/lockerFloder/VideoFolder/video_page.dart';
import '../pages/navigator_page/lockerFloder/WatchListFolder/watch_list_page.dart';
import '../pages/navigator_page/lockerFloder/newsfloder/newspage.dart';

List<Map> lockerGridData=[
  {
  "lable":Mytext.news,
    "image":"assets/lockerPagePiks/news.png",
    "navigatePage":const NewsPage()
  }
  ,{
    "lable":Mytext.watchList,
    "image":"assets/lockerPagePiks/watchlist.png",
    "navigatePage": const WatchListPage()
  }
  ,{
    "lable":Mytext.compare,
    "image":"assets/lockerPagePiks/compare.png",
    "navigatePage":const ComparePage()
  }
  ,{
    "lable":Mytext.video,
    "image":"assets/lockerPagePiks/video.png",
    "navigatePage": const VideoPage()
  }
  ,{
    "lable":Mytext.furomSurvey,
    "image":"assets/lockerPagePiks/forumSurvey.png",
    "navigatePage": const ForumSurveyPage()
  }
  ,{
    "lable":Mytext.broker,
    "image":"assets/lockerPagePiks/brokers.png",
    "navigatePage":const BrokerPage()
  }
];