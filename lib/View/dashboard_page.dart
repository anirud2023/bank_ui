import 'package:bank_ui/View/payment_page.dart';
import 'package:bank_ui/View/list_tile.dart';
import 'package:bank_ui/View/my_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'my_card.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 13.0, top: 15.0),
                child: SafeArea(
                  child: Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Good Evening,",
                              style: TextStyle(
                                color: Colors.blueGrey,
                              )),
                          Text("Micheal",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30))
                        ],
                      ),
                      const SizedBox(
                        width: 220,
                      ),
                      Container(
                        width: 40.0,
                        height: 40.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 1.5)),
                        child: const Icon(
                          Icons.notifications_on_outlined,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: PageView(
                      controller: _controller,
                      children: const [
                        MyCard(
                          amount: '10,0000',
                          cardednumber: '4511 5487 **** ****',
                          cardeprovidername: 'VISA',
                          informname: 'Your Balance',
                          image: 'lib/image/assets/visa.png',
                        ),
                        MyCard(
                          amount: '20,0000',
                          cardednumber: '4511 5487 **** ****',
                          cardeprovidername: 'VISA',
                          informname: 'Your Balance',
                          image: 'lib/image/assets/visa.png',
                        ),
                        MyCard(
                          amount: '30,0000',
                          cardednumber: '4511 5487 **** ****',
                          cardeprovidername: 'VISA',
                          informname: 'Your Balance',
                          image: 'lib/image/assets/visa.png',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 300.0, top: 20.0),
                    child: SmoothPageIndicator(controller: _controller, count: 3),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () =>Get.to(const PaymentPage()),
                      child: const MyButtons(
                        name: 'Send',
                        iconimag: 'lib/image/assets/Untitled design.png',
                      )),
                  const SizedBox(
                    width: 25.0,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const MyButtons(
                        name: 'Received',
                        iconimag: 'lib/image/assets/Untitled design (1).png',
                      )),
                  const SizedBox(
                    width: 25.0,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const MyButtons(
                        name: 'Lock',
                        iconimag: 'lib/image/assets/lock.png',
                      )),
                  const SizedBox(
                    width: 25.0,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const MyButtons(
                        name: 'Settings',
                        iconimag: 'lib/image/assets/settings.png',
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  const Text(
                    "Recent Transaction",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(width: 130.0,),
                  GestureDetector(
                    onTap: () {},
                    child:const Text("See All",style: TextStyle(fontSize:15,fontWeight:FontWeight.bold,color: Colors.blue),)
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15.0,),
            const ListTiles(name: 'Spotify', date: '20-10-2023', iconimg: 'lib/image/assets/spotify.png', amount: '999'),
            const SizedBox(height: 0.8,),
            const ListTiles(name: 'Netflix', date: '20-10-2023', iconimg: 'lib/image/assets/netflix.png', amount: '699'),
            const SizedBox(height: 0.8,),
            const ListTiles(name: 'amazon', date: '20-10-2023', iconimg: 'lib/image/assets/social.png', amount: '589'),
            const SizedBox(height: 2.0,),
            const ListTiles(name: 'YouTube', date: '20-10-2023', iconimg: 'lib/image/assets/youtube.png', amount: '512'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height:65,
        width: 65 ,
        child: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          child:  const Icon(
            CupertinoIcons.qrcode,
            size: 31,
          ),
        ),
      ),
        bottomNavigationBar:BottomAppBar(
          notchMargin: 10.0,
          height: 70,
          color: CupertinoColors.systemGrey3,
          shape: const CircularNotchedRectangle(),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.house_alt_fill,
                  size: 32,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.arrow_right_arrow_left,
                  size: 32,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.credit_card_outlined,
                  size: 32,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_circle_outlined,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
