import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instant_grrocery_delivery/main.dart';
import 'package:instant_grrocery_delivery/model/cart/cart_item/cart_item.dart';
import 'package:instant_grrocery_delivery/route/route_helper.dart';
import 'package:instant_grrocery_delivery/util/dimension.dart';

import 'cart_add_remove.dart';

class CartListItem extends StatelessWidget {
  const CartListItem({
    Key? key,
    required this.item,
    required this.onAdd,
    required this.onRemove,
  }) : super(key: key);

  final CartItem item;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Dimension.height(10),
        horizontal: Dimension.width(10),
      ),
      margin: EdgeInsets.only(bottom: Dimension.height(10)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimension.height(10)),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(RouteHelper.getProductDetail(item.product.id));
            },
            child: Image.network(
              baseImageUrl + item.product.image,
              height: Dimension.height(50),
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.image);
              },
            ),
          ),
          SizedBox(
            width: Dimension.width(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.product.name,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: Dimension.width(14)),
              ),
              SizedBox(
                height: Dimension.height(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Dimension.width(100),
                    child: Text(
                      item.product.weight,
                      style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey, fontSize: Dimension.width(13)),
                    ),
                  ),
                  CartAddRemove(
                    quantity: item.count,
                    onAdd: onAdd,
                    onRemove: onRemove,
                  ),
                  SizedBox(
                    width: Dimension.width(90),
                    child: Text(
                      '\$${(item.product.price * item.count).toStringAsFixed((item.product.price * item.count) % 1 == 0 ? 0 : 2)}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: Dimension.width(16)),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
