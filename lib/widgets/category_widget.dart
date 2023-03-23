import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CategoryWidget extends StatefulWidget {
  final   String content;
  final   String title;
 final  String end;
   const CategoryWidget({Key? key, required this.content, required this.title, required this.end}) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 360.h,
      child: IntrinsicHeight(
        child:
        ListView(
          shrinkWrap: true,
          children: [
            Text(widget.title,style: TextStyle(
                fontSize: 20.sp,color: Colors.red,fontWeight: FontWeight.bold),
              textDirection: TextDirection.rtl,
            ),
            Text(widget.content,style: TextStyle(
                fontSize: 22.sp,color: Colors.white),
              textDirection: TextDirection.rtl,
            ),
            Text(widget.end,style: TextStyle(
                fontSize: 20.sp,color: Colors.green),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}
