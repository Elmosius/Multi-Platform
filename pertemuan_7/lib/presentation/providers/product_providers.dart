import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pertemuan_7/entities/product.dart';
import 'package:pertemuan_7/repositories/product_repositories.dart';

var productRepositoryProvider =
    Provider.autoDispose((ref) => ProductRepository());

var productsProvider =
    FutureProvider.family.autoDispose<List<Product>, int>((ref, page) {
  return ref.read(productRepositoryProvider).fetchProducts(page);
});

var productDetailProvider =
    FutureProvider.family.autoDispose<Product, int>((ref, id) {
  return ref.read(productRepositoryProvider).fetchProductDetail(id);
});
