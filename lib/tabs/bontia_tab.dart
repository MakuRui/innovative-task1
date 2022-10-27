import 'package:flutter/material.dart';
import 'package:innovative_task1/pages/profile_details.dart';
import '../models/profile_model.dart';

class BontiaTab extends StatefulWidget {
  const BontiaTab({Key? key}) : super(key: key);

  @override
  State<BontiaTab> createState() => _BontiaTabState();
}

class _BontiaTabState extends State<BontiaTab> {

  static List <String> name = [
    'Mark Louie Bontia',
    'Meriam Mae Bontia',
    'Merry-Ann Angel Bontia',
    'Gina Bontia',
    'Edgar Bontia'
  ];

  static List aImage = [
    'mark_bontia.jpg',
    'meriam_bontia.jpg',
    'angel_bontia.jpg',
    'gina_bontia.jpg',
    'edgar_bontia.jpg'];

  static List <String> pRelationship = [
    'Me',
    'Sister',
    'Sister',
    'Mother',
    'Father'
  ];

  static List <String> pOccupation = [
    'Student',
    'Student',
    'Student',
    'Business Woman',
    'Taxi Driver'
  ];

  static List <String> pBirthaday = [
    'March 11, 2002',
    'August 02, 2004',
    'March 27 2006',
    'September 28 , 1974',
    'July 30, 1971'
  ];

  static List <String> pAge = [
    '20',
    '18',
    '16',
    '48',
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
        pBirthaday[index],
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