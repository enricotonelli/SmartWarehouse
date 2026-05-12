class Routes {
  static const String login = '/login';
  static const String home = '/home';
  static const String catalog = '/catalog';
  static const String catalogDetailPattern = '/catalog/:id';

  static String catalogDetail(String productId) => '/catalog/$productId';
}
