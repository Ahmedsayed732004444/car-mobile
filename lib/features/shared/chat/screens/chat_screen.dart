import 'dart:async';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
import 'package:car_mediator_mobile/widgets/components.dart';
import 'package:car_mediator_mobile/widgets/custom_button.dart';
import 'package:car_mediator_mobile/widgets/custom_loading.dart';
import 'package:car_mediator_mobile/widgets/vendor/vendor_confirm_pledge_dialog.dart';
import 'package:car_mediator_mobile/widgets/map_picker_screen.dart';
import 'package:car_mediator_mobile/core/services/shared/vendor_shipping_info_storage.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/data_sources/local/secure_storage.dart';
import '../../../../core/data_sources/remote/api_path.dart';
import '../../../../core/localization/app_language_provider.dart';
import '../../../../core/providers/cache_provider.dart';
import '../../../../core/providers/conversation_provider.dart';
import '../../../../core/providers/notification_badge_provider.dart';
import '../../../../core/providers/shipping_provider.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/connection_utils.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/constants/assets_path.dart';
import '../../../../core/utils/dialogUtils.dart';
import '../../../../core/utils/form_validator.dart';
import '../../../../core/utils/image_picker_bottom_sheet_utils.dart';
import '../../../../core/utils/launcher_url_utils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/providers/users/responses_my_request_provider.dart';
import '../../../../core/providers/vendors/response_request_provider.dart';
import '../../../../models/city_model.dart';
import '../../../../widgets/container_fields_widget.dart';
import '../../../../widgets/custom_container_listtile_widget.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/images/custom_image.dart';
import '../../../user/shipping_request/screens/confirm_shipping_request_screen.dart';
import '../../../user/vendor_profile/screens/vendor_profile_screen.dart';
import '../../../user/vendor_profile/widgets/rate_vendor_bottom_sheet.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../../core/providers/vendor_profile_provider.dart';
class ChatScreen extends StatefulWidget {
  final int conversationId;
  final int requestId;
  final int responseId;
  final int vendorId;
  final String receiverName;
  final String receiverLogo;
  final int myUserId;
  final bool isVendor;

