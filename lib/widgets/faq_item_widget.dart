
import 'package:car_mediator_mobile/core/utils/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/providers/home/home_user_provider.dart';
import '../core/utils/constants/colors_constants.dart';
import '../core/utils/size_config.dart';
import '../models/faq_item_model.dart';

class FAQItemWidget extends StatelessWidget {
  const FAQItemWidget({super.key, required this.faqsList});

  final List<FAQItemModel> faqsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: faqsList.length,
        itemBuilder: (context, index){
         return _BuildFaqItem(
           model: faqsList[index],
           index: index,
         );
        }
    );
  }
}

class _BuildFaqItem extends StatelessWidget {
  const _BuildFaqItem({super.key, required this.model, required this.index});
  final FAQItemModel model;
  final int index;

  @override
  Widget build(BuildContext context) {
    final _provider = context.read<HomeUserProvider>();

    return Container(
      margin: const EdgeInsets.only(bottom: 8, left: paddingHorizontalConst, right: paddingHorizontalConst),
      decoration: BoxDecoration(
        color: AppColor.secondaryColor,
        borderRadius: BorderRadius.circular(borderRadiusConst),
        border: Border.all(color: AppColor.primaryColor.withOpacity(0.03)),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: Selector<HomeUserProvider, int>(
          selector: (context, provider) => provider.expandedIndexFAQItem,
          builder: (context, currentExpandedIndex, child){

            return ExpansionTile(
              key: Key(model.question),
              initiallyExpanded: currentExpandedIndex == index,
              onExpansionChanged: (expanded) {
                _provider.changeFAQItemIndex(expanded ? index : -1);
              },
              title: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColor.secondaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      currentExpandedIndex == index ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      color: AppColor.primaryColor,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      model.question,
                      style:  TextStyle(
                        fontSize: SizeConfig.widthResponsive(0.035),
                        color: AppColor.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              trailing: const SizedBox.shrink(),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(52, 0, 16, 20),
                  child: Text(
                    model.answer,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

