import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../material/colorclass.dart';
class slide2 extends StatefulWidget {
  const slide2({super.key});

  @override
  State<slide2> createState() => _slide2State();
}

class _slide2State extends State<slide2> {
  var isFavorite=false.obs;
  var isShare=false.obs;
  var isDislike=false.obs;
  @override
  Widget build(BuildContext context) {
    final heightSet =MediaQuery.of(context).size.height;
    final widthSet =MediaQuery.of(context).size.width;
    return  Column(
      children: [
        Image.asset("assets/homePagePiks/slide2.png"),
        Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
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
        )
      ],
    );
  }
}
