import 'package:flutter/material.dart';
import 'package:portifolio/app/responsive.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    photoProfile() {
      if (Responsive.isVerySmall(context)) {
        return null;
      } else {
        return Image.asset("assets/images/person.png");
      }
    }

    boxConstraints() {
      if (Responsive.isDesktop(context)) {
        return BoxConstraints(maxWidth: 639, maxHeight: 860);
      } else if (Responsive.isTablet(context)) {
        return BoxConstraints(maxWidth: 640, maxHeight: 650);
      } else {
        return BoxConstraints(maxWidth: 200, maxHeight: 350);
      }
    }

    return Container(
      constraints: boxConstraints(),
      child: photoProfile(),
    );
  }
}
