import 'package:flutter/material.dart';
import 'package:portifolio/app/constants.dart';
import 'package:portifolio/app/models/recent_work.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    Key? key,
    required this.index,
    required this.press,
  }) : super(key: key);

  final int index;
  final Function press;

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.press();
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(recenteWorks[widget.index].image),
            ),
            
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(recenteWorks[widget.index].category.toUpperCase()),
                  SizedBox(height: kDefaultPadding / 2),
                  Text(
                    recenteWorks[widget.index].title,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(height: 1.5),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  /*
                  Text(
                    "Mais Detalhes",
                    style: TextStyle(decoration: TextDecoration.underline),
                  )
                  */
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
