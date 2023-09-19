import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:instant_grrocery_delivery/model/product/product.dart';

part 'product_dto.g.dart';
part 'product_dto.freezed.dart';

@freezed
class ProductDto with _$ProductDto {

  const factory ProductDto({
    required int id,
    required double price,
    required String name,
    required String description,
    required String image,
    required String weight,
  }) = _ProductDto;

  // Product getProduct() {
  //   return Product(
  //     id: id,
  //     price: attributes.price,
  //     name: attributes.name,
  //     description: attributes.description,
  //     image: attributes.image,
  //     weight: attributes.weight,
  //   );
  // }

  factory ProductDto.fromJson(Map<String, dynamic> source) =>
     _$ProductDtoFromJson(source);

}

extension ProductDtoX on ProductDto {
  Product toProduct() => Product(
    id: id,
    price: price,
    name: name,
    description: description,
    image: image,
    weight: weight,
  );
}

@freezed
class ProductDtoSub with _$ProductDtoSub {

  const factory ProductDtoSub({
    required double price,
    required String name,
    required String description,
    required String image,
    required String weight,
  }) = _ProductDtoSub;

  factory ProductDtoSub.fromJson(Map<String, dynamic> source) =>
   _$ProductDtoSubFromJson(source);

}
