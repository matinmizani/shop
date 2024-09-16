import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping/feature/data/model/item.dart';
import 'package:shopping/feature/presentation/bloc/shop_bloc.dart';
import 'package:shopping/feature/presentation/widgets/cart/cart_list.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key, required this.items, required this.price});
  final List<Item>items;
  final double price;

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>ShopBloc(),
      child:  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Cart",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.redAccent,
        ),
        body:  Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: CartList(items: widget.items, )),
              ElevatedButton(onPressed: (){}, child: Text("price: ${widget.price}"))
            ],
          ),
        ),
      ),
    );
  }
}
