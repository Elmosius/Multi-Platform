import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pertemuan_7/presentation/providers/cart_provider.dart';
import 'package:pertemuan_7/presentation/providers/page_provider.dart';
import 'package:pertemuan_7/presentation/providers/product_providers.dart';
import 'shopping_cart_page.dart';
import 'detail_page.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentPage = ref.watch(currentPageProvider);
    var products = ref.watch(productsProvider(currentPage));
    int itemCount = ref.watch(cartItemCountProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Multiplatform Mid Exam"),
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
      body: Column(
        children: [
          Expanded(
            child: products.when(
              data: (items) => ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final product = items[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailPage(productId: product.id),
                            ),
                          ),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.grey[300],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                product.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "USD ${product.price.toStringAsFixed(2)}",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[700]),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      ref
                                          .read(cartProvider.notifier)
                                          .addToCart(product);
                                    },
                                    child: const Text("Buy now"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) =>
                  const Center(child: Text("Failed to load products")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: currentPage > 1
                      ? () => ref.read(currentPageProvider.notifier).state--
                      : null,
                  child: const Text("Previous"),
                ),
                const SizedBox(width: 16),
                Text("Page $currentPage"),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () =>
                      ref.read(currentPageProvider.notifier).state++,
                  child: const Text("Next"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
