import 'package:flutter/material.dart';
import 'package:flutter_web_assignment/helpers/helpers.dart';
import 'package:flutter_web_assignment/widgets/page2_widget.dart';
import 'package:flutter_web_assignment/widgets/text_field_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final size = mediaSize(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height,
                width: double.infinity,
                color: Color.fromRGBO(29, 29, 29, 1),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(kImagePath + 'menu.png', width: 20),
                          Row(
                            children: [
                              Image.asset(kLogoPath + 'logo_small.png',
                                  width: 40),
                              SizedBox(width: 10),
                              Text('DOMINEUM',
                                  style: kTextTheme(context)
                                      .headline4!
                                      .copyWith(color: Colors.white))
                            ],
                          ),
                          Container(
                            width: 140,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Center(
                              child: Text('GET STARTED',
                                  style: kTextTheme(context)
                                      .overline!
                                      .copyWith(color: Colors.white)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 150),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(kLogoPath + 'logo_large.png',
                              width: size.width / 4),
                          SizedBox(width: 40),
                          Container(
                            width: size.width / 3,
                            height: size.height / 2.5,
                            child: Column(
                              children: [
                                Text(
                                  'VERIFICATION MADE EASY',
                                  style: kTextTheme(context)
                                      .headline2!
                                      .copyWith(color: Colors.white),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'DOMINEUM CREDENTIAL VERIFICATION SYSTEM IS A 3 SIDED MARKETPLACE DESIGNED TO BRIDGE THE ONLINE AND OFFLINE WORLDS FOR SHARING VERIFIABLE DOCUMENTS AND CREDENTIALS BETWEEN ISSUING INSTITUTIONS, BUSINESSES/INDIVIDUALS AND 3RD PARTY VERIFIERS.',
                                  style: kTextTheme(context)
                                      .overline!
                                      .copyWith(color: Colors.white),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Image.asset(kImagePath + 'app_store.png',
                                        width: 100),
                                    Image.asset(kImagePath + 'play_store.png',
                                        width: 130)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 60, top: 150),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white),
                          ),
                          child: Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: size.height,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      kImagePath + 'bg_image2.png',
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 80, horizontal: 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('PROFILE TYPES',
                              style: kTextTheme(context)
                                  .headline4!
                                  .copyWith(color: Colors.black)),
                          SizedBox(height: 80),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Page2Widget(
                                  size: size,
                                  img: 'individual.png',
                                  text: 'BUSINESS/ INDIVIDUAL USER'),
                              Page2Widget(
                                  size: size,
                                  img: 'issuing.png',
                                  text: 'BUSINESS ISSUING INSTITUTION'),
                              Page2Widget(
                                  size: size,
                                  img: 'third_party.png',
                                  text: 'BUSINESS 3RD PARTY VERIFIER')
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Stack(children: [
                Container(
                  height: size.height,
                  width: double.infinity,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: Image.asset(
                    kImagePath + 'mobiles.png',
                    width: size.width / 1.5,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.only(right: 20, top: 250),
                    color: Colors.transparent,
                    width: size.width / 2.5,
                    height: size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'DOWNLOAD THE APP NOW!',
                          style: kTextTheme(context)
                              .headline4!
                              .copyWith(color: Colors.black),
                        ),
                        SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 120),
                          child: Row(
                            children: [
                              Image.asset(kImagePath + 'app_store_white.png',
                                  width: 100),
                              Image.asset(kImagePath + 'play_store_white.png',
                                  width: 130)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
              Container(
                height: size.height,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(kImagePath + 'bg_image4.png'),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        color: Colors.transparent,
                        width: size.width / 2.5,
                        height: size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'CONTACT US',
                              style: kTextTheme(context)
                                  .headline4!
                                  .copyWith(color: Colors.black),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Drop us a message',
                              style: kTextTheme(context)
                                  .bodyText2!
                                  .copyWith(color: Colors.grey[700]),
                            ),
                            SizedBox(height: 50),
                            TextFieldWidget(
                              size: size,
                              height: 40,
                              text: 'Name',
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFieldWidget(
                              size: size,
                              height: 40,
                              text: 'E-mail',
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFieldWidget(
                              size: size,
                              height: 120,
                              text: 'Message',
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              height: 30,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.black)),
                              child: Center(
                                child: Text(
                                  'Send',
                                  style: kTextTheme(context).subtitle2,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 20),
                              child: Row(
                                children: [
                                  Image.asset(kLogoPath + 'instagram.png'),
                                  SizedBox(width: 20),
                                  Image.asset(kLogoPath + 'facebook.png'),
                                  SizedBox(width: 20),
                                  Image.asset(kLogoPath + 'twitter.png')
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 20),
                              child: Row(
                                children: [
                                  Text(
                                    'HOME',
                                    style: kTextTheme(context).subtitle2,
                                  ),
                                  SizedBox(width: 40),
                                  Text(
                                    'ABOUT',
                                    style: kTextTheme(context).subtitle2,
                                  ),
                                  SizedBox(width: 40),
                                  Text(
                                    'DOWNLOAD THE APP',
                                    style: kTextTheme(context).subtitle2,
                                  ),
                                  SizedBox(width: 40),
                                  Text(
                                    'CONTACT',
                                    style: kTextTheme(context).subtitle2,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              height: double.infinity,
                              color: Colors.black,
                              child: Center(
                                  child: Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                                size: 18,
                              )),
                            )
                          ],
                        ),
                      ),
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
