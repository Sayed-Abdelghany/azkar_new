import 'package:azkar_new/pages/category_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeWidget extends StatelessWidget {
  final String items;
  final  List< String> content;
  final  List< String> title;
  final  List< int> no;
  final List< String> end;
  const HomeWidget({
    super.key, required this.items, required this.content, required this.title, required this.no, required this.end,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CategoryPage(
              items: items,
              no: no,
              end: end,
              title: title,
              content: content,
            )),
          );
        },
        child: Container(
          height: 110.h,
          color: const Color(0xffB8B7BE),
          child: Center(
            child: Text(items,
              style: TextStyle(color: Colors.white,fontSize: 30.sp),),
          ),
        ),
      ),
    );
  }
}