import 'package:catalog/src/data/repositories/mock_catalog_repository.dart';
import 'package:catalog/src/domain/entities/product.dart';
import 'package:catalog/src/domain/repositories/catalog_repository.dart';
import 'package:catalog/src/presentation/bloc/catalog_cubit.dart';
import 'package:catalog/src/presentation/pages/catalog_page.dart';
import 'package:catalog/src/presentation/pages/product_detail_page.dart';
import 'package:commons/helpers/injector/injector.dart';
import 'package:flutter/widgets.dart';

class CatalogFeatureBuilder {
  static void injectDependencies() {
    Injector.i
      ..registerLazySingleton<CatalogRepository>(MockCatalogRepository.new)
      ..registerLazySingleton<CatalogCubit>(
        () => CatalogCubit(Injector.i.resolve<CatalogRepository>()),
      );
  }

  static Widget buildCatalogPage() {
    return CatalogPage(cubit: Injector.i.resolve<CatalogCubit>());
  }

  static Widget buildProductDetailPage(
    String productId, {
    required void Function(Product product) onAddToCart,
  }) {
    return ProductDetailPage(
      productId: productId,
      repository: Injector.i.resolve<CatalogRepository>(),
      onAddToCart: onAddToCart,
    );
  }
}
