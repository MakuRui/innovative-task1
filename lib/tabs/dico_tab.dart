import 'package:flutter/material.dart';
import 'package:innovative_task1/pages/profile_details.dart';
import '../models/profile_model.dart';

class DicoTab extends StatefulWidget {
  const DicoTab({Key? key}) : super(key: key);

  @override
  State<DicoTab> createState() => _DicoTabState();
}

class _DicoTabState extends State<DicoTab> {


  static List <String> name = [
    'Sandrine Dico',
    'Francis Dico',
    'Abrilyn Dico',
    'Dante Dico'
  ];

  static List aImage = [
    'sandrine_dico.jpg',
    'francis_dico.jpg',
    'abrilyn_dico.jpg',
    'dante_dico.jpg'
    ];

  static List <String> pRelationship = [
    'Me',
    'Brother',
    'Mother',
    'Father'
  ];

  static List <String> pOccupation = [
    'Student',
    'Student',
    'Barangay Health Worker',
    'Private Employee'
  ];

  static List <String> pBirthday = [
    'December 16, 2001',
    'October 04, 2003',
    'April 22, 1971',
    'April 19, 1959'
  ];

  static List <String> pAge = [
    '20',
    '19',
    '51',
    '63'
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