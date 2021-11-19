import 'package:flutter/material.dart';
import 'package:portifolio/app/constants.dart';
import 'package:portifolio/app/models/feedback.dart';
import 'package:portifolio/app/responsive.dart';
import 'package:portifolio/app/sections/feedback/components/feedback_card.dart';
import 'package:portifolio/app/sections/service_section/components/section_title.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding * 2.5,
      ),
      constraints: BoxConstraints(maxWidth: 1600),
      child: Column(
        children: [
          SectionTitle(
            title: "Feedbaks",
              
            subTitle: "Feedbacks que me inspiram",
            color: Color(0xFF000B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                feedbacks.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: FeedbackCard(
                    index: index,
                    press: () {},
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
