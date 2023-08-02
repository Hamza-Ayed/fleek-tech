import 'package:url_launcher/url_launcher.dart';

void launchUrl1(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    launchUrl(Uri.parse(url));
  } else {
    print('Could not launch $url');
  }
}
