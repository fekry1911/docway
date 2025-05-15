import 'package:flutter/cupertino.dart';

import 'custom_shape.dart';

class SpecialityPart extends StatelessWidget {
  const SpecialityPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomShape(image: "assets/part/person.png",text:"General"),
        Spacer(),
        CustomShape(image: "assets/part/Brain.png",text:"Neurologic"),
        Spacer(),
        CustomShape(image: "assets/part/baby.png",text:"Pediatric"),
        Spacer(),
        CustomShape(image: "assets/part/Kidneys.png",text:"Radiology"),
      ],
    );
  }
}
