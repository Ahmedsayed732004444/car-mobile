import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/localization/app_language_provider.dart';
import '../core/utils/constants/colors_constants.dart';
import '../core/utils/size_config.dart';

Future<dynamic> navigationPush(context, Widget widget) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void navigationPushAndRemoveUntil(context, Widget widget) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (Route<dynamic> route) => false,
  );
}

//-----------------------------dropdown_search package-----------------------------

PopupProps<T> popupPropsBottomSheet<T>({bool showSearchBox = true,required String titleBottomSheet,DropdownSearchPopupItemBuilder<T>? itemBuilder}){
  return PopupProps.bottomSheet(

    showSearchBox: showSearchBox,
    searchFieldProps: TextFieldProps(
        style: TextStyle(color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          contentPadding:const EdgeInsets.symmetric(horizontal: 10,vertical: 15) ,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.grey350, width: 1),
            borderRadius: BorderRadius.circular(10.0),
            gapPadding: 2.0,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.primaryColor, width: 1),
            borderRadius: BorderRadius.circular(10.0),
            gapPadding: 2.0,
          ),
        )
    ),
    title: Container(
      width: SizeConfig.width,
      padding: const EdgeInsets.only(top: 12,left: 10,right: 10,),
      margin: const EdgeInsets.only(bottom: 10,),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
        border: Border(top:BorderSide(color: AppColor.greyShade5,width: 2,), ),
      ),
      child: Column(
        children: [
          Container(
            width: SizeConfig.widthResponsive(0.40),
            height: 3,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius:BorderRadius.circular(8),
            ),
          ),
          SizedBox(height: 16,),
          Align(
            alignment: Alignment.centerRight,
            child: Text('${titleBottomSheet}',style : TextStyle(color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600),),
          ),
        ],
      ),
    ),
    bottomSheetProps: BottomSheetProps(
      elevation: 0,
      backgroundColor:Colors.white,
      shape:  const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
      ),
    ),

    itemBuilder: itemBuilder,
  );
}

DropDownDecoratorProps customDropdownDecoratorProps({String? label, String? hint, bool? filled, Color? fillColor}){
  return DropDownDecoratorProps(

    baseStyle: TextStyle(color: AppColor.blackColor,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w500),
    dropdownSearchDecoration: InputDecoration(
      labelText: label,
      hintText: hint,
      filled: filled,
      fillColor: fillColor,
      contentPadding:const EdgeInsets.symmetric(horizontal: 10,vertical: 10) ,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.grey350, width: 1),
        borderRadius: BorderRadius.circular(12.0),
        gapPadding: 2.0,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.primaryColor, width: 1),
        borderRadius: BorderRadius.circular(12.0),
        gapPadding: 2.0,
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1),
        borderRadius: BorderRadius.circular(12.0),
        gapPadding: 2.0,
      ),
      labelStyle: TextStyle(color: AppColor.greyShade2 , fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w600),
      hintStyle: TextStyle(color:AppColor.greyShade2, fontSize: SizeConfig.widthResponsive(0.04), fontWeight: FontWeight.w600),
    ),
  );
}


PopupPropsMultiSelection<T> popupPropsMultiSelectionBottomSheet<T>(BuildContext context,{bool showSearchBox = true, required String titleBottomSheet, String validationWidgetTextButton = 'تحديد', Widget Function(BuildContext context, List<T> selectedItems)? validationWidgetBuilder,DropdownSearchPopupItemBuilder<T>? itemBuilder, Widget Function(BuildContext context, Widget popupWidget)? containerBuilder}){
  return PopupPropsMultiSelection.bottomSheet(

    showSearchBox: showSearchBox,
    textDirection: context.read<AppLanguageProvider>().textDirection,
    validationWidgetBuilder: validationWidgetBuilder,
    containerBuilder: containerBuilder,
    searchFieldProps: TextFieldProps(
        style: TextStyle(color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.04) ,fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          contentPadding:const EdgeInsets.symmetric(horizontal: 10,vertical: 15) ,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.grey350, width: 1),
            borderRadius: BorderRadius.circular(10.0),
            gapPadding: 2.0,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColor.primaryColor, width: 1),
            borderRadius: BorderRadius.circular(10.0),
            gapPadding: 2.0,
          ),
        )
    ),
    title: Container(
      width: SizeConfig.width,
      padding: const EdgeInsets.only(top: 12,left: 10,right: 10,),
      margin: const EdgeInsets.only(bottom: 10,),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
        border: Border(top:BorderSide(color: AppColor.greyShade5,width: 2,), ),
      ),
      child: Column(
        children: [
          Container(
            width: SizeConfig.widthResponsive(0.40),
            height: 3,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius:BorderRadius.circular(8),
            ),
          ),
          SizedBox(height: 16,),
          Align(
            alignment: Alignment.centerRight,
            child: Text('${titleBottomSheet}',style : TextStyle(color: AppColor.primaryColor,fontSize: SizeConfig.widthResponsive(0.05) ,fontWeight: FontWeight.w600),),
          ),
        ],
      ),
    ),

    bottomSheetProps: BottomSheetProps(
      elevation: 0,
      backgroundColor:Colors.white,

      shape:  const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
      ),
    ),


    itemBuilder: itemBuilder,
  );
}

Future customBottomSheet(BuildContext context,{required Widget child ,bool isScrollControlled = true ,bool isDismissible = true, Color backgroundColor = Colors.transparent}){
  return showModalBottomSheet(
      useSafeArea: true,
      context: context,
      backgroundColor: backgroundColor,
      isScrollControlled: isScrollControlled,
      isDismissible:isDismissible ,
      shape:  const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0)),
      ),
      builder: (context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Padding(padding: EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom),
                child:child,
              );
            });
      });
}

Decoration whiteBoxDecoration(){
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color: AppColor.greyShade5,width: 0.8,),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: 1,
        blurRadius: 2,
        offset: Offset(1, 1), // changes position of shadow
      ),
    ],
  );
}



