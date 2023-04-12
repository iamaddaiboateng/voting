import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:re_voting/features/polls/view/views/timer_page.dart';
import 'package:re_voting/utils/TextStyles.dart';
import 'package:re_voting/utils/strings.dart';

class VoteVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Validation',
          style: TextStyles.title(context),
        ),
        // leading: IconButton(
        //   color: Colors.black,
        //   icon: Icon(Icons.arrow_back_ios),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Container(
                  //   padding: EdgeInsets.all(20),
                  //   decoration: BoxDecoration(
                  //       color: Colors.lightBlue[700],
                  //       borderRadius: BorderRadius.circular(20)),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text('Private Election',
                  //           style: TextStyles.title(context)
                  //               .copyWith(color: Colors.white)),
                  //       SizedBox(
                  //         height: 20,
                  //       ),
                  //       Text(
                  //           'This Election is Private. Complete the form below to continue'
                  //           '\n\nContact Election Administrator for more details',
                  //           style: TextStyles.body1(context)
                  //               .copyWith(color: Colors.white)),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       ElevatedButton(
                  //         style: ButtonStyle(
                  //           backgroundColor:
                  //               MaterialStateProperty.all(Colors.white),
                  //           foregroundColor: MaterialStateProperty.all(
                  //             Colors.blue[900],
                  //           ),
                  //         ),
                  //         onPressed: () {},
                  //         child: Text('Learn More'),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 50,
                  // ),

                  Center(
                    child: Text(
                      'The Republic of Ghana',
                      style: TextStyles.headline(context).copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text('Presidential Elections',
                        style: TextStyles.title(context)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    placeHolderString,
                    maxLines: 3,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.blue,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Login to Vote',
                      style: TextStyles.subhead(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Material(
                          color: Colors.blue[50],
                          elevation: 2,
                          borderRadius: BorderRadius.circular(10),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Election Id',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Material(
                          color: Colors.blue[50],
                          elevation: 2,
                          borderRadius: BorderRadius.circular(10),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Voter Id',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Get.offAll(() => TimerPage());
                            },
                            child: Text('Submit'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
