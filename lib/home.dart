import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'logic.dart';
import 'train_seats.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  initState() {
    super.initState();
    for (int i = 0; i <= 100; i++) {
      berthCardColor.add(Colors.deepPurple);
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController t1 = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                InkWell(onTap: () {
                 Navigator.pop(context);
                 },
                   child: const Icon(Icons.refresh)),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SEAT FINDER',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          fontSize: 50, color: Colors.blueAccent),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        controller: t1,
                        decoration: const InputDecoration(
                          hintText: 'Enter Seat Number',
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 13),
                          contentPadding: EdgeInsets.all(10.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: Colors.blueAccent,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.search, color: Colors.white),
                        onPressed: () {
                          int? num = int.tryParse(t1.text);
                          if (num != null && num < 32) {
                            setState(() {
                              if (num - 1 != -1) {
                                berthCardColor[num - 1] = Colors.deepPurple;
                              }
                              berthCardColor[num - 1] = Colors.deepOrange;
                            });
                          }
                          FocusScopeNode currentFocus = FocusScope.of(context);
                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              for (var i = 0; i < n; i += 8)
                Berth(
                    seatNumber: i + 1,
                    onPressed: () {
                      setState(() {});
                    })
            ],
          ),
        ),
      ),
    );
  }
}
