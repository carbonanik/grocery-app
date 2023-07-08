import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../main.dart';
import '../../../provider/category/category_api_provider.dart';
import '../../widget/side_tab.dart';
import 'category_product_list.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    Key? key,
    // this.preSelectedTab = 0,
    this.selectedCategoryId,
  }) : super(key: key);

  // final int preSelectedTab;
  final int? selectedCategoryId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            final asyncValue = ref.watch(getCategoriesProvider);

            return asyncValue.map(
              data: (data) => SideTab(
                backgroundColor: backgroundColor,
                tabList: data.value
                    .map((category) => Tab(text: category.name))
                    .toList(),
                tabViewList: data.value
                    .map(
                      (category) => CategoryProductList(
                        selectedCategoryId: category.id,
                      ),
                    )
                    .toList(),
                preSelectedTab: selectedCategoryId != null
                    ? data.value.indexWhere(
                        (category) => category.id == selectedCategoryId,
                      )
                    : 0,
                leading: CircleAvatar(
                  backgroundColor: greenColor,
                ),
              ),
              error: (error) => Text(error.error.toString()),
              loading: (loading) => const CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}