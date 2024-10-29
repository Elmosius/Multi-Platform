import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/cart_provider.dart';

class ShoppingCartPage extends ConsumerWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItems = ref.watch(cartProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Cart"),
      ),
      body: cartItems.isEmpty
          ? const Center(child: Text("Your cart is empty"))
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  title: Text(item.product.name),
                  trailing: Text("x${item.quantity}"),
                );
              },
            ),
    );
  }
}
