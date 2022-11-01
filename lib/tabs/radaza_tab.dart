import 'package:flutter/material.dart';
import 'package:innovative_task1/pages/profile_details.dart';
import '../models/profile_model.dart';

class RadazaTab extends StatefulWidget {
  const RadazaTab({Key? key}) : super(key: key);

  @override
  State<RadazaTab> createState() => _RadazaTabState();
}

class _RadazaTabState extends State<RadazaTab> {


  static List <String> name = [
    'Sean Joshua Radaza',
    'Alfredo Ramon C. Lupisan',
    'Blossom mae Radaza',
    'Isiah Stephan Radaza',
    'Nikesha Allysson Radaza',
    'Alfredo Ramon R. Lupisan Jr.',
    'Herly Bemwdict R. Canoy',
    'Harley Dave R. Canoy'
  ];

  static List aImage = [
      'sean_Radaza.jpg',
      'Alfredo_Radaza.jpg',
      'Blossommae_Radaza.jpg',
      'isiah_Radaza.jpg',
      'nikesha_Radaza.jpg',
      'junior_Radaza.jpg',
      'herly_Radaza.jpg',
      'dave_Radaza.jpg'
  ];

  static List <String> pRelationship = [
    'Me',
    'Father',
    'Mother',
    'Brother',
    'Sister',
    'Brother',
    'Brother',
    'Brother',

  ];

  static List <String> pOccupation = [
    'Student',
    'Diseased',
    'Single Mom',
    'Student',
    'Student',
    'Student',
    'Student',
    'Student'
  ];

  static List <String> pBirthday = [
    'March 10, 1999',
    '--------------',
    'March 8, 1978',
    'February 22, 2001',
    'March 7, 2003',
    'May 21, 2005',
    'June 9, 2010',
    'February 10, 2012'
  ];

  static List <String> pAge = [
    '23',
    '56',
    '40',
    '21',
    '19',
    '17',
    '13',
    '10',
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
          itemBuilder: (context, index) {
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
                        )),
                  ),
                  title: Text(
                    profileData[index].name,
                    style: const TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  subtitle: Text(
                    profileData[index].relationship,
                    style: const TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileDetails(),
                            settings:
                                RouteSettings(arguments: profileData[index])));
                  },
                ),
              ),
            );
          }),
    );
  }
}
