
import 'package:flutter/material.dart';
import '../../../../models/faq_item_model.dart';
import '../../../../widgets/banners/banner_widget.dart';
import '../../../../widgets/faq_item_widget.dart';
import '../../../../widgets/section_label_widget.dart';
import '../widgets/categories_gridview_widget.dart';

class HomeUserScreen extends StatefulWidget {
  const HomeUserScreen({super.key});

  @override
  State<HomeUserScreen> createState() => _HomeUserScreenState();
}

class _HomeUserScreenState extends State<HomeUserScreen> {

  final List<FAQItemModel> _allFAQs = [
    FAQItemModel(
      question: 'هل يمكنني التسجيل كشركة؟',
      answer: 'نعم، يمكن للشركات التسجيل عبر اختيار نوع الحساب "شركة"، وإدخال بيانات السجل التجاري ورقم الهوية، بالإضافة إلى رفع الوثائق المطلوبة للتوثيق.',
    ),
    FAQItemModel(
      question: 'كيف يمكنني تقديم طلب جديد؟',
      answer: 'لإنشاء طلب جديد، اختر القسم المناسب (مثل قطع غيار، سيارات مستعملة، عقارات...) ثم أدخل التفاصيل المطلوبة مثل المواصفات، الصور، ونطاق السعر. بعد ذلك يمكنك إرسال الطلب للشركات المؤهلة.',
    ),
    FAQItemModel(
      question: 'كيف يتم اختيار الشركات التي تستقبل الطلب؟',
      answer: 'يتم تحديد الشركات المؤهلة حسب القسم المطلوب، الماركات المختصة بها الشركة، والموقع الجغرافي الذي تختاره. هذا يضمن وصول الطلب فقط للشركات المناسبة.',
    ),
    FAQItemModel(
      question: 'كيف يمكنني متابعة ردود الشركات على طلبي؟',
      answer: 'بعد إرسال الطلب ستظهر لك جميع الردود من الشركات في صفحة "طلباتي"، حيث يمكنك مشاهدة الأسعار، الصور، مدة الضمان، وتفاصيل التوصيل لكل رد.',
    ),
    FAQItemModel(
      question: 'هل الردود مضمونة من شركات حقيقية؟',
      answer: 'نعم، جميع الشركات المشاركة في المنصة موثقة في السعودية، وتم التحقق من سجلاتها التجارية ووثائقها الرسمية لتجنب الاحتيال.',
    ),
    FAQItemModel(
      question: 'هل يوجد ضمان على القطع أو المنتجات؟',
      answer: 'نعم، يمكن للشركات إضافة تفاصيل الضمان في الردود (مثل ضمان 6 أشهر). سيظهر الضمان بوضوح عند استعراض الرد.',
    ),
    FAQItemModel(
      question: 'كيف يمكنني تقديم شكوى؟',
      answer: 'إذا واجهت مشكلة في الطلب أو مع شركة معينة، يمكنك الدخول إلى قسم "الدعم والشكاوى"، وفتح شكوى جديدة مع تحديد نوع المشكلة. سيتم مراجعتها من قبل الإدارة.',
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.white,
      child: ListView(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          const SizedBox(height: 2,),
          BannerWidget(),
          const SectionLabelWidget(label: 'الأقسام',),
          const SizedBox(height: 8,),
          CategoriesGridviewWidget(),
          const SizedBox(height: 8,),
          const SectionLabelWidget(label: 'أسئلة شائعة (FAQ)',),
          const SizedBox(height: 8,),
          FAQItemWidget(faqsList: _allFAQs,),
        ],
      ),
    );
  }
}


