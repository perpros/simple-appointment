abstract class IRequestHandler {
  Future<dynamic> getReq(
      {required String url,
      bool needAth = false,
      bool forceDontAuth = false,
      Map<String, String> optionalHeaders = const {}});

  Future<Map<String, dynamic>> refresh();
  Future<dynamic> postReq(
      {required String url,
      required Object? fields,
      bool forceDontAuth = false,
      Map<String, String> optionalHeaders = const {},
      bool needAth = false});

  Future<Map<String, dynamic>> putReq(
      {required String url,
      required Object? fields,
      bool forceDontAuth = false,
      Map<String, String> optionalHeaders = const {},
      bool needAth = false});

  Future<dynamic> delReq(
      {required String url,
      required Object? fields,
      bool forceDontAuth = false,
      Map<String, String> optionalHeaders = const {},
      bool needAth = false});
}
