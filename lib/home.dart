import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:multi_lang/control_panel.dart';
import 'package:multi_lang/loacl/local.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late FlutterLocalization _flutterLocalization;

  @override
  void initState() {
    super.initState();
    _flutterLocalization = FlutterLocalization.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocalData.title.getString(context),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Text(
              context.formatString(
                LocalData.body,
                ["hello"],
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _flutterLocalization.translate("vi");
                });
              },
              child: const Text('VI'),
            ),
            TextButton(
              onPressed: () {
                _flutterLocalization.translate("en");
              },
              child: const Text('EN'),
            ),
            TextButton(
              onPressed: () {
                _flutterLocalization.translate("de");
              },
              child: const Text('DE'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ControlPanelScreen(),
                  ),
                );
              },
              child: const Text("Next Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
