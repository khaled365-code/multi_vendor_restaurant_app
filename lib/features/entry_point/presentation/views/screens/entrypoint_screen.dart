import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:multi_vendor_app/features/cart/presentation/views/screens/cart_screen.dart';
import 'package:multi_vendor_app/features/home/presentation/views/screens/home_screen.dart';
import 'package:multi_vendor_app/features/profile/presentation/views/screens/profile_screen.dart';
import 'package:multi_vendor_app/features/search/presentation/views/screens/search_screen.dart';

import '../../../../../core/constants/constants.dart';
import '../../view_models/change_entry_point_ui_cubit/change_entry_point_body_cubit.dart';


class EntryPointScreen extends StatelessWidget {


  EntryPointScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeEntryPointBodyCubit(),
      child: BlocConsumer<ChangeEntryPointBodyCubit, ChangeEntryPointBodyState>(
        listener: (context, state)
        {

        },
        builder: (context, state) {
          final changeEntryPointBody=BlocProvider.of<ChangeEntryPointBodyCubit>(context);
          return Scaffold(
            body: Stack(
              children:
              [
                 if(state is  ChangeEntryPointBodyInitial )
                   HomeScreen(),
                if(state is ChangeToHomeSelected)
                  HomeScreen(),
                if(state is ChangeToSearchSelected)
                  SearchScreen(),
                if(state is ChangeToshopSelected)
                  CartScreen(),
                if(state is ChangeToProfileSelected)
                  MainProfileScreen(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Theme(
                    data: Theme.of(context).copyWith(
                        canvasColor: AppConstants.kPrimary),
                    child: BottomNavigationBar(
                        backgroundColor: AppConstants.kPrimary,
                        selectedIconTheme: IconThemeData(
                            color: AppConstants.kSecondary),
                        unselectedIconTheme: IconThemeData(
                            color: Colors.black38),
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        onTap: (value)
                        {
                          changeEntryPointBody.changeScreen(index: value);
                          log(changeEntryPointBody.currentIndex.toString());
                        },
                        currentIndex: changeEntryPointBody.currentIndex,
                        items:
                        [
                          BottomNavigationBarItem(icon: state is ChangeToHomeSelected
                              ? Icon(AntDesign.appstore1)
                              : Icon(AntDesign.appstore_o), label: 'Home'),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.search), label: 'Search'),
                          BottomNavigationBarItem(icon: Badge(
                              label: Text('1'),
                              child: Icon(FontAwesome.opencart)),
                              label: 'Cart'),
                          BottomNavigationBarItem(icon: state is ChangeToProfileSelected
                              ? Icon(FontAwesome.user_circle)
                              : Icon(FontAwesome.user_circle_o),
                              label: 'Profile'),

                        ]

                    ),
                  ),
                )

              ],
            ),

          );
        },
      ),
    );
  }
}
