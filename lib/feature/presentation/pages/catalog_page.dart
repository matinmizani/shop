import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping/feature/data/model/item.dart';
import 'package:shopping/feature/presentation/bloc/shop_bloc.dart';
import 'package:shopping/feature/presentation/bloc/shop_state.dart';
import 'package:shopping/feature/presentation/pages/cart_page.dart';
import 'package:shopping/feature/presentation/widgets/catalog/catalog_list.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    final List<Item> items = context.read<ShopBloc>().items;
    final double price = context.read<ShopBloc>().price;
    return BlocListener<ShopBloc,ShopState>(
      listener: (BuildContext context, state) {
        if(state is AddItemLoaded){
          setState(() {

          });
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Catalog",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.redAccent,
          actions: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CartPage(
                              items: items,
                              price: price,
                            )));
                  },
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 16,
                )
              ],
            )
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(24),
          child: const CatalogList(),
        ),
      ),
    );
  }
}
