import 'package:{{project_name}}/core/data/models/failures/failure.dart';
import 'package:{{project_name}}/core/domain/entities/list_product_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRepositories {
  Future<Either<Failure, ListProductEntity>> getProduct();
}
