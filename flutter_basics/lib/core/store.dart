import 'package:flutter_basics/models/cart_model.dart';
import 'package:flutter_basics/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  // ignore: non_constant_identifier_names
  CartModel cart_model;

  MyStore()
      : catalog = CatalogModel(),
        cart_model = CartModel() {
    cart_model.catalog = catalog;
  }
}
