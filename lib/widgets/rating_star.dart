import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({Key? key, required this.value}) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    String stars = "";
    for (int count = 0; count < value; count++) {
      stars += "⭐";
    }

    return Text(stars);
  }
}