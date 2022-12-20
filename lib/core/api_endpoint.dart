// ignore_for_file: constant_identifier_names

import 'config.dart';

/// A utility class for getting paths for API endpoints.
///
/// This class has no constructor and all methods are `static`.
class ApiEndpoint {
  const ApiEndpoint._();

  /// The base url of our REST API, to which all the requests will be sent.
  /// It is supplied at the time of building the apk or running the app:
  /// ```
  /// flutter build apk --debug --dart-define=BASE_URL=www.some_url.com
  /// ```
  /// OR
  /// ```
  /// flutter run --dart-define=BASE_URL=www.some_url.com
  /// ```
  static const baseUrl = Config.baseUrl;

  /// Returns the path for an authentication [endpoint].
  static String auth(AuthEndpoint endpoint) {
    const path = '/auth';

    return '$path/${endpoint.route}';
  }
}

/// A collection of endpoints used for authentication purposes.
enum AuthEndpoint {
  /// An endpoint for login requests.
  LOGIN('login');

  const AuthEndpoint(this.route);

  final String route;
}
