// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'respon_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressRespon _$AddressResponFromJson(Map<String, dynamic> json) {
  return AddressRespon(
    accountId: json['account_id'] as String,
    address: json['address'] as String,
    addressId: json['address_id'] as String,
    city: json['city'] as String,
    cityId: json['city_id'] as String,
    district: json['district'] as String,
    districtId: json['district_id'] as String,
    phoneNumber: json['phone_number'] as String,
    ward: json['ward'] as String,
    wardId: json['ward_id'] as String,
  );
}

Map<String, dynamic> _$AddressResponToJson(AddressRespon instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'address': instance.address,
      'address_id': instance.addressId,
      'city': instance.city,
      'city_id': instance.cityId,
      'district': instance.district,
      'district_id': instance.districtId,
      'phone_number': instance.phoneNumber,
      'ward': instance.ward,
      'ward_id': instance.wardId,
    };
