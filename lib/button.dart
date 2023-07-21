import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final Text? buttonText;
  final Function? onPressed;

  const SimpleButton({super.key, this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Card(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 50,
        shadowColor: Colors.black,
        margin: const EdgeInsets.only(top: 20.0),
        clipBehavior: Clip.antiAlias,
        surfaceTintColor: Colors.grey,
        borderOnForeground: true,
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: buttonText,
                    ),
                  ],
                ),
                onPressed: () => onPressed!(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}