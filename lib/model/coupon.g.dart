// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coupon _$CouponFromJson(Map<String, dynamic> json) => Coupon(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      code: json['code'] as String,
      discount: (json['discount'] as num).toDouble(),
      fixed: (json['fixed'] as num).toDouble(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$CouponToJson(Coupon instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'code': instance.code,
      'discount': instance.discount,
      'fixed': instance.fixed,
      'status': instance.status,
    };
