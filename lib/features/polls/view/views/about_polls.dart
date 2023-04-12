import 'package:flutter/material.dart';
import 'package:re_voting/features/polls/view/views/voting_screen.dart';
import 'package:re_voting/utils/TextStyles.dart';
import 'package:re_voting/utils/strings.dart';

class PollsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Special Election',
              style: TextStyles.title(context),
            ),
            Text(
              'OutBox Tech Solutions',
              style: TextStyles.body1(context),
            ),
          ],
        ),
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VotingScreen(),
              ),
            );
          },
          child: Text('Start Voting'),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(
              "About this Election",
              style: TextStyles.title(context),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              placeHolderString,
              style: TextStyles.body1(context),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Election Rules",
              style: TextStyles.title(context),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              placeHolderString,
              maxLines: 3,
              style: TextStyles.body1(context),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              placeHolderString,
              maxLines: 3,
              style: TextStyles.body1(context),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              placeHolderString,
              maxLines: 3,
              style: TextStyles.body1(context),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              placeHolderString,
              maxLines: 3,
              style: TextStyles.body1(context),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              placeHolderString,
              maxLines: 3,
              style: TextStyles.body1(context),
            ),
          ],
        ),
      ),
    );
  }
}
