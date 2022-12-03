import 'package:flutter/material.dart';
import 'package:grocery/pages/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: NetworkImage("https://www.eatthis.com/wp-content/uploads/sites/4//media/images/ext/574165959/supermarket-tricks.jpg?quality=82&strip=1"),
              height: 350,),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text("Buy Fresh Groceries",
                style: TextStyle(color:  Colors.green,
                fontSize: 35,
                  fontWeight: FontWeight.bold
                ),

              ),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
              },
              child: Ink(
                padding: EdgeInsets.symmetric(horizontal: 80,  vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green,
                ),
                child: Text("Get Started",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),

              ),
            )
          ],
        ),
      ),
    );
  }
}
