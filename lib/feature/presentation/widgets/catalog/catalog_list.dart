import 'package:flutter/material.dart';
import 'package:shopping/feature/data/model/item.dart';
import 'package:shopping/feature/presentation/widgets/catalog/catalog_row.dart';

class CatalogList extends StatefulWidget {
  const CatalogList({super.key});

  @override
  State<CatalogList> createState() => _CatalogListState();
}

class _CatalogListState extends State<CatalogList> {
  final List<Item> items = catalogList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CatalogRow(item: items[index]);
      },
      itemCount: items.length,
      shrinkWrap: true,
      primary: false,
    );
  }
}
