import 'package:flutter/material.dart';
import 'package:football_web/screens/detail_team.dart';
import 'package:football_web/screens/first_screen.dart';
import 'package:football_web/screens/page_404.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/detail-team':
        return MaterialPageRoute(
            builder: (_) => DetailTeamPage(settings.arguments));
      case '/home':
        return MaterialPageRoute(builder: (_) => TeamsList());
      default:
        return MaterialPageRoute(builder: (_) => ErrorPage());
    }
  }
}
