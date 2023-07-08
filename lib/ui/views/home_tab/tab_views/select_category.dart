import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instant_grrocery_delivery/main.dart';

import '../../../../provider/category/category_api_provider.dart';
import '../../../widget/category_item.dart';

class SelectCategory extends StatelessWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                const Text(
                  'Categories',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(Icons.search),
                )
              ],
            ),
          ),
          Consumer(builder: (context, ref, child) {
            final asyncValue = ref.watch(getCategoriesProvider);

            return asyncValue.map(
              data: (data) => Expanded(
                  child: ListView.builder(
                      itemCount: data.value.length,
                      itemBuilder: (context, index) {
                        final category = data.value[index];
                        return CategoryItem(category: category);
                      })),
              error: (error) => Container(),
              loading: (loading) => const CircularProgressIndicator(),
            );
          })
        ],
      ),
    );
  }
}