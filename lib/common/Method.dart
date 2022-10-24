import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Method {
  static launchURL(String link) async {
    final url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      debugPrint('cant launch url');
    }
  }

  static launchCaller() async {
    final url = Uri.parse("tel:923062196778");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      debugPrint('cant launch url');
    }
  }

  static launchEmail() async {
    final url = Uri.parse("mailto:mianzohaibiftikhar@gmail.com");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      debugPrint('cant launch url');
    }
  }
}
