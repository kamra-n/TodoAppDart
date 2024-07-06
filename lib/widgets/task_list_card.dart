import 'package:flutter/material.dart';

class TaskListCard extends StatelessWidget {
  const TaskListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(
          vertical: 15.0, horizontal: 7.0),
      height: 56.0,
      width: 379.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Complete Assignment #2',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color(0XFF254069),
                        ),
                        child: const Text(
                          'To do',
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                        size: 18.0,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      const Text(
                        '13 September 2022',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Image.asset(
                        './assets/images/redFlag.png',
                        height: 11.0,
                        width: 12.0,
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),
              GestureDetector(onTap: () {}, child: const Icon(Icons.more_vert)),
            ]),
      ),
    );
  }
}
