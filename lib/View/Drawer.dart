import 'package:flutter/material.dart';
import 'package:oxy_boot/Styles/Color.dart';
class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: drawerColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 44.0,
                backgroundColor: bgWhite,
                backgroundImage: const AssetImage("assets/images/profile_img.png",),
              ),

              const SizedBox(height: 20.0,),

              Text("Hey, 👋",style: TextStyle(color: customGrey,fontFamily: "airbnb",fontSize: 20),),
              const Text("Alisson Becker",style: TextStyle(color: Colors.white,fontFamily: "airbnb",fontSize: 20),),
              const SizedBox(height: 40,),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/user_ic.png",width: 25,height: 25,),
                      const SizedBox(width: 10.0,),
                      const Text("Profile",style: TextStyle(color: Colors.white,fontFamily: "airbnb",fontSize: 18),),
                    ],
                  ),
                ),
              ),

              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/home_ic.png",width: 25,height: 25,),
                      const SizedBox(width: 10.0,),
                      const Text("Home Page",style: TextStyle(color: Colors.white,fontFamily: "airbnb",fontSize: 18),),
                    ],
                  ),
                ),
              ),

              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/my_cart.png",width: 25,height: 25,),
                      const SizedBox(width: 10.0,),
                      const Text("My Cart",style: TextStyle(color: Colors.white,fontFamily: "airbnb",fontSize: 18),),
                    ],
                  ),
                ),
              ),

              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/favourite_ic.png",width: 25,height: 25,),
                      const SizedBox(width: 10.0,),
                      const Text("Favorite",style: TextStyle(color: Colors.white,fontFamily: "airbnb",fontSize: 18),),
                    ],
                  ),
                ),
              ),

              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/order.png",width: 25,height: 25,),
                      const SizedBox(width: 10.0,),
                      const Text("Order",style: TextStyle(color: Colors.white,fontFamily: "airbnb",fontSize: 18),),
                    ],
                  ),
                ),
              ),


              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/notify_ic.png",width: 25,height: 25,),
                      const SizedBox(width: 10.0,),
                      const Text("Notification",style: TextStyle(color: Colors.white,fontFamily: "airbnb",fontSize: 18),),
                    ],
                  ),
                ),
              ),


              const Divider(height: 25,color: Colors.white,),



              InkWell(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/log_out.png",width: 25,height: 25,),
                      const SizedBox(width: 10.0,),
                      const Text("Sign Out",style: TextStyle(color: Colors.white,fontFamily: "airbnb",fontSize: 18),),
                    ],
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
