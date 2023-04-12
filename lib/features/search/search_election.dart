import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:re_voting/features/polls/view/views/vote_varification_screen.dart';
import 'package:re_voting/utils/TextStyles.dart';

class SearchPolls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      Faker().person.name(),
                      style: TextStyles.headline(context),
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/150?img=10'),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.white,
                elevation: 5,
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyles.caption(context),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(5),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VoteVerificationScreen(),
                            ),
                          );
                        },
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/image.png'),
                        ),
                        title: Text(
                          'Special Election',
                        ),
                        subtitle: Text(
                          'OutBox Tech Solutions',
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PollsCard extends StatelessWidget {
  const PollsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/image.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Special Election',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'OutBox Tech Solutions',
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Accra, Ghana',
                  style: TextStyle(fontSize: 15),
                ),
                Text('Status: Running'),
                Text('Close: 12/12/21')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
