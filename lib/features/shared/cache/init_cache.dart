
import 'package:car_mediator_mobile/core/utils/constants/extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/providers/cache_provider.dart';
import '../../../core/utils/constants/assets_path.dart';
import '../../../core/utils/constants/colors_constants.dart';
import '../../../core/utils/size_config.dart';

class InitCache extends StatefulWidget {
  const InitCache({super.key, required this.userRole});
  final String? userRole;
  @override
  State<InitCache> createState() => _InitCacheState();
}

class _InitCacheState extends State<InitCache> {

  @override
  void initState() {
    // FlutterNativeSplash.remove();
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
       Provider.of<CacheProvider>(context, listen: false).refreshCache(userRole: widget.userRole);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SizedBox(
        width: SizeConfig.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset('assets/images/background-top.png',color: AppColor.primaryColor),),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset('assets/images/background-bottom.png',color: AppColor.primaryColor),),

            Column(
              children: [
                SizedBox(height: SizeConfig.heightResponsive(0.16),),
                Image.asset(AssetsPath.logo,height: SizeConfig.heightResponsive(0.20),width: SizeConfig.widthResponsive(0.8),),
                SizedBox(height: SizeConfig.heightResponsive(0.06),),
                Text(context.loc.welcomeToApp,style: TextStyle(color:AppColor.primaryColor ,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600,)),
                const SizedBox(height:10,),
              ],
            ),

            Positioned(
              bottom: SizeConfig.heightResponsive(0.08),
              width: SizeConfig.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: SizeConfig.widthResponsive(0.80), child:  const LinearProgressIndicator(color: AppColor.primaryColor),),
                  const SizedBox(height:16,),
                  Text(context.loc.dataIsBeingFormatted,style: TextStyle(color: AppColor.primaryColor ,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w500),)
                ],
              ),),],
        ),
      ),
    );
  }
}
