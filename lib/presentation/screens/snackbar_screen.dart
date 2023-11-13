import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Snackbar'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro'),
        content: const Text('Eiusmod nulla est nostrud sunt magna est excepteur anim veniam eu. Sunt magna est qui aute id excepteur exercitation in duis pariatur. Nostrud id voluptate aute tempor cupidatat eiusmod laborum mollit esse enim qui.'),
        actions: [
          TextButton(onPressed: ()=> context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar'))
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars & dialogues'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () => showAboutDialog(
                context: context,
                children: [
                  const Text(
                  'Ex commodo exercitation esse cupidatat proident eu consectetur. Cillum voluptate excepteur Lorem id sit cupidatat est mollit excepteur aliquip anim nostrud qui. Fugiat incididunt duis culpa amet anim eu et. Pariatur do dolor velit aliquip aliqua ut anim. Culpa sint sit incididunt cillum exercitation excepteur do dolor pariatur cillum laborum ipsum. In deserunt laborum eiusmod reprehenderit amet ipsum proident nulla Lorem ad sunt proident non sit. Amet laboris culpa aliquip in minim cillum consequat culpa nostrud nisi voluptate.')
                ]
              ),
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar dialogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye),
        onPressed: () => showCustomSnackbar(context)
      ),
    );
  }
}
