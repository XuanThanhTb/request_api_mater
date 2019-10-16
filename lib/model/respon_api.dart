import 'dart:developer';

import 'package:json_annotation/json_annotation.dart';

part 'respon_api.g.dart';

@JsonSerializable()
class AddressRespon {
  @JsonKey(name: 'account_id')
  String accountId;
  String address;
  @JsonKey(name: 'address_id')
  String addressId;
  String city;
  @JsonKey(name: 'city_id')
  String cityId;
  String district;
  @JsonKey(name: 'district_id')
  String districtId;
  @JsonKey(name: 'phone_number')
  String phoneNumber;
  String ward;
  @JsonKey(name: 'ward_id')
  String wardId;

  AddressRespon(
      {this.accountId,
      this.address,
      this.addressId,
      this.city,
      this.cityId,
      this.district,
      this.districtId,
      this.phoneNumber,
      this.ward,
      this.wardId});

  factory AddressRespon.fromJson(dynamic json) => _$AddressResponFromJson(json);
  toJson() => _$AddressResponToJson(this);
}
