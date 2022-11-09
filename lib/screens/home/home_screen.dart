import 'package:flutter/material.dart';
import 'package:telus_app/colors.dart';
import 'package:telus_app/screens/home/components/app_icon.dart';
import 'package:telus_app/screens/home/components/speak_section.dart';
import 'package:telus_app/screens/home/components/telus_pulse.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
// アプリのリスト変数
import 'package:telus_app/models/home/app_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String speakContent = "おかえりなさいませ\n今日は晴れです";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            SpeakSection(speakContent: speakContent),
            const TelusPulse(),
            Container(
              margin: const EdgeInsets.only(bottom: 40),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  InnerShadow(
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.30),
                        blurRadius: 10,
                        offset: const Offset(2, 4),
                      )
                    ],
                    child: Container(
                      width: 330,
                      height: 170,
                      decoration: BoxDecoration(
                        color: ThemeColors.bgColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 280,
                    child: GridView.count(
                      shrinkWrap: true,
                      primary: true,
                      crossAxisCount: 4,
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 25,
                      physics: const NeverScrollableScrollPhysics(), // スクロール無効化
                      padding: const EdgeInsets.all(1.0),
                      children: List.generate(appList.length, (index) {
                        return AppIcon(
                          screenName: appList[index].screenName,
                          imageName: appList[index].iconName,
                        );
                      }),
                    ),
                  ),

                  // ここから
                  // SizedBox(
                  //   width: 280,
                  //   child: Carousel(pages: [
                  //     for (var i = 0; i < 3; i++)
                  //       SizedBox(
                  //         width: 280,
                  //         child: GridView.count(
                  //           shrinkWrap: true,
                  //           primary: true,
                  //           crossAxisCount: 4,
                  //           mainAxisSpacing: 25,
                  //           crossAxisSpacing: 25,
                  //           physics:
                  //               const NeverScrollableScrollPhysics(), // スクロール無効化
                  //           padding: const EdgeInsets.all(1.0),
                  //           children: List.generate(8, (index) {
                  //             return AppIcon(
                  //               screenName: appList[1].screenName,
                  //               imageName: appList[1].iconName,
                  //             );
                  //           }),
                  //         ),
                  //       ),
                  //   ]),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
    required this.pages,
    this.indicatorColor,
    this.indicatorAlignment,
  }) : super(key: key);
  final List<Widget> pages;
  final Color? indicatorColor;
  final Alignment? indicatorAlignment;

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final pages = widget.pages;
    final pageLength = pages.length;
    final color =
        widget.indicatorColor ?? Theme.of(context).colorScheme.primary;
    return Stack(
      alignment: Alignment.center,
      children: [
        PageView(
          onPageChanged: (value) {
            // ページが切り替わったときにそのindexがvalueに入ってくる。
            // 現在表示中のページが何番目か知りたいのでcurrentIndexにvalueを渡す。
            setState(() {
              currentIndex = value;
            });
          },
          children: widget.pages,
        ),
        Align(
          alignment: widget.indicatorAlignment ??
              const Alignment(0, .5), // 相対的な表示位置を決める。
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              pageLength,
              (index) {
                return Container(
                  margin: const EdgeInsets.all(4),
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: index == currentIndex ? color : null,
                    shape: BoxShape.circle,
                    border: Border.all(color: color),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
