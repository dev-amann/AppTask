import 'package:flutter/material.dart';
import 'package:welcome/utils/assets/assets.dart';
import 'package:welcome/utils/dimens/dimensions.dart';
import 'package:welcome/utils/strings/custom_strings.dart';
import 'package:welcome/utils/styles/text_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime? currentBackPressTime;

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Press again to close the app"),
      ));
      return Future.value(false);
    }
    return Future.value(true);
  }

  void warning() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Press hardware back button to close the app"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 48.0,
        leading: InkWell(
          onTap: warning,
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
            size: Dimens.textSizeExtraLarge,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notification_add,
              color: Colors.black,
              size: Dimens.textSizeExtraLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: Dimens.textSizeExtraLarge,
            ),
          ),
        ],
      ),
      body: WillPopScope(
        onWillPop: onWillPop,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            vertical: Dimens.paddingSize * 2,
            horizontal: Dimens.paddingSize * 2,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Str.welcomeMessage,
                  style: extraLargeTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  Str.welcomeMessageDesc,
                  style: regulaTextStyle.copyWith(color: Colors.grey),
                ),
                SizedBox(height: Dimens.paddingSize * 3),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: Str.youHaveComp,
                          style: largeTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: '60%',
                              style: largeTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                              ),
                            ),
                            TextSpan(
                              text: Str.ofLearning,
                              style: largeTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(height: Dimens.paddingSize * 2),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    Images.roundCircle,
                    height: 160,
                    width: 160,
                  ),
                ),
                SizedBox(height: Dimens.paddingSize * 2),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Str.trendingCourses,
                        style: regulaTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        Str.seeAll,
                        style: regulaTextStyle.copyWith(
                          color: Colors.pink,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Dimens.paddingSize * 2),
                Container(
                  height: 400.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Dimens.paddingSize * 1.5),
                  ),
                  child: Card(
                    elevation: 10.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 180.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimens.paddingSize),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(Images.pictureThree))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Dimens.paddingSize),
                                child: ElevatedButton(
                                  child: Text(
                                    'hi',
                                    style: regulaTextStyle.copyWith(
                                        color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Dimens.paddingSize),
                                child: ElevatedButton(
                                  child: Text(
                                    'en',
                                    style: regulaTextStyle.copyWith(
                                        color: Colors.white),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(Dimens.paddingSize * 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Str.myPhone,
                                style: regulaTextStyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: Dimens.textSizeDefault,
                                    width: Dimens.textSizeDefault,
                                    color: Colors.pink,
                                  ),
                                  SizedBox(width: Dimens.paddingSize),
                                  Text(
                                    Str.beginner,
                                    style: regulaTextStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Dimens.paddingSize * 2,
                            vertical: Dimens.paddingSize,
                          ),
                          child: Text(
                            Str.myPhoneDesc,
                            style: regulaTextStyle.copyWith(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Row(
                            children: [
                              bottomIconWidget(Images.books, 4, Str.chapter),
                              bottomIconWidget(Images.checklist, 3, Str.topics),
                              bottomIconWidget(
                                  Images.learning, 0, Str.flexible),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: Dimens.paddingSize * 2),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Str.coursesForYou,
                        style: regulaTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Dimens.paddingSize * 2),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 240.0,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          height: 240.0,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimens.paddingSize * 1.5),
                          ),
                          child: Card(
                            elevation: 5.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 140.0,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimens.paddingSize),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        index % 2 == 0
                                            ? Images.pictureOne
                                            : Images.pictureTwo,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Dimens.paddingSize * 2,
                                    vertical: Dimens.paddingSize,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        index % 2 == 0
                                            ? Str.introduction
                                            : Str.explore,
                                        style: regulaTextStyle.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                          height: Dimens.paddingSize * 1.5),
                                      Text(
                                        '4 ' + Str.chapters,
                                        style: regulaTextStyle.copyWith(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: Dimens.paddingSize * 2),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Str.courseInProg,
                        style: regulaTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Dimens.paddingSize),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 240.0,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          height: 240.0,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimens.paddingSize * 1.5),
                          ),
                          child: Card(
                            elevation: 10.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 140.0,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimens.paddingSize),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        index % 2 == 0
                                            ? Images.pictureOne
                                            : Images.pictureTwo,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Dimens.paddingSize * 2,
                                    vertical: Dimens.paddingSize,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        index % 2 == 0
                                            ? Str.introduction
                                            : Str.explore,
                                        style: regulaTextStyle.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                          height: Dimens.paddingSize * 1.5),
                                      Text(
                                        '4 ' + Str.chapters,
                                        style: regulaTextStyle.copyWith(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomIconWidget(String image, int count, String title) {
    return Padding(
      padding: EdgeInsets.only(
          left: Dimens.paddingSize * 0.2, top: Dimens.paddingSize),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipOval(
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(Dimens.paddingSize),
              child: Image.asset(
                image,
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                count != 0
                    ? Text(
                        count.toString(),
                        style: largeTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    : const SizedBox(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.13,
                  child: Text(
                    title,
                    maxLines: 2,
                    style: smallTextStyle.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
