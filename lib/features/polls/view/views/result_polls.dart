import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:re_voting/features/polls/view/views/vote_varification_screen.dart';
import 'package:re_voting/utils/TextStyles.dart';
import 'package:re_voting/utils/charts/horizontal_bar_chart.dart';

class PollsResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Results',
            style: TextStyles.title(context),
          ),
          leading: null),
      bottomNavigationBar: Container(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Get.offAll(
                () => VoteVerificationScreen(),
              );
            },
            child: Material(
              elevation: 2,
              color: Colors.teal,
              borderRadius: BorderRadius.circular(50),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Done',
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
            Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Result Overview', style: TextStyles.title(context)),
                    Divider(),
                    Text(
                      'Total Votes:',
                      style: TextStyles.body1(context).copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '3520',
                      style: TextStyles.display1(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Invalid Votes:',
                      style: TextStyles.body1(context).copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '520',
                      style: TextStyles.display1(context),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'President',
                      style: TextStyles.title(context),
                    ),
                    Divider(),
                    Container(
                        height: 200,
                        child: HorizontalBarLabelChart.withSampleData())
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vice President',
                      style: TextStyles.title(context),
                    ),
                    Divider(),
                    Container(
                        height: 50.0 * 4,
                        child: HorizontalBarLabelChart.withSampleData())
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Organizer',
                      style: TextStyles.title(context),
                    ),
                    Divider(),
                    Container(
                        height: 200,
                        child: HorizontalBarLabelChart.withSampleData())
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
