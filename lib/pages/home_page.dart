import 'package:azkar_new/const/category_list.dart';
import 'package:azkar_new/const/items_list.dart';
import 'package:azkar_new/widgets/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('آذكار الصباح والمساء',
          style: TextStyle(fontSize: 28.sp),),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return
            HomeWidget(

              items: items[index],
              content: content[index],
              title: title[index],
              no: no[index],
              end: end[index],
            );
        },
      ),
    );
  }
}

