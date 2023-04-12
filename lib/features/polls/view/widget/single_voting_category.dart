import 'package:flutter/material.dart';
import 'package:re_voting/features/polls/view/widget/single_candidate_widget.dart';
import 'package:re_voting/utils/TextStyles.dart';

class SingleCandidateCategory extends StatelessWidget {
  final String title;
  final int count;
  SingleCandidateCategory({@required this.title, @required this.count});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.blue,
          padding: EdgeInsets.all(8),
          child: Text(
            title,
            style: TextStyles.subhead(context).copyWith(
              color: Colors.white,
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: count,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SingleCandidateView(),
                );
              }),
        ),
      ],
    );
  }
}
