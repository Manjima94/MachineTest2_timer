import 'package:flutter/material.dart';

class Timerr extends StatefulWidget {
  const Timerr({super.key});

  @override
  State<Timerr> createState() => _TimerrState();
}

class _TimerrState extends State<Timerr> {
  Time(){
    
  }
  TimeOfDay? selectedtime;

  void picktime() async {
    var t = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    setState(() {
      selectedtime = t;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('TIME COUNTER'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                var t = showTimePicker(
                    context: context, initialTime: TimeOfDay.now());
                picktime();
                if (t != null) {
                  print(t);
                }
              },
              child: Text('set time')),
          Text(selectedtime != null ? selectedtime!.format(context) : ''),
          ElevatedButton(
              onPressed: () {
                // ignore: unused_local_variable
                
              },
              child: Text('start'))
        ],
      ),
    );
  }
}
