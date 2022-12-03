import 'package:flutter/material.dart';
import 'package:grocery/pages/widgits/categris.dart';
import 'package:grocery/pages/widgits/itoms.dart';
import 'package:grocery/pages/widgits/popular.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.green,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15,right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu,color: Colors.white,),
                Container(
                  padding : EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 2,
                        )
                      ]

                    ),
                    child: InkWell(
                      onTap: (){},
                        child: Icon(Icons.shopping_cart_outlined,color: Colors.white,)))
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                Text("What do you want to Buy ?",style: TextStyle(color: Colors.white,fontSize: 20),)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Icon(Icons.search_rounded),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 270,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "search here...",
                      border: InputBorder.none
                    ),

                  ),
                ),
                Icon(Icons.filter_list)
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40)
              ),
            ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryWidgit(),
                PopularWidgits(),
                ItomsWidgits(),
              ],
            ),

          )
        ],
      ),
    ));
  }
}
