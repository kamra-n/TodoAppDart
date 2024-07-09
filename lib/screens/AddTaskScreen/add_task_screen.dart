import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  TimeOfDay toTime = TimeOfDay.now();
  TimeOfDay fromTime = TimeOfDay.now();

  Future<void> _selectTimeto(BuildContext context) async {
    final TimeOfDay? picked_s = await showTimePicker(
        context: context,
        initialTime: toTime,
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!,
          );
        });
    if (picked_s != null && picked_s != toTime) {
      setState(() {
        toTime = picked_s;
      });
    }
  }

  Future<void> _selectTimefrom(BuildContext context) async {
    final TimeOfDay? picked_s = await showTimePicker(
        context: context,
        initialTime: fromTime,
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!,
          );
        });
    if (picked_s != null && picked_s != fromTime) {
      setState(() {
        fromTime = picked_s;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0XFF8A9DFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Create a new Task',
                  style: TextStyle(
                      fontSize: 28.0, fontWeight: FontWeight.w700, height: 1.4),
                ),
                CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('./assets/images/profile.jpg')),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'From',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectTimefrom(context);
                        });
                      },
                      child: Container(
                        height: 40.0,
                        width: 80.0,
                        color: Colors.white,
                        child: Center(child: Text(fromTime.format(context))),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'To',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          setState(() {
                            _selectTimeto(context);
                          });
                        });
                      },
                      child: Container(
                        height: 40.0,
                        width: 80.0,
                        color: Colors.white,
                        child: Center(child: Text(toTime.format(context))),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Title',
              style: TextStyle(
                fontSize: 20.0,
                height: 1.6,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            width: 340.0,
            height: 50.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: TextFormField(
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          ),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Description',
              style: TextStyle(
                fontSize: 20.0,
                height: 1.6,
              ),
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 340.0),
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            width: 340.0,
            height: 100.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: TextFormField(
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Choose Priority',
              style: TextStyle(
                fontSize: 20.0,
                height: 1.6,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFFDD1515),
                  ),
                  child: const Text('High')),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFFA6A6A6),
                  ),
                  child: const Text('Medium')),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFF79AF92),
                  ),
                  child: const Text('Low'))
            ],
          ),
          const Spacer(),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            height: 53.0,
            width: 330.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0XFF79AF92)),
            child: const Center(
                child: Text(
              'Add',
              style: TextStyle(fontSize: 20.0),
            )),
          )
        ],
      ),
    ));
  }
}
