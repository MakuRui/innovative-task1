import 'package:flutter/material.dart';
import 'package:innovative_task1/pages/profile_details.dart';
import '../models/profile_model.dart';

class PacuitTab extends StatefulWidget {
  const PacuitTab({Key? key}) : super(key: key);

  @override
  State<PacuitTab> createState() => _PacuitTabState();
}

class _PacuitTabState extends State<PacuitTab> {

  static List <String> name = [
    'Nico B. Pacuit',
    'Justin B. Pacuit',
    'Nieves B. Pacuit',
    'Rico A. Pacuit',
  ];

  static List aImage = [
    'nico_pacuit.jpg',
    'justin_pacuit.jpg',
    'nieves_pacuit.jpg',
    'rico_pacuit.jpg'];

  static List <String> pRelationship = [
    'Me',
    'Brother',
    'Mother',
    'Father'
  ];

  static List <String> pOccupation = [
    'Student',
    'Chef',
    'House Wife',
    'Government Employee'
  ];

  static List <String> pBirthday = [
    'November 18, 2001',
    'July 9, 1996',
    'June 9, 1972',
    'October 31, 1971'
  ];

  static List <String> pAge = [
    '20',
    '26',
    '50',
    '51'
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
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo,
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