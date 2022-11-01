import 'package:flutter/material.dart';
import 'package:innovative_task1/pages/profile_details.dart';
import '../models/profile_model.dart';


class BagacTab extends StatefulWidget {
  const BagacTab({Key? key}) : super(key: key);

  @override
  State<BagacTab> createState() => _BagacTabState();
}

class _BagacTabState extends State<BagacTab> {

  static List <String> name = [
    'Francis Gabriel Bagac',
    'Lorraine Joy Bagac',
    'Maria Lyra Bagac',
    'Teofilo Bagac'
  ];

  static List aImage = [
    'francis.jpg',
    'lorraine.jpg',
    'marialyra.jpg',
    'teofilo.jpg'];

  static List <String> pRelationship = [
    'Me',
    'Sister',
    'Mother',
    'Father'
  ];

  static List <String> pOccupation = [
    'Student',
    'Teacher',
    'House Wife',
    'OFW'
  ];

  static List <String> pBirthday = [
    'December 1, 2000',
    'May 18, 1997',
    'May 27, 1966',
    'March 15, 1959'
  ];

  static List <String> pAge = [
    '21',
    '25',
    '56',
    '63',
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
