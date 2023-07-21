import 'package:flutter/material.dart';
int n = 33;
List<Color> berthCardColor = [];
List<int> cur = [];
int cVal = 3;

void select(int seatNumber, VoidCallback onPressed) {
  if (cur.contains(seatNumber - 1)) {
    berthCardColor[seatNumber - 1] = Colors.deepPurple;
    cur.remove(seatNumber - 1);
    onPressed();
  } else {
    if (cur.length < cVal) {
      berthCardColor[seatNumber - 1] = Colors.deepOrange;
      cur.add(seatNumber - 1);
      onPressed();
    }
  }
}
