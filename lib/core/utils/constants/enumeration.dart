import 'package:flutter/material.dart';

enum LastUpdateTimesCacheKeysEnum {
  cities('cities_last_update_at'),
  brandsCars('brands_cars_last_update_at'),
  categories('categories_last_update_at'),
  categoryHasBrandField('category_has_brand_field_last_update_at'),
  customFields('custom_fields_last_update_at'),
  adsBanners('ads_banners_last_update_at');

  final String cacheKey;
  const LastUpdateTimesCacheKeysEnum(this.cacheKey);
}
// LastUpdateTimesCacheKeysEnum.cities.cacheKey ==> cities_last_update_at

enum EntityNameCacheStaticDataEnum {
  cities('cities'),
  brandsCars('brands_cars'),
  categories('categories'),
  categoryHasBrandField('category_has_brand_field'),
  customFields('custom_fields'),
  adsBanners('ads_banners');

  final String value;
  const EntityNameCacheStaticDataEnum(this.value);
}

enum CustomFieldTypeEnum {
  text,
  text_area,
  number,
  select,
  checkbox,
  radio,
  date,
  file
}

enum UserRoleEnum {
  admin,
  vendor,
  user,
}

enum ResponseRequestAvailabilityEnum {
  available,
  available_with_difference,
  unavailable,
}

enum CategoryStatusEnum
{
  Active,
  Inactive,
  Soon
}

enum StatusShippingRequestEnum
{
  Pending,
  Completed,
}

enum CommissionTypeEnum
{
  rate,
  amount,
}

enum RequestCustomerStatusEnum {
  open,
  closed,
  canceled,
  completed,
}

extension StatusInfo on RequestCustomerStatusEnum {
  String get label {
    switch (this) {
      case RequestCustomerStatusEnum.open:
        return 'مفتوح';
      case RequestCustomerStatusEnum.closed:
        return 'مغلق';
      case RequestCustomerStatusEnum.canceled:
        return 'ملغي';
      case RequestCustomerStatusEnum.completed:
        return 'مكتمل';
    }
  }

  IconData get icon {
    switch (this) {
      case RequestCustomerStatusEnum.open:
        return Icons.folder_open;
      case RequestCustomerStatusEnum.closed:
        return Icons.lock;
      case RequestCustomerStatusEnum.canceled:
        return Icons.cancel;
      case RequestCustomerStatusEnum.completed:
        return Icons.check_circle;
    }
  }

  Color get color {
    switch (this) {
      case RequestCustomerStatusEnum.open:
        return Colors.blue;
      case RequestCustomerStatusEnum.closed:
        return Colors.grey;
      case RequestCustomerStatusEnum.canceled:
        return Colors.red;
      case RequestCustomerStatusEnum.completed:
        return Colors.green;
    }
  }
}


