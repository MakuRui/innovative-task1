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
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.indigo, Colors.lightBlue],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
          ),
        ),
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
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 10,
                      blurRadius: 3,
                      offset: Offset(0, 0)
                  ),
                  BoxShadow(
                      color: Colors.blue,
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(5, 5)
                  )
                ],
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(profileModel.image),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.indigo, Colors.white],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 3,
                        offset: Offset(0, 0)
                    ),
                    BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(5, 5)
                    )
                  ],
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
              height: 20,
            ),
            Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.indigo, Colors.white],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 3,
                        offset: Offset(0, 0)
                    ),
                    BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(5, 5)
                    )
                  ],
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
              height: 20,
            ),
            Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.indigo, Colors.white],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 3,
                        offset: Offset(0, 0)
                    ),
                    BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(5, 5)
                    )
                  ],
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
              height: 20,
            ),
            Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.indigo, Colors.white],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 3,
                        offset: Offset(0, 0)
                    ),
                    BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(5, 5)
                    )
                  ],
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
              height: 20,
            ),
            Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.indigo, Colors.white],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 5,
                        blurRadius: 3,
                        offset: Offset(0, 0)
                    ),
                    BoxShadow(
                        color: Colors.blue,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(5, 5)
                    )
                  ],
                  borderRadius: BorderRadius.circular(20)
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