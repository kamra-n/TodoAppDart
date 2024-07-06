import 'package:assignment_four/widgets/priority_task_card.dart';
import 'package:assignment_four/widgets/task_list_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0XFF8A9DFF),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Notes',
                        style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w700,
                            height: 1.4),
                      ),
                      Text(
                        'Have a great Day',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                          AssetImage('./assets/images/profile.jpg')),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22.0),
              child: Text(
                'My Priority Task',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, position) {
                  return const PriorityTaskCard(
                    time: '2 hours Ago',
                    title: 'Mobile App UI Design',
                    description: 'using Figma and other tools',
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 10.0, left: 10.0, right: 20.0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'My Task',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Ali');
                      },
                      child: const CircleAvatar(
                          radius: 20.0,
                          backgroundImage:
                              AssetImage('./assets/images/button.png')),
                    )
                  ]),
            ),
            Expanded(
                child: Column(
              children: [
                const TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(text: 'Todays Task'),
                    Tab(text: 'Weekly Task'),
                    Tab(text: 'Montly Task'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return const TaskListCard();
                          }),
                      ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return const TaskListCard();
                          }),
                      ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return const TaskListCard();
                          }),
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    ));
  }
}
