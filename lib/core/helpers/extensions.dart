import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtension on num {
  SizedBox get height => SizedBox(height: toDouble().h);
  SizedBox get width => SizedBox(height: toDouble().w);
}

extension BorderRadiusExtension on num {
  BorderRadius get radius => BorderRadius.circular(toDouble().r);
}
