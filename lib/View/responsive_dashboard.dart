import 'package:bank_ui/View/custom_widget/list_tile.dart';
import 'package:bank_ui/View/custom_widget/my_buttons.dart';
import 'package:bank_ui/View/custom_widget/my_card.dart';
import 'package:bank_ui/View/payment_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class DashboardSec extends StatefulWidget {
  const DashboardSec({super.key}) ;

  @override
  State<DashboardSec> createState() => _DashboardSecState();
}

class _DashboardSecState extends State<DashboardSec> {
  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    final mediaQuery = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 23.0, top: 25.0,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Good Evening,",
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                        ),
                        Text(
                          "Micheal",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1.5),
                      ),
                      child: const Icon(
                        Icons.notifications_on_outlined,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: mediaQuery.size.height * 0.02,
              // ),
              Container(
                height: 200,
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: mediaQuery.size.width * 0.045, right: mediaQuery.size.width * 0.045,top: 8),
                      child: PageView(
                        controller: _controller,
                        children: const [
                          MyCard(
                            amount: '10,0000',
                            cardednumber: '4511 5487 **** ****',
                            cardeprovidername: 'VISA',
                            informname: 'Your Balance',
                            image: 'lib/res/assets/visa.png',
                          ),
                          MyCard(
                            amount: '20,0000',
                            cardednumber: '4511 5487 **** ****',
                            cardeprovidername: 'VISA',
                            informname: 'Your Balance',
                            image: 'lib/res/assets/visa.png',
                          ),
                          MyCard(
                            amount: '30,0000',
                            cardednumber: '4511 5487 **** ****',
                            cardeprovidername: 'VISA',
                            informname: 'Your Balance',
                            image: 'lib/res/assets/visa.png',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: mediaQuery.size.width * 0.70, top: mediaQuery.size.height * 0.03),
                      child: SmoothPageIndicator(controller: _controller, count: 3),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: mediaQuery.size.height * 0.02,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0,right:18.0,top: 18,bottom: 18 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => Get.to(const PaymentPage()),
                      child: const MyButtons(
                        name: 'Send',
                        iconimag: 'lib/res/assets/send.png',
                      ),
                    ),
                    SizedBox(
                      width: mediaQuery.size.width * 0.06,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const MyButtons(
                        name: 'Received',
                        iconimag: 'lib/res/assets/recieved.png',
                      ),
                    ),
                    SizedBox(
                      width: mediaQuery.size.width * 0.06,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const MyButtons(
                        name: 'Lock',
                        iconimag: 'lib/res/assets/lock.png',
                      ),
                    ),
                    SizedBox(
                      width: mediaQuery.size.width * 0.06,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const MyButtons(
                        name: 'Settings',
                        iconimag: 'lib/res/assets/settings.png',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Recent Transaction",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "See All",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
                        )),
                  ],
                ),
              ),
              SizedBox(height: mediaQuery.size.height * 0.015),
              const ListTiles(name: 'Spotify', date: '20-10-2023', iconimg: 'lib/res/assets/spotify.png', amount: '999'),
              SizedBox(height: mediaQuery.size.height * 0.0015),
              const ListTiles(name: 'Netflix', date: '20-10-2023', iconimg: 'lib/res/assets/netflix.png', amount: '699'),
              SizedBox(height: mediaQuery.size.height * 0.0015),
              const ListTiles(name: 'amazon', date: '20-10-2023', iconimg: 'lib/res/assets/social.png', amount: '589'),
              SizedBox(height: mediaQuery.size.height * 0.002),
              const ListTiles(name: 'YouTube', date: '20-10-2023', iconimg: 'lib/res/assets/youtube.png', amount: '512'),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          height: 65,
          width: 65,
          child: FloatingActionButton(
            onPressed: () {},
            shape: const CircleBorder(),
            child: const Icon(
              CupertinoIcons.qrcode,
              size: 31,
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          height: 70,
          color: CupertinoColors.systemGrey3,
          shape: const CircularNotchedRectangle(),
          child: Row(
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
              SizedBox(
                width: mediaQuery.size.width * 0.1,
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
      ),
    );
  }
}
