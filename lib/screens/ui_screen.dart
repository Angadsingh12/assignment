import 'package:assignment/utils/payment_button.dart';
import 'package:flutter/material.dart';

import '../utils/user_card.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({super.key});

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  @override
  Widget build(BuildContext context) {
    String? username = 'Kaiya';
    String? year = '29/09/0001';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            toolbarHeight: 120,
            leading: const Icon(
              Icons.menu,
              size: 35,
              color: Colors.white70,
            ),
            title: const Text(
              "Good evening \nDevon",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            children: [
              Container(
                height: 377,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Paymentbutton(
                            buttonColor: Colors.white,
                            leftmargin: 20,
                            rightmargin: 0,
                            buttonTextColor: Colors.black,
                            buttonText: 'Send',
                          ),
                        ),
                        Expanded(
                          child: Paymentbutton(
                            buttonColor: Colors.black,
                            leftmargin: 0,
                            rightmargin: 20,
                            buttonTextColor: Colors.white,
                            buttonText: 'Request',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 12.0, left: 16),
                      child: Row(
                        children: [
                          Text(
                            "HISTORY",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'View all',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: 4,

                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,mainAxisSpacing: 0, // Add spacing between cards vertically
                            crossAxisSpacing: 0.0,
                            ),
                          itemBuilder: (context, index) {
                            return UserCard(username: username, year: year);
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
