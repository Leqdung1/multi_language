import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class ControlPanelScreen extends StatefulWidget {
  const ControlPanelScreen({super.key});

  @override
  State<ControlPanelScreen> createState() => _ControlPanelScreenState();
}

class _ControlPanelScreenState extends State<ControlPanelScreen> {
  late FlutterLocalization _flutterLocalization;

  @override
  void initState() {
    super.initState();
    _flutterLocalization = FlutterLocalization.instance;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: size.height * 0.3,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  offset: const Offset(0, 1),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    offset: const Offset(0, 1),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 15, bottom: 18),
                      child: Text(
                        'Informations',
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // Your info containers here...
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              offset: const Offset(0, 1),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 15, bottom: 18),
                                child: Text(
                                  'Informations',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.color,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 29,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 241, 219, 1),
                                  border: Border.all(
                                    color:
                                        const Color.fromRGBO(255, 217, 157, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      offset: const Offset(0, 1),
                                      blurRadius: 8,
                                    )
                                  ],
                                ),
                                child: const Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 10),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              '03/05/2017',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromRGBO(
                                                      111, 64, 36, 1),
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Slope failure near Khe Sanh, ward 10, DaLat, after a heavy rain',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                    111, 64, 36, 1),
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: MediaQuery.sizeOf(context).width *
                                        0.15),
                                color: const Color.fromRGBO(255, 217, 157, 1),
                                height: 16,
                                width: 2,
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 29),
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(255, 241, 219, 1),
                                    border: Border.all(
                                      color: const Color.fromRGBO(
                                          255, 217, 157, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.15),
                                        offset: const Offset(0, 1),
                                        blurRadius: 8,
                                      )
                                    ]),
                                child: const Column(
                                  children: [
                                    Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, top: 6),
                                            child: Text(
                                              '06/2020',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromRGBO(
                                                      111, 64, 36, 1),
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, bottom: 6),
                                            child: Text(
                                              'Slope failure at Pham Hong Thai str, ward 10, Da Lat',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      111, 64, 36, 1),
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: MediaQuery.sizeOf(context).width *
                                        0.15),
                                color: const Color.fromRGBO(255, 217, 157, 1),
                                height: 16,
                                width: 2,
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 29,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(255, 241, 219, 1),
                                  border: Border.all(
                                    color:
                                        const Color.fromRGBO(255, 217, 157, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      offset: const Offset(0, 1),
                                      blurRadius: 8,
                                    )
                                  ],
                                ),
                                child: const Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 10),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              '12/11/2021',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromRGBO(
                                                      111, 64, 36, 1),
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Slope failure behind the Hoang Long hotel, Nhat Huy hotel, Thao Quyen hotel, Hoang Lan hotel at Khe Sanh str, ward 10, DaLat, in a sunny day',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                    111, 64, 36, 1),
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 120,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}
