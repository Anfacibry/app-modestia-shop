import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';

import '../../store/store_home.dart';
import '../../config/style/app_style.dart';
import '../../config/theme/app_color.dart';

class AnnouncementContainer extends StatelessWidget {
  final String image;
  final String url;
  const AnnouncementContainer({
    required this.url,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Link(
      target: LinkTarget.blank,
      uri: Uri.parse(url),
      builder: (ctx, fun) => InkWell(
        onTap: fun,
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 8),
                blurRadius: 5,
                blurStyle: BlurStyle.normal,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AnnouncementIndex extends StatelessWidget {
  final int comparisonIndex;

  const AnnouncementIndex({
    required this.comparisonIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of<StoreHome>(context, listen: false);
    return Observer(
      builder: (_) => Padding(
        padding: const EdgeInsets.only(right: 10),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          height: 5,
          width: storeHome.index == comparisonIndex ? 20 : 10,
          decoration: BoxDecoration(
              color: storeHome.index == comparisonIndex
                  ? AppColor.primaryColor
                  : AppColor.onSecundaryColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                AppStyle.shadow(
                  backgroundColor: Colors.black26,
                  offset: (dx: 0, dy: 2),
                  blurRadius: 3,
                ),
              ]),
        ),
      ),
    );
  }
}

class AnnouncementHome extends StatelessWidget {
  final StoreHome storeHome;
  final double height, width;
  const AnnouncementHome({
    required this.storeHome,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: width * .3,
          width: width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: CarouselSlider.builder(
            itemCount: storeHome.listImage.length,
            itemBuilder: (ctx, index, realIdx) {
              return Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: AnnouncementContainer(
                    url: storeHome.listImage[index]["url"]!,
                    image: storeHome.listImage[index]["image"]!),
              );
            },
            options: CarouselOptions(
              autoPlayInterval: const Duration(seconds: 5),
              autoPlay: true,
              onPageChanged: (index, reason) {
                storeHome.getIndex(index);
              },
              clipBehavior: Clip.none,
            ),
          ),
        ),
        AppStyle.space(top: 15),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnnouncementIndex(comparisonIndex: 0),
            AnnouncementIndex(comparisonIndex: 1),
            AnnouncementIndex(comparisonIndex: 2),
            AnnouncementIndex(comparisonIndex: 3),
          ],
        ),
      ],
    );
  }
}
