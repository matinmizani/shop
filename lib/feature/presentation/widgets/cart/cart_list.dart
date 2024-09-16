import 'package:flutter/material.dart';
import 'package:shopping/feature/data/model/item.dart';

import 'cart_row.dart';

class CartList extends StatefulWidget {
  const CartList({super.key, required this.items,});
  final List<Item>items;

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CartRow(
          item: widget.items[index],
        );
      },
      itemCount: widget.items.length,
      shrinkWrap: true,
      primary: false,
    );
  }
}
