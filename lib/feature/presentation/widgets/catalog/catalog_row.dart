import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping/analytics_service.dart';
import 'package:shopping/feature/data/model/item.dart';
import 'package:shopping/feature/presentation/bloc/shop_bloc.dart';

class CatalogRow extends StatefulWidget {
  const CatalogRow({super.key, required this.item});

  final Item item;

  @override
  State<CatalogRow> createState() => _CatalogRowState();
}

class _CatalogRowState extends State<CatalogRow> {
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
          Column(
            children: [
              Text("${widget.item.name}"),
              Text("${widget.item.price}\$"),
            ],
          ),
          const Expanded(child: SizedBox()),
          ElevatedButton(
              onPressed: () {
                AnalyticsService().logAddItem().then((value) => debugPrint("item added to firebase"));
                context.read<ShopBloc>().addItem(widget.item);
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(
                      content: Text("${widget.item.name} added to Cart")));
              },
              child: const Text("Add"))
        ],
      ),
    );
  }
}