  const ChatScreen({
    required this.conversationId,
    required this.requestId,
    required this.receiverName,
    required this.receiverLogo,
    required this.myUserId,
     this.isVendor = false,
    required this.responseId,
    required this.vendorId,
  });

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController controller = TextEditingController();
  Timer? timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!widget.isVendor) {
        context.read<VendorProfileProvider>().fetchVendorProfile(context, widget.vendorId, refresh: true);
      }
      context.read<NotificationBadgeProvider>().markEntityRead(section: 'conversations', entityId: widget.conversationId);
      final prov = Provider.of<ConversationProvider>(context, listen: false);
      prov.initProvider();
      prov.setActiveConversation(widget.conversationId);
      await prov.loadInitialMessages(conversationId: widget.conversationId);
    });
  }

  @override
  void dispose() {
    try {
      context.read<ConversationProvider>().setActiveConversation(null);
    } catch (_) {}
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Consumer<VendorProfileProvider>(
            builder: (context, provider, child) {
              return InkWell(
                onTap: () {
                  if (widget.vendorId > 0 && !widget.isVendor) {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => VendorProfileScreen(vendorId: widget.vendorId)));
                  }
                },
                child: Row(
                  children: [
                    const SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('رقم الطلب : ${widget.requestId}', style: txtLightSemiBold035,),
                        Text(
                          '${widget.receiverName}',
                          style: txtSemiBold033,
                        ),
                        if (!widget.isVendor && provider.vendor != null)
                          Row(
                            children: [
                              Text(
                                provider.vendor!.rating.toStringAsFixed(1),
                                style: TextStyle(fontSize: 12, color: Colors.amber[700], fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 2),
                              RatingBarIndicator(
                                rating: provider.vendor!.rating,
                                itemBuilder: (context, index) => const Icon(Icons.star, color: Colors.amber),
                                itemCount: 5,
                                itemSize: 12.0,
                                direction: Axis.horizontal,
                              ),
                            ],
                          ),
                      ],
                    ),
                  ],
                ),
              );
            }
          ),
          elevation: 0,
          actions:  [
            IconButton(
              icon: Image.asset(AssetsPath.whatsapp, width: 28, height: 28, color: Colors.green),
              onPressed: () async {
                final prov = context.read<ConversationProvider>();
                String phone = '';
                try {
                  final conv = prov.conversationModelList.firstWhere((c) => c.conversationId == widget.conversationId);
                  phone = conv.receiverPhone;
                } catch (e) {
                  // Ignore
                }
                
                if (phone.isEmpty) {
                  if (widget.receiverName.startsWith('user-05') && widget.receiverName.length >= 14) {
                    phone = widget.receiverName.substring(5);
                  }
                }

                if (phone.isEmpty && widget.responseId > 0) {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => const Center(child: CircularProgressIndicator()),
                  );
                  if (!widget.isVendor) {
                    final responsesProv = context.read<ResponsesMyRequestProvider>();
                    await responsesProv.getResponseRequestById(responseId: widget.responseId);
                    if (responsesProv.detailsResponseRequestModel != null) {
                      phone = responsesProv.detailsResponseRequestModel!.phoneContact;
                    }
                  } else {
                    final vendorProv = context.read<ResponseRequestProvider>();
                    await vendorProv.detailsResponseRequest(responseId: widget.responseId);
                    if (vendorProv.detailsResponseRequestModel != null) {
                      phone = vendorProv.detailsResponseRequestModel!.userPhone;
                    }
                  }
                  if(context.mounted) Navigator.pop(context);
                }
                
                if (phone.isNotEmpty) {
                  LauncherUrlUtils.openWhatsApp(context, phone: phone);
                } else {
                  ToastHelper.showError('رقم الواتساب غير متوفر');
                }
              },
            ),
            if(widget.isVendor)
            IconButton(onPressed: (){
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return Scaffold(
                    backgroundColor: Colors.transparent,
                    body: DraggableScrollableSheet(
                      expand: false,
                      initialChildSize: 0.9,
                      minChildSize: 0.6,
                      maxChildSize: 0.95,
                      builder: (context, scrollController) {
                        return _SendShippingInfoBottomSheet(
                          onSend: (value) async {
                            Navigator.pop(context);
                             await onSendMessage(Provider.of<ConversationProvider>(context, listen: false), isSendShippingRequest: true, shippingInfo: value);
                          },
                          scrollController: scrollController,
                        );
                      },
                    ),
                  );
                },
              );
            },
                icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.local_shipping, color: AppColor.primaryColor,),
                const SizedBox(width: 5,),
                Text('طلب شحن', style: txtSemiBold033,)
              ],
            )),
            if(!widget.isVendor && widget.vendorId > 0)
              TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    builder: (context) => RateVendorBottomSheet(
                      vendorId: widget.vendorId,
                      requestId: widget.requestId,
                    ),
                  );
                },
                child: Text('تقييم التاجر', style: txtBold04.copyWith(color: AppColor.primaryColor)),
              ),
          ],
          leadingWidth: SizeConfig.widthResponsive(0.18),
          titleSpacing: 0,
          leading:  InkWell(
            onTap: () {
              if (widget.vendorId > 0 && !widget.isVendor) {
                Navigator.push(context, MaterialPageRoute(builder: (_) => VendorProfileScreen(vendorId: widget.vendorId)));
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CustomImageWidget(urlImage: widget.receiverLogo),
            ),
          )),
      body: Consumer<ConversationProvider>(
        builder: (context, provider, child) {
          return provider.isLoading ? const CustomLoading() : Column(
            children: [
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  itemCount: provider.messagesList.length,
                  itemBuilder: (context, index) {
                    final msg = provider.messagesList[provider.messagesList.length - 1 - index];
                    final isMe = msg.senderId == widget.myUserId;
                    return Align(
                      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: isMe ? AppColor.primaryColor : Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            if (msg.body != null && (msg.body?.isNotEmpty ?? false))
                              msg.body.startsWith('http')
                                ? InkWell(
                                    onTap: () => LauncherUrlUtils.openUrl(msg.body),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: isMe ? Colors.white.withOpacity(0.2) : AppColor.primaryColor.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(Icons.location_on, color: isMe ? Colors.white : AppColor.primaryColor, size: 20),
                                          const SizedBox(width: 8),
                                          Text('الموقع على الخريطة', style: TextStyle(color: isMe ? Colors.white : AppColor.primaryColor, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),
                                        ],
                                      )
                                    ),
                                  )
                                : Text(
                                msg.body,
                                style: TextStyle(
                                  color: isMe ? Colors.white : Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            if (msg.image != null && (msg.image?.isNotEmpty ?? false))
                              FutureBuilder<String?>(
                                future: SecureStorage.getToken(),
                                builder: (context, snapshot) {
                                  if (!snapshot.hasData) {
                                    return const CustomLoading(radius: 18,);
                                  }
                                  final token = snapshot.data ?? '';

                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => FullImagePage(imageUrl: "${ApiPath.uploads}${msg.image}", token: token),
                                        ),
                                      );
                                    },
                                    child: CachedNetworkImage(
                                      height: SizeConfig.heightResponsive(0.30),
                                      width: SizeConfig.widthResponsive(0.50),
                                      imageUrl: "${ApiPath.uploads}${msg.image}",
                                      httpHeaders: {"Authorization": "Bearer $token"},
                                      placeholder: (context, url) => const CustomLoading(radius: 18),
                                      errorWidget: (context, url, error) => const Icon(Icons.error),
                                    ),
                                  );
                                },
                              ),

                            if(msg.isShippingRequest)
                              SizedBox(
                                width: SizeConfig.widthResponsive(0.60),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(height: 10,),
                                    Text('الموافقة على طلب الشحن', style: TextStyle(color: AppColor.accentColor, fontSize: 16),),
                                    const SizedBox(height: 10,),
                                    CustomButton(
                                      label: widget.isVendor ? 'تم إرسال طلب الشحن': 'طلب الشحن',
                                      onTap: (){
                                        if(!widget.isVendor)
                                        navigationPush(context, ConfirmShippingRequestScreen(requestId: widget.requestId, responseId: widget.responseId, vendorId: widget.responseId,));
                                      },
                                      textColor: AppColor.accentColor,
                                      primaryColor: Colors.transparent,
                                      borderColor: AppColor.accentColor ,
                                      txtSize: 16,),
                                    const SizedBox(height: 10,),
                                  ],
                                ),
                              ),

                            const SizedBox(height: 5),
                            Text(
                              msg.createdAt,
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                color: isMe ? Colors.white70 : Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller,
                        decoration: const InputDecoration(
                          hintText: "مراسلة...",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.camera_alt, color: AppColor.primaryColor),
                      onPressed: provider.isLoadingSend ? null : () async {
                        ImagePickerBottomSheet.show(context, (picked) async {
                          if (picked != null) {
                            provider.changeSelectedConversationImage(picked);
                            await onSendMessage(provider);
                          }
                        });
                      },
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                      icon: provider.isLoadingSend ? const CustomLoading(radius: 10) : const Icon(Icons.send, color: AppColor.primaryColor),
                      onPressed: provider.isLoadingSend ? null : () async {
                        await onSendMessage(provider);
                      },
                    )
                  ],
                ),
              ),
            ],
          );
        }
      ),
    );
  }

  Future<void> onSendMessage(ConversationProvider provider, {bool isSendShippingRequest = false, String? shippingInfo}) async {
    if(! await ConnectionUtils.hasInternetConnection()){
      DialogUtils().showNoInternetDialog(context);
      return;
    }

    String text = controller.text.trim();
    if (isSendShippingRequest == true && shippingInfo != null && shippingInfo.isNotEmpty) {
      try {
        final parsed = jsonDecode(shippingInfo);
        if (parsed['lat'] != null && parsed['lng'] != null) {
          text = 'https://www.google.com/maps/search/?api=1&query=${parsed['lat']},${parsed['lng']}';
        }
      } catch (e) {
        text = '';
      }
    }
    
    if(!(text.isNotEmpty || provider.fileImage != null) && (isSendShippingRequest == false)){
      ToastHelper.showWarning('لا توجد بيانات للإرسال');
      return;
    }

    await provider.sendMessage(context, body: {
      'conversationId': widget.conversationId.toString(),
      'body': text ?? '',
      'isSendShippingRequest': isSendShippingRequest ? '1' : '0',
      'shippingInfo': shippingInfo ?? '',
      'requestId' : widget.requestId.toString(),
      'responseId' : widget.responseId.toString(),
    },);
    controller.clear();
    // جلب الرسائل فوراً بعد الإرسال (تحديث الشاشة)
    await provider.fetchNewMessages(conversationId: widget.conversationId);
  }
}

