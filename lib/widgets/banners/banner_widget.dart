
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/providers/cache_provider.dart';
import '../../core/providers/home/home_user_provider.dart';
import '../../core/utils/constants/colors_constants.dart';
import '../../core/utils/constants/constants.dart';
import '../../core/utils/size_config.dart';
import '../images/custom_image.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final adsImagesList = context.read<CacheProvider>().adsBannersList;
    final _height = SizeConfig.heightResponsive(0.25);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider(
          items: adsImagesList.map((e) => Padding(padding: const EdgeInsets.symmetric(horizontal: paddingHorizontalConst),
          child: CustomImageWidget(
            urlImage: e.adsImage,
            height: _height,
            width: SizeConfig.width,
            bgColor: AppColor.secondaryColor,
          ),)).toList(),
          options: CarouselOptions(
            autoPlay: true,
            height: _height,
            initialPage: 0,
            enableInfiniteScroll: true,
            viewportFraction: 1.0,
            onPageChanged: (index, _) {
              return context.read<HomeUserProvider>().changeBannerIndex(index);
            },
          ),
        ),
        const SizedBox(height: 10,),

        Selector<HomeUserProvider, int>(
          selector: (context, homeProvider) => homeProvider.indicatorAdsBannerIndex,
          builder: (context, currentIndicatorBannerIndex, child) {
            return SizedBox(
              height: 8,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => Container(
                  width: 8.0,
                  height: 2,
                  decoration: BoxDecoration(
                    color: currentIndicatorBannerIndex == index
                        ? AppColor.primaryColor
                        : AppColor.primaryColor.withOpacity(0.3),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                separatorBuilder: (_, index) => const SizedBox(width: 5),
                itemCount: adsImagesList.length,
              ),
            );
          },
        ),
      ],
    );
  }
}
