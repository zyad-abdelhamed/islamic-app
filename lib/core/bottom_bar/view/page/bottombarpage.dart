import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluuuuuuuuter/core/bottom_bar/controller/cubit/bottombar_cubit.dart';
import 'package:fluuuuuuuuter/features/elec/view/page/elec_rosary_page.dart';
import 'package:fluuuuuuuuter/features/prayer_time/view/prayer_time.dart';
import 'package:fluuuuuuuuter/features/rtabel/view/rtabel_page.dart';
import 'package:fluuuuuuuuter/features/supplications/buttons/view/page/buttons_page.dart';

// ignore: must_be_immutable
class bottomNavigationBar extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: BlocProvider(
          create: (context) => BottombarCubit(),
          child: BlocBuilder<BottombarCubit, BottombarState>(
            builder: (context, state) {
              final BottombarCubit controller=context.read<BottombarCubit>();
              return Scaffold(
                body: PageView(
              controller: controller.pageController,
              onPageChanged: controller.onChangeTabIndex,
              children:  [
                Buttons_page(),
                elec_rosary_page(),
                Prayer(),
                rtabel_page()
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(elevation: 0,
              selectedItemColor: Colors.green,
              currentIndex: controller.selectedTapIndex,
              onTap: controller.onChangeTabIndex,
              unselectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.list_number_rtl), label: 'الأذكار'),
                BottomNavigationBarItem( icon: Icon(CupertinoIcons.circle), label: 'السبحة الالكترونية'),
                BottomNavigationBarItem(icon: Icon(Icons.mosque_outlined), label: 'مواقيت الصلاة'),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.table), label: 'جدول رمضان'),
              ],
            ),
          
              );
            },
          ),
        ));
  }
}
