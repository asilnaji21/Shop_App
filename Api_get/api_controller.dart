abstract class ApiControlling {
  Future<dynamic> get(String url, {Map<String, dynamic>? queryParametrse});

  Future<dynamic> Post(String url,
      {Map<String, dynamic>? body, Map<String, dynamic>? queryParametrse});
  Future<dynamic> Put(String url,
      {Map<String, dynamic>? body, Map<String, dynamic>? queryParametrse});
}
