import 'package:flutter/material.dart';
import 'package:innovative_task1/tabs/bagac_tab.dart';
import '../tabs/bontia_tab.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> with SingleTickerProviderStateMixin{
  //My Global Variables
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            title: Column(
              children: const <Widget> [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Innovative Task',
                    style: TextStyle(
                        fontSize: 25
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Group 4',
                    style: TextStyle(
                        fontSize: 10
                    ),
                  ),
                )
              ],
            ),
            leading: Container(
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/family.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(30),
                child: TabBar(
                  indicatorColor: Colors.white,
                    isScrollable: true,
                    controller: tabController,
                    tabs: [
                      Tab(
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/mark_bontia.jpg'),
                                ),
                              ),
                            ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('Bontia Family',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),

                  Tab(
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/francis.jpg'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('Bagac Family',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),


                ]
            )),

        ),
        body: Column(
          children: [
            Expanded(
                child: TabBarView(
                    controller: tabController,
                    children: const [
                      BontiaTab(),
                      BagacTab(),
                    ]
                )
            )
          ],
        )
    );
  }
}