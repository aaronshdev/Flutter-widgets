import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void viewAlert(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: Column(
            mainAxisSize: MainAxisSize.min, 
              children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: Text('Contenido'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Icon(Icons.album_rounded), FlutterLogo()],
              )
            ]
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
            child: const Text('Cancelar')
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () => viewAlert(context),
              child: const Text('Mostrar alerta'))),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close),
      ),
    );
  }
}
