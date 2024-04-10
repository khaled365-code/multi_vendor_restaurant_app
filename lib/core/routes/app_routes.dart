import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_vendor_app/features/categories/presentation/views/screens/all_categories.dart';
import 'package:multi_vendor_app/features/entry_point/presentation/views/screens/entrypoint_screen.dart';

import '../../features/entry_point/presentation/view_models/change_entry_point_ui_cubit/change_entry_point_body_cubit.dart';

abstract class AppRoutes {
  static const String initial = '/';
  static const String allcategoriesScreen = '/all_categories_screen';



  static Route? onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.initial:
        return  MaterialPageRoute(builder: (context) => EntryPointScreen(),);
      case AppRoutes.allcategoriesScreen:
        return  MaterialPageRoute(builder: (context) => AllCategories(),);
    }
  }

}