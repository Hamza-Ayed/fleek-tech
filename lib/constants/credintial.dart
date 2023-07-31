import 'dart:convert';

class AppCredintials {
  static const String basicAuthCredentials = 'hamzaayedphp:malDEV@2101';
  static const String serverAPI =
      'AAAAlJe7ZTE:APA91bHTc8VOM26dIZ8DKL9zxhMSPAffgLW4w3PCtj3KHtLLpMRWs_h14tLa7zTXZspPL4Vn-Pbcgahp0GudzYF6ARNfCHfoquWYztuej9JCjx9mBUiKU6MyrDMDQ_JwYmH_aV5aJzOJ';
  static const String mapAPIKEY = 'AIzaSyC1pjEgB78OFz_-2nwTvGltHjXho0y99MY';
  String getBasicAuthCredentials() {
    return base64Encode(utf8.encode(basicAuthCredentials));
  }
}
