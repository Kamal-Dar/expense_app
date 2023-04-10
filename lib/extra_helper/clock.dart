import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

class AnalogClockDialog extends StatelessWidget {
  const AnalogClockDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        AlertDialog(
          title: const Text('Analog Clock'),
          content: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Center(
              child: AnalogClock(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.black),
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                ),
                isLive: true,
                hourHandColor: Colors.black,
                minuteHandColor: Colors.black,
                showSecondHand: true,
                secondHandColor: Colors.red,
                numberColor: Colors.black87,
                showNumbers: true,
                textScaleFactor: 1.4,
                showTicks: true,
                tickColor: Colors.black,
                
              ),
            ),
          ),
        ),
      ],
    );
  }
}
