import 'package:flutter/material.dart';
import 'package:shopping/feature/data/model/item.dart';

class CartRow extends StatefulWidget {
  const CartRow({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  State<CartRow> createState() => _CartRowState();
}

class _CartRowState extends State<CartRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            color: widget.item.color,
          ),
          const SizedBox(
            width: 16,
          ),
          Text("${widget.item.name}"),
          const Expanded(child: SizedBox()),
          Text("price:${widget.item.price}\$"),
        ],
      ),
    );
  }
}