class FullImagePage extends StatelessWidget {
  final String imageUrl;
  final String token;

  const FullImagePage({super.key, required this.imageUrl, required this.token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Center(
          child: InteractiveViewer(
            minScale: 1,
            maxScale: 4,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              httpHeaders: {"Authorization": "Bearer $token"},
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}


class CartonControllers {
  final lengthController = TextEditingController();
  final widthController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();

  void dispose() {
    lengthController.dispose();
    widthController.dispose();
    heightController.dispose();
    weightController.dispose();
  }
  
  Map<String, dynamic> toJson() => {
    'length': lengthController.text.trim(),
    'width': widthController.text.trim(),
    'height': heightController.text.trim(),
    'weight': weightController.text.trim(),
  };
}

class _SendShippingInfoBottomSheet extends StatefulWidget {
  const _SendShippingInfoBottomSheet({super.key, required this.onSend, required this.scrollController});
  final Function(String detailShipping) onSend;
  final ScrollController scrollController;

  @override
  State<_SendShippingInfoBottomSheet> createState() => _SendShippingInfoBottomSheetState();
}

class _SendShippingInfoBottomSheetState extends State<_SendShippingInfoBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _phoneController = TextEditingController();
  
  List<CartonControllers> _cartons = [CartonControllers()];
  
  double? _lat;
  double? _lng;

  @override
  void initState() {
    super.initState();
    _loadSavedInfo();
  }

  Future<void> _loadSavedInfo() async {
    final saved = await VendorShippingInfoStorage.load();
    if (saved != null) {
      setState(() {
        _nameController.text = saved['name'] ?? '';
        _phoneController.text = saved['phone'] ?? '';
        _addressController.text = saved['address'] ?? '';
        _lat = (saved['lat'] as num?)?.toDouble();
        _lng = (saved['lng'] as num?)?.toDouble();
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _phoneController.dispose();
    for (var carton in _cartons) {
      carton.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget.scrollController,
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        width: SizeConfig.width,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.close,
                      color: AppColor.primaryColor,
                    )),
              ),
              Text('تفاصيل الشحنة', style: txtBold05,),
              const SizedBox(height: 10),
              ContainerFieldsWidget(
                title: 'عنوانك',
                children: [
                  CustomTextField(
                    label: 'اسم المرسل',
                    controller: _nameController,
                    validator: (value) => FormValidatorUtils.textValidator(value,
                      isRequired: true,
                      maxLength: 255,),
                  ),
                  const SizedBox(height: 16,),
                  GestureDetector(
                    onTap: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MapPickerScreen(),
                        ),
                      );
                      if (result != null) {
                        setState(() {
                          _lat = result['lat'];
                          _lng = result['lng'];
                          _addressController.text = result['address'];
                        });
                      }
                    },
                    child: AbsorbPointer(
                      child: CustomTextField(
                        label: 'العنوان',
                        controller: _addressController,
                        maxLines: null,
                        validator: (value) => FormValidatorUtils.textValidator(value,
                          isRequired: true,
                          maxLength: 255,),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16,),
                  CustomTextField(
                    label:'رقم الجوال',
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    validator: (value) => FormValidatorUtils.phoneValidator(value,
                      isRequired: true,),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ..._cartons.asMap().entries.map((entry) {
                int index = entry.key;
                CartonControllers carton = entry.value;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ContainerFieldsWidget(
                    title: 'تفاصيل شحنة ${index + 1}',
                    children: [
                      if (_cartons.length > 1)
                        Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _cartons.removeAt(index);
                              });
                            },
                            child: const Icon(Icons.delete, color: Colors.red),
                          ),
                        ),
                      Row(
                        children: [
                          Expanded(flex:1, child: CustomTextField(
                            label: 'الطول ( سم )',
                            controller: carton.lengthController,
                            keyboardType: TextInputType.number,
                            validator: (value) => FormValidatorUtils.textValidator(value,
                              isRequired: true,),
                          )),
                          const SizedBox(width: 10,),
                          Expanded(flex:1, child: CustomTextField(
                            label: 'العرض ( سم )',
                            controller: carton.widthController,
                            keyboardType: TextInputType.number,
                            validator: (value) => FormValidatorUtils.textValidator(value,
                              isRequired: true,),
                          )),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(flex:1, child: CustomTextField(
                            label: 'الإرتفاع ( سم )',
                            controller: carton.heightController,
                            keyboardType: TextInputType.number,
                            validator: (value) => FormValidatorUtils.textValidator(value,
                              isRequired: true,),
                          )),
                          const SizedBox(width: 10,),
                          Expanded(flex:1, child: CustomTextField(
                            label: 'الوزن ( كغم )',
                            controller: carton.weightController,
                            keyboardType: TextInputType.number,
                            validator: (value) => FormValidatorUtils.textValidator(value,
                              isRequired: true,),
                          )),
                        ],
                      ),
                    ]
                  ),
                );
              }).toList(),
              
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    _cartons.add(CartonControllers());
                  });
                }, 
                icon: const Icon(Icons.add, color: AppColor.primaryColor), 
                label: const Text('إضافة شحنة أخرى', style: TextStyle(color: AppColor.primaryColor))
              ),
              const SizedBox(height: 10),
              // button
              CustomButton(
                label: 'إرسال',
                onTap: (){
                  if(_formKey.currentState?.validate() ?? false){
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (dialogContext) => VendorConfirmPledgeDialog(
                        onConfirm: () {
                          // حفظ بيانات التاجر محلياً للاستخدام المستقبلي
                          VendorShippingInfoStorage.save(
                            name: _nameController.text.trim(),
                            phone: _phoneController.text.trim(),
                            address: _addressController.text.trim(),
                            lat: _lat,
                            lng: _lng,
                          );
                          widget.onSend(jsonEncode({
                            'name': _nameController.text.toString(),
                            'city': '', // Removed from UI
                            'address' : _addressController.text.toString(),
                            'lat' : _lat,
                            'lng' : _lng,
                            'phone' : _phoneController.text.toString(),
                            'length' : _cartons.isNotEmpty ? _cartons.first.lengthController.text.toString() : '',
                            'width' : _cartons.isNotEmpty ? _cartons.first.widthController.text.toString() : '',
                            'height' : _cartons.isNotEmpty ? _cartons.first.heightController.text.toString() : '',
                            'weight' : _cartons.isNotEmpty ? _cartons.first.weightController.text.toString() : '',
                            'packages': _cartons.map((c) => c.toJson()).toList(),
                          }));
                        },
                      ),
                    );
                  }
                },
                txtSize: SizeConfig.widthResponsive(0.04),
              )
            ],
          ),
        ),
      ),
    );
  }
}


