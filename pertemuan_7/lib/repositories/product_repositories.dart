import 'package:dio/dio.dart';
import 'package:pertemuan_7/entities/product.dart';

class ProductRepository {
  final Dio _dio = Dio();

  Future<List<Product>> fetchProducts(int page) async {
    try {
      final response = await _dio
          .get('https://uts-multiplatform.globeapp.dev/getProducts?page=$page');
      List<dynamic> data = response.data['items'];
      return data.map((item) => Product.fromJson(item)).toList();
    } catch (e) {
      throw Exception('Failed to load products');
    }
  }

  Future<Product> fetchProductDetail(int id) async {
    try {
      final response = await _dio.post(
        'https://uts-multiplatform.globeapp.dev/getProductDetail',
        data: {'id': id},
      );
      return Product.fromJson(response.data['data']);
    } catch (e) {
      throw Exception('Failed to load product detail');
    }
  }
}
