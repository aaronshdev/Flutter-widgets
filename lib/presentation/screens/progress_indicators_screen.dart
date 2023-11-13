import 'package:flutter/material.dart';

class ProgressIndicatorsScreen extends StatelessWidget {
  const ProgressIndicatorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress  indicators'),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text('Circular progress indicator'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CircularProgressIndicator(
                strokeWidth: 2,
                backgroundColor:
                    Theme.of(context).primaryColor.withOpacity(0.5),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text('Circular and  linear progress controled'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: _ControlledProgressIndicator(),
            )
          ],
        ),
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value * 2) / 100;
        }).takeWhile((element) => element < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CircularProgressIndicator(
                    value: progressValue,
                    strokeWidth: 2,
                    backgroundColor:
                        Theme.of(context).primaryColor.withOpacity(0.5),
                  ),
                ),
                Expanded(
                    child: LinearProgressIndicator(
                  value: progressValue,
                ))
              ],
            ),
          );
        });
  }
}
