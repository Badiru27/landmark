import 'package:flutter/material.dart';

class BookingListView extends StatelessWidget {
  const BookingListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const SizedBox(
          height: 30,
        ),
        _listItem(),
        _listItem(),
        _listItem(),
      ],
    ));
  }

  Widget _listItem() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30,30,30,0),
      child: Container(
        decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: const BorderRadius.all(
                    Radius.circular(10),
        ),
           boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                //  offset: Offset(0, 3), // changes position of shadow
              ),
            ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 60, 20),
          child: Column(
            children: [
              Row(
          children: [
            Text('booking ref', style: TextStyle(color: Colors.grey),),
            const Spacer(),
            Text('2021122002DC', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
      ),
      SizedBox(height: 20),
              Row(
          children: [
            Text('booking ', style: TextStyle(color: Colors.grey),),
            const Spacer(),
            Text('2', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
      ),
      SizedBox(height: 20),
              Row(
          children: [
            Text('booking type', style: TextStyle(color: Colors.grey),),
            const Spacer(),
            Text('details', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
      ),
            ],
          ),
        )
      ),
    );
  }
}
