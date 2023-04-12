import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:re_voting/features/polls/view/views/result_polls.dart';
import 'package:re_voting/features/polls/view/widget/single_candidate_widget.dart';
import 'package:re_voting/utils/TextStyles.dart';

class ConfirmCandidates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Confirmation',
          style: TextStyles.title(context),
        ),
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Get.offAll(() => PollsResult());
            },
            child: Material(
              elevation: 2,
              color: Colors.teal,
              borderRadius: BorderRadius.circular(50),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Confirm',
                    style:
                        TextStyles.title(context).copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Confirm Candidates",
                    style:
                        TextStyles.title(context).copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'You cannot change your candidate after confirmation. '
                    'Please ensure you are confirming the candidate you really '
                    'want to vote for',
                    style:
                        TextStyles.body1(context).copyWith(color: Colors.white),
                  )
                ],
              ),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "President",
              style: TextStyles.subhead(context),
            ),
            SizedBox(
              height: 10,
            ),
            SingleCandidateView(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Vice President",
              style: TextStyles.subhead(context),
            ),
            SizedBox(
              height: 10,
            ),
            SingleCandidateView(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Organizer",
              style: TextStyles.subhead(context),
            ),
            SizedBox(
              height: 10,
            ),
            SingleCandidateView(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
