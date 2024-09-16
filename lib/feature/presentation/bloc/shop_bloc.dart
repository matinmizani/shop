import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping/feature/data/model/item.dart';
import 'package:shopping/feature/presentation/bloc/shop_state.dart';

class ShopBloc extends Cubit<ShopState>{
  ShopBloc():super(ShopInitial());
  List<Item> items =[];
  double price =0;

  void addItem(Item item){
    emit(AddItemLoaded());
    items.add(item);
    price+=item.price;
  }
}