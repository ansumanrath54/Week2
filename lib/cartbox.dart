import 'package:hive/hive.dart';

part 'cartbox.g.dart';


@HiveType(typeId: 0)
class CartBox {
  @HiveField(0)
  late final String productId;
  @HiveField(1)
  late final int quantity;

  CartBox(this.productId, this.quantity);
}