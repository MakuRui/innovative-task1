import 'package:flutter/material.dart';
import 'package:innovative_task1/tabs/bagac_tab.dart';
import 'package:innovative_task1/tabs/dico_tab.dart';
import 'package:innovative_task1/tabs/radaza_tab.dart';
import 'package:innovative_task1/tabs/samoya_tab.dart';
import '../tabs/bontia_tab.dart';
import '../tabs/delacruz_tab.dart';
import '../tabs/pacuit_tab.dart';




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
      length: 7,
      vsync: this,
      initialIndex: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
              preferredSize: const Size.fromHeight(60),
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.lightBlue
                  ),
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
                      Tab(
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('erickson_delacruz.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('Dela Cruz Family',
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
                                  image: AssetImage('nico_pacuit.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('Pacuit Family',
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
                                  image: AssetImage('sean_Radaza.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('Radaza Family',
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
                                  image: AssetImage('assets/kelly_samoya.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('Samoya Family',
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
                                  image: AssetImage('sandrine_dico.jpg'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text('Dico Family',
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
                      DelaCruz(),
                      PacuitTab(),
                      RadazaTab(),
                      SamoyaTab(),
                      DicoTab()
                    ]
                )
            )
          ],
        )
    );
  }
}