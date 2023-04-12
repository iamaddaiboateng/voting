import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:get/get.dart';
import 'package:re_voting/features/polls/view/views/voting_screen.dart';
import 'package:re_voting/utils/TextStyles.dart';

class TimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int endTime = DateTime.now().millisecondsSinceEpoch + 10000000 * 30;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CountdownTimer(
              endTime: endTime,
              widgetBuilder: (_, CurrentRemainingTime time) {
                if (time == null) {
                  return Text('Game over');
                }
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal[100],
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Election Count Down',
                            style: TextStyles.subhead(context),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '${time.days ?? 0} days, ${time.hours ?? 0} hours,'
                            ' ${time.min ?? 0} mins, ${time.sec} sec',
                            style: TextStyles.title(context),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.teal,
                            ),
                            onPressed: () {
                              Get.to(() => VotingScreen());
                            },
                            child: Text('Proceed to Vote'),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
