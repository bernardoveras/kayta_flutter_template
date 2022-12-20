import '../../../core/typedefs.dart';
import 'http.dart';

class HttpResponseModel<T> {
  final HttpResponseHeadersModel headers;
  final T body;

  const HttpResponseModel({
    required this.headers,
    required this.body,
  });

  factory HttpResponseModel.fromJson(JSON json) {
    return HttpResponseModel(
      headers: HttpResponseHeadersModel.fromJson(
        json['headers'] as JSON,
      ),
      body: json['body'] as T,
    );
  }
}
