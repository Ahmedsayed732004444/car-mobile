
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/localization/app_language_provider.dart';
import '../../../../core/providers/cache_provider.dart';
import '../../../../core/providers/orders/create_order_provider.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/form_validator.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../models/city_model.dart';
import '../../../../widgets/card_container_widget.dart';
import '../../../../widgets/components.dart';
import '../../../../widgets/dropdown_search/city_dropdown_builder_multiselection_widget.dart';

class SendRangeCard extends StatelessWidget {
  const SendRangeCard({super.key});

  void _showCitiesBottomSheet(BuildContext context, CacheProvider cacheProvider, CreateOrderProvider createOrderProvider) {
    final allCities = cacheProvider.citiesList;
    final List<CityModel> tempSelected = List<CityModel>.from(createOrderProvider.selectedCitiesRequestList ?? []);
    final _isArabic = context.read<AppLanguageProvider>().isArabic;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            final bool isAllSelected = tempSelected.length == allCities.length && allCities.isNotEmpty;

            return Container(
              height: MediaQuery.of(context).size.height * 0.70,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 8),
                    child: Column(
                      children: [
                        Container(
                          width: SizeConfig.widthResponsive(0.40),
                          height: 3,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'المدن',
                              style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: SizeConfig.widthResponsive(0.05),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (isAllSelected) {
                                    tempSelected.clear();
                                  } else {
                                    tempSelected.clear();
                                    tempSelected.addAll(allCities);
                                  }
                                });
                              },
                              child: Row(
                                children: [
                                  const Text(
                                    'تحديد الكل',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Checkbox(
                                    value: isAllSelected,
                                    activeColor: AppColor.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    onChanged: (bool? checked) {
                                      setState(() {
                                        if (checked == true) {
                                          tempSelected.clear();
                                          tempSelected.addAll(allCities);
                                        } else {
                                          tempSelected.clear();
                                        }
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 1),
                  Expanded(
                    child: ListView.builder(
                      itemCount: allCities.length,
                      itemBuilder: (context, index) {
                        final city = allCities[index];
                        final bool isSelected = tempSelected.any((e) => e.id == city.id);
                        final cityName = (_isArabic ? city.cityNameAr : city.cityNameEn) ?? '';

                        return CheckboxListTile(
                          value: isSelected,
                          activeColor: AppColor.primaryColor,
                          title: Text(
                            cityName,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onChanged: (bool? checked) {
                            setState(() {
                              if (checked == true) {
                                if (!tempSelected.any((e) => e.id == city.id)) {
                                  tempSelected.add(city);
                                }
                              } else {
                                tempSelected.removeWhere((e) => e.id == city.id);
                              }
                            });
                          },
                        );
                      },
                    ),
                  ),
                  const Divider(height: 1),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeConfig.heightResponsive(0.04),
                      left: 20,
                      right: 20,
                      top: 10,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          createOrderProvider.changeCitiesRequest(tempSelected);
                          Navigator.pop(context);
                        },
                        child: Text(
                          'تحديد',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.widthResponsive(0.04),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final _cacheProvider = context.read<CacheProvider>();
    final _createOrderProvider = Provider.of<CreateOrderProvider>(context);

    return CardContainerWidget(
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          'تحديد نطاق الإرسال',
          style: txtBold04,
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () => _showCitiesBottomSheet(context, _cacheProvider, _createOrderProvider),
          child: InputDecorator(
            decoration: customDropdownDecoratorProps(label: 'المدن', hint: 'إختر المدن').dropdownSearchDecoration!,
            child: CityDropDownBuilderMultiSelectionWidget(
              selectedItems: _createOrderProvider.selectedCitiesRequestList ?? [],
              hint: 'إختر المدن',
            ),
          ),
        ),
        const SizedBox(height: 30,),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            ' إمكانية اختيار إرسال الطلب لجميع المدن , أو لمدينة معينة',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
