import '../../../core/typedefs.dart';

class HttpResponseHeadersModel {
  final bool error;
  final String message;
  final String? code;

  const HttpResponseHeadersModel({
    required this.error,
    required this.message,
    this.code,
  });

  factory HttpResponseHeadersModel.fromJson(JSON json) {
    return HttpResponseHeadersModel(
      error: (json['error'] as int) == 1,
      message: json['message'] as String,
      code: json['code'] as String?,
    );
  }
}
