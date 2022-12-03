import 'package:flutter/material.dart';

class CategoryWidgit extends StatelessWidget {
   CategoryWidgit({Key? key}) : super(key: key);

  List<String> fruits =["https://www.kindpng.com/picc/m/376-3767041_orange-hd-png-transparent-orange-hd-single-fruits.png",
    "https://img.freepik.com/premium-photo/red-apple-with-green-leaf-isolated-white_80510-518.jpg?w=2000",
    "https://5.imimg.com/data5/VY/QT/MY-51857835/banana-fruit-500x500.jpg",
    "https://thumbs.dreamstime.com/b/single-watermelon-triangular-slice-isolated-white-background-as-package-design-element-78363100.jpg",
    "https://as2.ftcdn.net/v2/jpg/01/39/74/33/1000_F_139743396_fw67GJkSpb1QthswSiqPvhX2AwycWR52.jpg",
    "https://i.pinimg.com/736x/90/df/6c/90df6c6bca4aebeb93fe37c7b9985047--vegetables-clipart.jpg",
    "https://www.pngitem.com/pimgs/m/3-36376_pineapple-png-photo-pineapple-meaning-in-urdu-transparent.png",
    "https://i.pinimg.com/originals/81/6d/cc/816dcc925a14ec91bc2258b883090c93.png",
  ];
  List<String> fruitsname =["orange","apple","banana","watermelon","gwabha","kiwi", "ananas","stoberry",];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14.0,right: 14,bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Categoris",style: TextStyle(fontSize: 24,color: Colors.green,fontWeight: FontWeight.bold),),
              TextButton(onPressed: (){}, child: Text("see more...",style: TextStyle(color: Colors.black54),))
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(

            children: [
              for(int i = 0 ; i < fruits.length ; i++)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green,
                      blurRadius: 6,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(fruits[i],
                      height: 50,
                      width: 50,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(fruitsname[i],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
