import 'package:catalog/src/domain/entities/category.dart';
import 'package:catalog/src/domain/repositories/catalog_repository.dart';
import 'package:catalog/src/presentation/bloc/catalog_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

export 'catalog_state.dart';

class CatalogCubit extends Cubit<CatalogState> {
  CatalogCubit(this._repository) : super(const CatalogLoading());

  final CatalogRepository _repository;

  Future<void> load() async {
    emit(const CatalogLoading());
    final productsResult = await _repository.getProducts();
    final categoriesResult = await _repository.getCategories();

    productsResult.fold(
      (failure) => emit(CatalogError(failure.message ?? 'Error cargando productos')),
      (products) {
        final categories = categoriesResult.fold<List<Category>>(
          (_) => const [],
          (c) => c,
        );
        emit(CatalogReady(
          allProducts: products,
          categories: categories,
          query: '',
          selectedCategoryId: null,
        ));
      },
    );
  }

  void setQuery(String query) {
    final current = state;
    if (current is CatalogReady) {
      emit(current.copyWith(query: query));
    }
  }

  void selectCategory(String? categoryId) {
    final current = state;
    if (current is CatalogReady) {
      emit(current.copyWith(selectedCategoryId: categoryId));
    }
  }
}
