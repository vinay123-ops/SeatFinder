import 'package:flutter/material.dart';

import 'Seat.dart';

class Berth extends StatelessWidget {
  final VoidCallback onPressed;
  final int seatNumber;
  const Berth({super.key, required this.seatNumber, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(
              height: 80.0,
              width: 200.0,
              child: Stack(
                children: [
                  const BlueBackBig(),
                  Positioned(
                    right: 29,
                    top: 5,
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BerthNumberCard(
                            seatNumber: seatNumber,
                            type: "Lower",
                            onPressed: onPressed,
                          ),
                          BerthNumberCard(
                            seatNumber: seatNumber + 1,
                            type: "Middle",
                            onPressed: onPressed,
                          ),
                          BerthNumberCard(
                            seatNumber: seatNumber + 2,
                            type: "Upper",
                            onPressed: onPressed,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 80.0,
              width: 200.0,
              child: Stack(
                children: [
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Positioned(
                    top: 18.0,
                    child: BlueBackBig(),
                  ),
                  Positioned(
                    right: 29.0,
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BerthNumberCard(
                            seatNumber: seatNumber + 3,
                            type: "Lower",
                            onPressed: onPressed,
                          ),
                          BerthNumberCard(
                            seatNumber: seatNumber + 4,
                            type: "Middle",
                            onPressed: onPressed,
                          ),
                          BerthNumberCard(
                            seatNumber: seatNumber + 5,
                            type: "Upper",
                            onPressed: onPressed,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        // side berths
        Column(
          children: [
            SizedBox(
              height: 80.0,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5.0)),
                    height: 40.0,
                    width: 60.0,
                  ),
                  Positioned(
                    left: 2.5,
                    top: 2,
                    child: BerthNumberCard2(
                      seatNumber: seatNumber + 6,
                      onPressed: onPressed,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 80.0,
              width: 60,
              child: Stack(children: [
                Positioned(
                  top: 18.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5.0)),
                    height: 40.0,
                    width: 60.0,
                  ),
                ),
                Positioned(
                  left: 2,
                  child: BerthNumberCard3(
                    seatNumber: seatNumber + 7,
                    onPressed: onPressed,
                  ),
                ),
              ]),
            ),
          ],
        )
      ],
    );
  }
}

class BlueBackBig extends StatelessWidget {
  const BlueBackBig({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(5.0)),
      height: 40.0,
      width: 173.0,
    );
  }
}