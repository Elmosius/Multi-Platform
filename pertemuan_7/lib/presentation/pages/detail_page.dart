import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pertemuan_7/presentation/pages/shopping_cart_page.dart';
import 'package:pertemuan_7/presentation/providers/cart_provider.dart';
import '../providers/product_providers.dart';

class DetailPage extends ConsumerWidget {
  final int productId;

  const DetailPage({super.key, required this.productId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var productDetail = ref.watch(productDetailProvider(productId));
    int itemCount = ref.watch(cartItemCountProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ShoppingCartPage(),
                    ),
                  );
                },
              ),
              if (itemCount >= 0)
                Positioned(
                  left: 15,
                  top: 2,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red.shade600,
                    child: Text(
                      '$itemCount',
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: productDetail.when(
        data: (product) => Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        product.imageUrl,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      product.name,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "USD ${product.price.toStringAsFixed(2)}",
                    ),
                    const SizedBox(height: 20),
                    Text(
                      product.description ?? "No description available.",
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(cartProvider.notifier).addToCart(product);
                      },
                      child: const Text("Buy now"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) =>
            const Center(child: Text("Failed to load product details")),
      ),
    );
  }
}
