import 'package:firstApp/src/pages/containerEx.dart';
import 'package:firstApp/src/pages/grid_view.dart';
import 'package:firstApp/src/pages/list_view.dart';
import 'package:firstApp/src/pages/sliver_list_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firstApp/src/pages/launcher_page.dart';

final pageRoutes = <_Route>[
  _Route(FontAwesomeIcons.heading, "LauncherPage", LauncherPage()),
  _Route(FontAwesomeIcons.slideshare, "Sliver List", SliverListPage()),
  _Route(FontAwesomeIcons.helicopter, "Container EX", ContainerPage()),
  _Route(FontAwesomeIcons.criticalRole, "Grid View", GridViewPage()),
  _Route(FontAwesomeIcons.headset, "List View", ListViewPage()),

];

class _Route{
  final IconData icon;
  final String title;
  final Widget page;
  _Route(this.icon,this.title,this.page);
}

