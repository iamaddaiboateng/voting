import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:re_voting/features/polls/view/views/result_polls.dart';
import 'package:re_voting/features/polls/view/widget/single_voting_category.dart';
import 'package:re_voting/utils/TextStyles.dart';
import 'package:re_voting/utils/strings.dart';

List<Map<String, dynamic>> data = [
  {'title': "President", 'count': 5},
  {'title': "Vice President", 'count': 3},
  {'title': "Organiser", 'count': 4},
];

class VotingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Candidates',
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 30.0,
            right: 30.0,
            bottom: 10,
          ),
          child: ListView(
            children: [
              Image.asset(
                'images/voting_logo.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                placeHolderString,
                maxLines: 3,
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return SingleCandidateCategory(
                      title: data[index]['title'], count: data[index]['count']);
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal),
                ),
                onPressed: () {
                  Get.offAll(() => PollsResult());
                },
                child: Text(
                  'Submit',
                  style:
                      TextStyles.title(context).copyWith(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
