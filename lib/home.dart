import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:multi_lang/loacl/local.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late FlutterLocalization _flutterLocalization;
  late String _currentLocal;

  @override
  void initState() {
    super.initState();
    _flutterLocalization = FlutterLocalization.instance;
    _currentLocal = _flutterLocalization.currentLocale!.languageCode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocalData.title.getString(context),
        ),
        actions: [
          DropdownButton(
            value: _currentLocal,
            items: const [
              DropdownMenuItem(value: 'en', child: Text('English')),
              DropdownMenuItem(value: 'de', child: Text('German')),
              DropdownMenuItem(value: 'vi', child: Text('VietNam')),
            ],
            onChanged: (value) {
              setState(() {
                _setLocal(value);
              });
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              context.formatString(LocalData.body, ["hello"]),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("VI"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("EN"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("DE"),
            ),
          ],
        ),
      ),
    );
  }

  void _setLocal(String? value) {
    if (value == null) return;
    if (value == 'en') {
      _flutterLocalization.translate('en');
    } else if (value == 'de') {
      _flutterLocalization.translate('de');
    } else {
      _flutterLocalization.translate('vi');
    }
    setState(() {
      _currentLocal = value;
    });
  }
}
