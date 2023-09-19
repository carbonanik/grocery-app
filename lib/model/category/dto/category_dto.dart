import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instant_grrocery_delivery/model/category/category.dart';
import 'package:instant_grrocery_delivery/model/product/dto/product_dto.dart';

part 'category_dto.freezed.dart';

part 'category_dto.g.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const factory CategoryDto({
    required int id,
    required CategorySubDto attributes,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> source) => _$CategoryDtoFromJson(source);
}

extension CategoryDtoX on CategoryDto {
  Category toCategory() => Category(
        id: id,
        name: attributes.name,
        description: attributes.description,
        image: attributes.image,
        products: attributes.products?.data.map((e) => e.toProduct()).toList(),
      );
}

@freezed
class CategorySubDto with _$CategorySubDto {
  const factory CategorySubDto({
    required String name,
    required String image,
    required String description,
    ProductsInCategoryDto? products,
  }) = _CategorySubDto;

  factory CategorySubDto.fromJson(Map<String, dynamic> source) => _$CategorySubDtoFromJson(source);
}

@freezed
class ProductsInCategoryDto with _$ProductsInCategoryDto {
  const factory ProductsInCategoryDto({
    required List<ProductDto> data,
  }) = _ProductsInCategoryDto;

  factory ProductsInCategoryDto.fromJson(Map<String, dynamic> source) => _$ProductsInCategoryDtoFromJson(source);
}
