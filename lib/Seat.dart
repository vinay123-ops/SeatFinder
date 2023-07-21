import 'package:flutter/material.dart';

import 'logic.dart';

class BerthNumberCard extends StatelessWidget {
  final int seatNumber;
  final VoidCallback onPressed;
  final String type;

  const BerthNumberCard(
      {super.key,
        required this.seatNumber,
        required this.type,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        select(seatNumber, onPressed);
      },
      child: Container(
        margin: const EdgeInsets.all(3.0),
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            color: berthCardColor[seatNumber - 1],
            borderRadius: BorderRadius.circular(4.0)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            seatNumber.toString(),
            style: const TextStyle(fontSize: 15.0, color: Colors.white),
          ),
          Text(
            type,
            style: const TextStyle(fontSize: 15.0, color: Colors.white),
          )
        ]),
      ),
    );
  }
}

class BerthNumberCard2 extends StatelessWidget {
  final int seatNumber;
  final VoidCallback onPressed;
  const BerthNumberCard2(
      {super.key, required this.seatNumber, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        select(seatNumber, onPressed);
      },
      child: Container(
        height: 60.0,
        width: 55.0,
        decoration: const BoxDecoration(color: Colors.white),
        child: Container(
          margin: const EdgeInsets.all(3.0),
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
              color: berthCardColor[seatNumber - 1],
              borderRadius: BorderRadius.circular(4.0)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              seatNumber.toString(),
              style: const TextStyle(fontSize: 15.0, color: Colors.white),
            ),
            const Text(
              'Side',
              style: TextStyle(fontSize: 12.0, color: Colors.white),
            ),
            const Text(
              'Upper',
              style: TextStyle(fontSize: 12.0, color: Colors.white),
            )
          ]),
        ),
      ),
    );
  }
}

class BerthNumberCard3 extends StatelessWidget {
  final int seatNumber;
  final VoidCallback onPressed;
  const BerthNumberCard3(
      {super.key, required this.seatNumber, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        select(seatNumber, onPressed);
      },
      child: Container(
        height: 55.0,
        width: 55.0,
        decoration: const BoxDecoration(color: Colors.white),
        child: Container(
          margin: const EdgeInsets.all(3.0),
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
              color: berthCardColor[seatNumber - 1],
              borderRadius: BorderRadius.circular(4.0)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              seatNumber.toString(),
              style: const TextStyle(fontSize: 15.0, color: Colors.white),
            ),
            const Text(
              'Side',
              style: TextStyle(fontSize: 12.0, color: Colors.white),
            ),
            const Text(
              'Lower',
              style: TextStyle(fontSize: 9.0, color: Colors.white),
            )
          ]),
        ),
      ),
    );
  }
}