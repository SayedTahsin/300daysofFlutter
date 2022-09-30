
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../theme.dart';

class CalatogImage extends StatelessWidget {
  final String image;
  const CalatogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.p8.color(context.accentColor).rounded.make().p16().w40(context);
  }
}