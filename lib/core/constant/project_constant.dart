import 'package:vexana/vexana.dart';

class ProjectConstants {
  static ProjectConstants? _instace;
  static ProjectConstants get instance {
    _instace ??= ProjectConstants._init();
    return _instace!;
  }

  static void init(String? baseUrl) {
    _instace ??= ProjectConstants._normal(baseUrl);
  }

  static const String baseUrl = 'https://reqres.in/';

  late final String assetLangPath;

  late INetworkManager networkManager;

  ProjectConstants._init() {
    networkManager = _networkManager(baseUrl);
  }

  ProjectConstants._normal(String? baseUrl) {
    networkManager = _networkManager(baseUrl ?? '');
  }

  NetworkManager _networkManager(String baseUrl) {
    return NetworkManager(
      isEnableLogger: false,
      options: BaseOptions(baseUrl: baseUrl),
    );
  }
}
