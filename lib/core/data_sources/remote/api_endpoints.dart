class ApiEndpoints {
  static const String checkCacheUpdates = 'cache/check-updates';
  static const String loginWithOtp = 'auth/login-with-otp';
  static const String register = 'auth/register';
  static const String registerVendor = 'vendor/register-vendor';
  static const String logout = 'auth/logout';

   static const String createConversation = 'chat/conversations/create-conversation';
   static const String sendMessageChat = 'chat/messages/send';
   static const String userConversations = 'chat/conversations/user-conversations';
   static const String vendorConversations = 'chat/conversations/vendor-conversations';

  // users endpoints
  static const String checkEligibleVendors = 'user/request/check-eligible-vendors';
  static const String confirmOrderRequest = 'user/request/confirm-request';
  static const String ConfirmShippingRequest = 'user/request/confirm-shipping-request';
  static const String ConfirmPriceShippingRequest = 'user/request/confirm-price-shipping-request';
  static const String getMyRequestUser = 'user/my-requests';
  static const String getResponsesMyRequest = 'user/my-requests/responses';
  static const String getResponseRequestById = 'user/my-requests/response';
  static const String complaintVendorService = 'user/complaints/complaint-vendor-service';
  static const String updateStatusMyRequest = 'user/my-requests/update-status';
  static const String getUserProfile = 'user/profile';
  static const String updateUserProfile = 'user/profile/update';

  // vendor endpoints
  static const String getAllNewRequestsVendor = 'vendor/new-requests/get-all-new-requests';
  static const String detailsNewRequestsVendor = 'vendor/new-requests/details-new-requests';
  static const String sendResponseRequestVendor = 'vendor/responses-requests/send-response-request';
  static const String getMyResponseRequests = 'vendor/responses-requests/get-my-response-requests';
  static const String detailResponseRequests = 'vendor/responses-requests/details-response-request';
  static const String getCategoriesSpecialtyVendor = 'vendor/specialties/get-categories-specialty';
  static const String updateCategorySpecialtyVendor = 'vendor/specialties/update-category-specialty';
  static const String getVendorCitiesVendor = 'vendor/specialties/get-vendor-cities';
  static const String updateVendorCitiesVendor = 'vendor/specialties/update-vendor-cities';
  static const String getVendorBrandsCar = 'vendor/specialties/get-vendor-brands-car';
  static const String getVendorProfile = 'vendor/profile';
  static const String updateVendorProfile = 'vendor/profile/update';
  static const String uploadCommercialRecordImage = 'vendor/profile/upload-commercial-record';
  static const String payAppCommission = 'vendor/app-commission/pay';

}
