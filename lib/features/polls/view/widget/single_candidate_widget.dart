import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:re_voting/utils/TextStyles.dart';

class SingleCandidateView extends StatefulWidget {
  @override
  _SingleCandidateViewState createState() => _SingleCandidateViewState();
}

class _SingleCandidateViewState extends State<SingleCandidateView> {
  Faker faker = Faker();
  double containerSized = 80;
  double selectedOpacity = 0.0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Checkbox(
                value: isSelected,
                onChanged: (value) {
                  setState(() {
                    isSelected = value;
                  });
                },
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: isSelected ? 100 : 60,
            width: isSelected ? 100 : 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage("https://i.pravatar.cc/150?img=13"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.grey,
                  isSelected ? null : BlendMode.color,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  faker.person.name(),
                  style: TextStyles.body1(context).copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  faker.person.lastName(),
                  style: TextStyles.caption(context),
                ),
                SizedBox(
                  height: 10,
                ),
                // OutlinedButton(
                //   style: ButtonStyle(
                //       backgroundColor: MaterialStateProperty.all<Color>(
                //           isSelected ? Colors.blue : Colors.white)),
                //   onPressed: () {
                //     setState(() {
                //       containerSized = 120;
                //       isSelected = !isSelected;
                //     });
                //   },
                //   child: Text(
                //     isSelected ? "Selected" : 'Select',
                //     style: TextStyle(
                //         color: isSelected ? Colors.white : Colors.blue),
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
