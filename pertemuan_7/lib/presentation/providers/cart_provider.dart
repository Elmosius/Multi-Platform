import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pertemuan_7/entities/cart_item.dart';
import 'package:pertemuan_7/entities/product.dart';

class CartNotifier extends StateNotifier<List<CartItem>> {
  CartNotifier() : super([]);

  void addToCart(Product product) {
    state = [
      for (final item in state)
        if (item.product.id == product.id)
          CartItem(product: item.product, quantity: item.quantity + 1)
        else
          item,
      if (!state.any((item) => item.product.id == product.id))
        CartItem(product: product, quantity: 1),
    ];
  }
}

final cartProvider =
    StateNotifierProvider.autoDispose<CartNotifier, List<CartItem>>((ref) {
  return CartNotifier();
});

final cartItemCountProvider = Provider.autoDispose<int>((ref) {
  final cartItems = ref.watch(cartProvider);
  return cartItems.fold(0, (total, item) => total + item.quantity);
});
