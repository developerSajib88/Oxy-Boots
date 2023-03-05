import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:oxy_boot/Styles/FontStyles.dart';



import '../Styles/Color.dart';
import 'Brands.dart';
import 'ItemView.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int NavigationIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: bgWhite,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: Column(
            children: [

              Container(
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Bounce(
                        onPressed: () {
                          
                        },
                        duration: const Duration(milliseconds: 500),
                        child: Image.asset(
                          "assets/icons/menu_ic.png",
                          width: 44,
                          height: 44,
                        )),


                    const Spacer(),


                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        Text(
                          "Store location",
                          style: textStyle1,
                        ),


                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/location_ic.png",
                              width: 14,
                              height: 14.0,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text("Mondolibug, Sylhet", style: textStyle2),
                          ],
                        )
                      ],
                    ),


                    const Spacer(),


                    Bounce(
                      onPressed: () {},
                      duration: const Duration(milliseconds: 500),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/icons/cart_ic.png",
                            width: 44.0,
                            height: 44.0,
                          ),

                          Positioned(
                            right: 0,
                            top: 5,
                            child: Container(
                              width: 10.0,
                              height: 10.0,
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(100.0)
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),


              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      const SizedBox(
                        height: 20.0,
                      ),


                      SizedBox(
                          width: double.infinity,
                          height: 48.0,
                          child: TextFormField(
                            cursorColor: customBlue,
                            cursorWidth: 2.5,
                            style: textStyle1,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.zero,
                              hintText: "Looking for shoes",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset("assets/icons/search_ic.png"),
                              ),
                              hintStyle: textStyle1,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ),
                          )),


                      const SizedBox(height: 20.0,),


                       const SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child: Brands(),
                      ),

                      const SizedBox(height: 10.0,),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Popular Shows",style: textStyle4,),
                          TextButton(
                              onPressed: (){},
                              child: Text("See all",style: textStyle5,)
                          )
                        ],
                      ),


                      SizedBox(
                        height: 200.0,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context,index){
                              return item_view(currentIndex: index,);
                            }
                        ),
                      ),


                      const SizedBox(height: 10.0,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("New Arrivals",style: textStyle4,),
                          TextButton(
                              onPressed: (){},
                              child: Text("See all",style: textStyle5,)
                          )
                        ],
                      ),



                      Column(
                        children: [

                          for(int i = 0; i<5; i++)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Container(
                                width: double.infinity,
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  color: Colors.white
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("BEST CHOISE",style: textStyle6,),
                                              const SizedBox(height: 5,),
                                              Text("Nike Air Jordan",style: textStyle4,),
                                              const SizedBox(height: 10,),
                                              Text("\$ 849.69",style: textStyle4,),
                                            ],
                                          ),
                                        )
                                    ),

                                    Expanded(
                                        child: Image.asset("assets/shows/img1.png",width: double.infinity,height: double.infinity,fit: BoxFit.cover,)
                                    ),

                                  ],
                                ),
                              ),
                            )

                        ],
                      )




                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),



      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: SizedBox(
          width: 56.0,
          height: 56.0,
          child: FloatingActionButton(
            onPressed: () {  },
            child: Image.asset("assets/icons/bag_ic.png",width: 20.0,height: 20.0,),
            backgroundColor: customBlue,
            elevation: 10,



          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,



      bottomNavigationBar: Container(
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bottomnav_bg.png"),
            fit: BoxFit.fitWidth
          )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const SizedBox(height: 30.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                InkWell(
                  onTap: (){
                    NavigationIndex = 0;
                    setState(() {});
                  },
                  child: Image.asset("assets/icons/home_ic.png",width: 25,height: 25, color: NavigationIndex ==0? customBlue: customGrey),
                ),

                InkWell(
                  onTap: (){
                    NavigationIndex = 1;
                    setState(() {});
                  },
                  child: Image.asset("assets/icons/favourite_ic.png",width: 25,height: 25,color: NavigationIndex ==1? customBlue: customGrey),
                ),

                const SizedBox(width: 60.0,),


                InkWell(
                  onTap: (){
                    NavigationIndex = 2;
                    setState(() {});
                  },
                  child: Image.asset("assets/icons/notify_ic.png",width: 25,height: 25,color: NavigationIndex ==2? customBlue: customGrey),
                ),


                InkWell(
                  onTap: (){
                    NavigationIndex = 3;
                    setState(() {});
                  },
                  child: Image.asset("assets/icons/user_ic.png",width: 25,height: 25,color: NavigationIndex ==3? customBlue: customGrey),
                ),


              ],
            ),
          ],
        ),

      ),

    );
  }
}

