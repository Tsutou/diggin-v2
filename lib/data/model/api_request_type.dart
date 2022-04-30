enum ApiRequestType {
  get,
  post,
  put,
}

extension ApiRequestTypeExtension on ApiRequestType {
  String methodString() {
    switch (this) {
      case ApiRequestType.get:
        return 'GET';
      case ApiRequestType.post:
        return 'POST';
      case ApiRequestType.put:
        return 'PUT';
    }
  }
}
