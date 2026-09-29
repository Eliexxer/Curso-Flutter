import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Botones')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated Disabled'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.access_time_filled_rounded),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('Elevated with Icon'),
              icon: const Icon(Icons.access_time_filled_rounded),
            ),
            FilledButton(onPressed: () {}, child: Text('Filled Button')),
            FilledButton.icon(
              onPressed: () {},
              label: Text('Filled with Icon'),
              icon: const Icon(Icons.access_time_filled_rounded),
            ),
            OutlinedButton(onPressed: () {}, child: Text('Outlined')),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text('Outlined with Icon'),
              icon: const Icon(Icons.access_time_filled_rounded),
            ),
            TextButton(onPressed: () {}, child: Text('Text Button')),
            TextButton.icon(
              onPressed: () {},
              label: Text('Text with Icon'),
              icon: const Icon(Icons.access_time_filled_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_time_filled_rounded),
            ),
            IconButton.filled(
              onPressed: () {},
              icon: const Icon(Icons.access_time_filled_rounded),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.secondary),
              ),
            ),
            IconButton.outlined(
              onPressed: () {},
              icon: const Icon(Icons.access_time_filled_rounded),
              style: ButtonStyle(
                iconColor: WidgetStatePropertyAll(colors.tertiary),
              ),
            ),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              'Custom Button',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
