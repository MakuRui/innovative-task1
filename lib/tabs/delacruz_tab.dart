import 'package:flutter/material.dart';
import 'package:innovative_task1/pages/profile_details.dart';
import '../models/profile_model.dart';

class DelaCruz extends StatefulWidget {
  const DelaCruz({Key? key}) : super(key: key);

  @override
  State<DelaCruz> createState() => _DelaCruzState();
}

class _DelaCruzState extends State<DelaCruz> {
  static List <String> name = [
    'Erickson Dela Cruz',
    'Christine Dela Cruz',
    'Jefferson Dela Cruz',
    'Fortunato Dela Cruz Jr.',

  ];

  static List aImage = [
    'erickson_delacruz.jpg',
    'christine_delacruz1.jpg',
    'jefferson_delacruz.jpg',
    'fortunatodelacruz.png',
  ];

  static List <String> pRelationship = [
    'Me',
    'Mother',
    'Brother',
    'Father',

  ];

  static List <String> pOccupation = [
    'Student',
    'Housewife',
    'Student',
    'Government Employee'
  ];

  static List <String> pBirthday = [
    'November 1, 2001',
    'March 21, 1969',
    'November 9, 1990',
    'June 2, 1964'
  ];

  static List <String> pAge = [
    '20',
    '53',
    '30',
    '58'
  ];

  final List<ProfileModel> profileData = List.generate(
      name.length,
          (index)
      => ProfileModel(
        name[index],
        '${aImage[index]}',
        pRelationship[index],
        pOccupation[index],
        pBirthday[index],
        pAge[index],
      )
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
          itemCount: profileData.length,
          itemBuilder: (context, index){
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.indigo, Colors.blueGrey],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  leading: Container(
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(profileData[index].image),
                        )
                    ),
                  ),
                  title: Text(profileData[index].name,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white
                    ),
                  ),
                  subtitle: Text(profileData[index].relationship,
                    style: const TextStyle(
                        fontSize: 10,
                        color: Colors.white
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileDetails(),
                            settings: RouteSettings(
                                arguments: profileData[index]
                            )
                        )
                    );
                  },
                ),
              ),
            );
          }
      ),
    );
  }
}

