import 'package:{{project_name}}/core/data/models/response/list_product_model.dart';
import 'package:{{project_name}}/core/domain/entities/list_product_entity.dart';
import 'package:{{project_name}}/core/services/api_services.dart';

abstract class ProductRemoteDataSource {
  Future<ListProductEntity> getProduct();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  const ProductRemoteDataSourceImpl({required this.apiService});

  final ApiService apiService;

  @override
  Future<ListProductEntity> getProduct() async {
    final resp = await apiService.get('/products', queryParameters: {
      "limit": 100,
    });
    final model = ListProductModel.fromJson(resp.data);

    if (resp.statusCode == 200) return model.toEntity();
    throw Exception(resp);
  }
}