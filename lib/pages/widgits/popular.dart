import 'package:flutter/material.dart';

class PopularWidgits extends StatelessWidget {
   PopularWidgits({Key? key}) : super(key: key);
  List<String> popularItoms = ["https://t4.ftcdn.net/jpg/02/66/68/37/360_F_266683754_wzx9XxeNXKudct2Q3qwQf1PvVaQaKOf6.jpg",
    "https://us.123rf.com/450wm/kariphoto/kariphoto1803/kariphoto180300060/96898729-fresh-cauliflower-isolated-on-white-background.jpg?ver=6",
    "https://t3.ftcdn.net/jpg/00/93/87/58/360_F_93875874_u9pFhj8A6MNFchnUgNTAAAWnmIA4F4Y0.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9UIT2TRsPFCnFnsSC93HqDNn6pr_kq-0ycw&usqp=CAU",
    "https://cdn.shopify.com/s/files/1/0274/3481/articles/LYOFOOD-freeze-dried-organic-beetroot-powders-EU-01.jpg?v=1490710701",
    "https://t4.ftcdn.net/jpg/00/49/24/61/360_F_49246136_OpxT5feEEM9yEJvaWPLYcWJH8TKdKF6Y.jpg",
    "https://frecery.com/wp-content/uploads/2021/07/VG-CL-20.jpg",
    "https://us.123rf.com/450wm/atoss/atoss1805/atoss180500065/100908967-eggplant-isolated-on-white.jpg?ver=6",

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14.0,right: 14,bottom: 3,top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular",style: TextStyle(fontSize: 24,color: Colors.green,fontWeight: FontWeight.bold),),
              TextButton(onPressed: (){}, child: Text("see more...",style: TextStyle(color: Colors.black54),))

            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0 ; i < popularItoms.length ; i++)
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(2),
                height: 130,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      spreadRadius: 1,
                      color: Colors.grey,
                    ),
                  ]
                ),
                child: Image.network(popularItoms[i]),
              )
            ],
          ),
        )
      ],
    );
  }
}
