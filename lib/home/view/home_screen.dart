import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sensex/home/controller/home_controller.dart';
import 'package:sensex/home/view/invest_item_view.dart';
import 'package:sensex/utils/color_helper.dart';
import 'package:sensex/utils/gap_helper.dart';
import 'package:sensex/utils/image_helper.dart';

import 'live_market_item_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(color: const Color(0xff171A3F)),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height * 0.47,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(topImage),
                      fit: BoxFit.cover,
                    ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0)
                  )
                ),
              ),
            ),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(profileImage, width: 64, height: 64,),
                                const HorizontalGap(gap: 10.0),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Text("Hey Pankaj",
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500
                                          ),),
                                        const HorizontalGap(gap: 6.0),
                                        Image.asset(hiImage, width: 24, height: 24,),
                                      ],
                                    ),
                                    const VerticalGap(gap: 4.0),
                                    const Text("Good Morning!",
                                      style: TextStyle(
                                          fontSize: 17.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500
                                      ),),
                                  ],
                                )
                              ],
                            ),
                            Image.asset(notifyImage, width: 52, height: 52,),
                          ],
                        ),
                      ),
                      const VerticalGap(gap: 8.0),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                              color: const Color(0xffF6F6F6).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12.0)
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("Insight of",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color(0xffF3D19E),
                                            fontWeight: FontWeight.w500
                                        ),),
                                      VerticalGap(gap: 4.0),
                                      Text("Your Networth",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500
                                        ),),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      const Text("\u{20B9} 34.87",
                                        style: TextStyle(
                                            fontSize: 28.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700
                                        ),),
                                      const HorizontalGap(gap: 10.0),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:[
                                          const Text("Lakhs",
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400
                                            ),),
                                          Row(
                                            children: const [
                                              Text("2.36%",
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Color(0xff18CB3F),
                                                    fontWeight: FontWeight.w400
                                                ),),
                                              Icon(Icons.arrow_drop_up_sharp, color: Color(0xff18CB3F),)
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const VerticalGap(gap: 20.0),
                              const LineBg(strokeWidth: 0.9, color: Colors.white),
                              const VerticalGap(gap: 20.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 30.0),
                                      child: Text("Track Your Networth in Real Time",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400
                                        ),),
                                    ),
                                  ),

                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
                                            Text("Asset",
                                              style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400
                                              ),),
                                            VerticalGap(gap: 4.0),
                                            Text("\u{20B9} 34.87 L",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Color(0xffF5CD7F),
                                                  fontWeight: FontWeight.w700
                                              ),),

                                          ],
                                        ),
                                        const HorizontalGap(gap: 10.0),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children:const [
                                            Text("Liablities",
                                              style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400
                                              ),),
                                            VerticalGap(gap: 4.0),
                                            Text("NA",
                                              style: TextStyle(
                                                  fontSize: 17.0,
                                                  color: Color(0xffFDA0A0),
                                                  fontWeight: FontWeight.w400
                                              ),),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const VerticalGap(gap: 20.0),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          padding: const EdgeInsets.all(14.0),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.23,
                          decoration: BoxDecoration(
                              color: const Color(0xffD9D9D9).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12.0)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("LIVE MARKET INDEX",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xffF3D19E),
                                    fontWeight: FontWeight.w700

                                ),),
                              // const VerticalGap(gap: 12.0),
                              SizedBox(
                                // width: Get.width,
                                height: Get.height * 0.17,
                                child: Obx(() => ListView.builder(
                                  physics: const ClampingScrollPhysics(),
                                  shrinkWrap: true, //just set this property
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _homeController.liveMarketData.length,
                                  itemBuilder: (BuildContext context, int index)
                                  => LiveMarketItemView(index: index,
                                      liveMarketIndex: _homeController.liveMarketData[index]),
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                      // const VerticalGap(gap: 20.0),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          // padding: const EdgeInsets.all(14.0),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.47,
                          decoration: BoxDecoration(
                              color: const Color(0xffD9D9D9).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(12.0)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Get.width,
                                height: 80,
                                padding: const EdgeInsets.all(14.0),
                                decoration: const BoxDecoration(
                                  color: bottomNavColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0)
                                  )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        const Text("INVESTMENT OVERVIEW",
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: Color(0xffF3D19E),
                                              fontWeight: FontWeight.w700

                                          ),),
                                        const VerticalGap(gap: 8.0),
                                        Row(
                                          children: const [
                                            Text("86 Lakhs",
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Color(0xffC6E6FF),
                                                  fontWeight: FontWeight.w500
                                              ),),
                                            HorizontalGap(gap: 12.0),
                                            Text("45k | 2.3%",
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Color(0xffFFFFFF),
                                                  fontWeight: FontWeight.w500
                                              ),),
                                            HorizontalGap(gap: 6.0),
                                            Icon(Icons.arrow_upward, color: Colors.greenAccent, size: 20,)
                                          ],
                                        )
                                      ],
                                    ),

                                    ElevatedButton(onPressed: (){}, style: const ButtonStyle(
                                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.black26)
                                    ), child: const Text("View",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: whiteColor,
                                          fontWeight: FontWeight.w700

                                      ),))
                                  ],
                                ),
                              ),
                              const VerticalGap(gap: 16),

                              SizedBox(
                                height: Get.height * 0.35,
                                child: Obx(() => GridView.builder(
                                  itemCount: _homeController.investmentData.length,
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: /*(orientation == Orientation.portrait) ? 2 :*/ 3,
                                  crossAxisSpacing: 0.0,
                                  mainAxisSpacing: 22.0),
                                  itemBuilder: (BuildContext context, int index) {
                                    return InvestItemView(index: index,
                                        investment: _homeController.investmentData[index]);
                                  },
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                      /*Container(
                        margin: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            image: DecorationImage(
                              image: AssetImage(referBGImage),
                              fit: BoxFit.cover,
                            )),
                        child: ,
                      ),*/
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                            padding: const EdgeInsets.all(14.0),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.23,
                            decoration: BoxDecoration(
                                color: const Color(0xffD9D9D9).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("REFER A FRIEND",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Color(0xffF3D19E),
                                            fontWeight: FontWeight.w700

                                        ),),
                                      const VerticalGap(gap: 8.0),
                                      const Text("SHARE A WORD WITH YOUR FRIEND AND EARN 500 WORTH OF GOLD.",
                                        style: TextStyle(
                                            fontSize: 13.0,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400
                                        ),),
                                      const VerticalGap(gap: 12.0),
                                      ElevatedButton(onPressed: (){}, child: const Text("Send Invite",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: whiteColor,
                                            fontWeight: FontWeight.w500
                                        ),)),
                                      const VerticalGap(gap: 12.0),
                                      const Text("*T&C Applied",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500
                                        ),),

                                    ],
                                  ),
                                ),
                                Expanded(child: Image.asset(referImage))
                              ],
                            )
                        ),
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
        bottomNavigationBar: bottomNavBar()
      ),
    );
  }

  Widget bottomNavBar() => Container(
    height: 80,
    decoration: const BoxDecoration(
      color: Color(0xff171A3F),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
    // color: Colors.transparent,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.person,size: 40, color: Colors.grey,),
            VerticalGap(gap: 4.0),
            Text("snapshot",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 13.0
              ),)
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(holdingImage, width: 40, height: 40,),
            const VerticalGap(gap: 4.0),
            const Text("holdings",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 13.0
              ),)
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(investmentImage, width: 40, height: 40,),
            const VerticalGap(gap: 4.0),
            const Text("investments",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontSize: 13.0
              ),)
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.person,size: 40, color: Colors.white,),
            VerticalGap(gap: 4.0),
            Text("profile",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 13.0
              ),)
          ],
        ),
      ],
    ),
  );
}
