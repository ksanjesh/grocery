import 'package:flutter/material.dart';

class ItomsWidgits extends StatelessWidget {
  const ItomsWidgits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14.0,right: 14,bottom: 3,top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Top",style: TextStyle(fontSize: 24,color: Colors.green,fontWeight: FontWeight.bold),),
              TextButton(onPressed: (){}, child: Text("see more...",style: TextStyle(color: Colors.black54),))

            ],
          ),
        ),
        
      ],
    );
  }
}
