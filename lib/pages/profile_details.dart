import 'package:flutter/material.dart';
import 'package:innovative_task1/models/profile_model.dart';


class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {

  @override
  Widget build(BuildContext context) {

    final profileModel =
    ModalRoute.of(context)!.settings.arguments as ProfileModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(profileModel.name,
          style: const TextStyle(fontSize: 15),
        ),
      ),
      body: Card(
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(profileModel.image),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo,
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                        width: 125,
                        child: Text('Name: ')
                    ),
                    SizedBox(child: Text(profileModel.name)
                    ),
                  ],
                )
            ),
            Container(
              height: 10,
            ),
            Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo,
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                        width: 125,
                        child: Text('Relationship: ')
                    ),
                    SizedBox(child: Text(profileModel.relationship)
                    ),
                  ],
                )
            ),
            Container(
              height: 10,
            ),
            Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo,
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                        width: 125,
                        child: Text('Occupation: ')
                    ),
                    SizedBox(child: Text(profileModel.occupation)
                    ),
                  ],
                )
            ),
            Container(
              height: 10,
            ),
            Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo,
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                        width: 125,
                        child: Text('Birthday: ')
                    ),
                    SizedBox(child: Text(profileModel.birthday)
                    ),
                  ],
                )
            ),
            Container(
              height: 10,
            ),
            Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo,
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                        width: 125,
                        child: Text('Age: ')
                    ),
                    SizedBox(child: Text(profileModel.age)
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}