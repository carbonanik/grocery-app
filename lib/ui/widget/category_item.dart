import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/route/app_router.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import '../../model/category/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.toNamed(
        //   RouteHelper.getCategoryTab(selectedCategoryId: category.id),
        // );
        AppRouter().push(CategoryTabRoute(selectedCategoryId: category.id));
      },
      child: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(context.w(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(context.w(8)),
                child: Image.network(
                  baseImageUrl + category.image,
                  fit: BoxFit.cover,
                  height: context.w(40),
                  width: context.w(40),
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.image);
                  },
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              category.name,
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
