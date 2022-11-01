import 'package:flutter/material.dart';
import 'package:innovative_task1/pages/profile_details.dart';
import '../models/profile_model.dart';

class SamoyaTab extends StatefulWidget {
  const SamoyaTab({Key? key}) : super(key: key);

  @override
  State<SamoyaTab> createState() => _SamoyaTabState();
}

class _SamoyaTabState extends State<SamoyaTab> {

  static List <String> name = [
    'Kelly Claire Samoya',
    'Stephanie Shane Samoya',
    'Vince Rhey Samoya',
    'Sheila Samoya',
    'Rhey Samoya'
  ];

  static List aImage = [
    'kelly_samoya.jpg',
    'stephanie_samoya.jpg',
    'vince_samoya.jpg',
    'sheila_samoya.jpg',
    'rhey_samoya.jpg'
  ];

  static List <String> pRelationship = [
    'Me',
    'Sister',
    'Brother',
    'Mother',
    'Father'
  ];

  static List <String> pOccupation = [
    'Working Student',
    'Student',
    'Student',
    'Housewife',
    'Construction Worker'
  ];

  static List <String> pBirthday = [
    'January 23, 2001',
    'October 17, 2004',
    'September 03, 2007',
    'November 25, 1979',
    'October 09, 1979'
  ];

  static List <String> pAge = [
    '21',
    '18',
    '15',
    '42',
    '43'
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