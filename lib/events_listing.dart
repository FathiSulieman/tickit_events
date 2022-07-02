import 'package:flutter/material.dart';
import 'package:tickit_test/event_card.dart';

class SelectOrganizationWidget extends StatefulWidget {
  const SelectOrganizationWidget({Key? key}) : super(key: key);

  @override
  _SelectOrganizationWidgetState createState() =>
      _SelectOrganizationWidgetState();
}

class _SelectOrganizationWidgetState extends State<SelectOrganizationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFF1F262C),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(mainAxisSize: MainAxisSize.max, children: [
                Material(
                  color: Colors.transparent,
                  elevation: 5,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Color(0xFF242C3D),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 20, 20, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                color: const Color(0xFF101213),
                                onPressed: () => Navigator.pop(context),
                                icon: const Icon(
                                  Icons.navigate_before,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                              const Text('My Events',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFF1F1F1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const EventCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1570872626485-d8ffea69f463?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
                  venueName: "Tick'It Venue",
                  eventDate: "27 October",
                  eventName: "Event 1",
                ),
                const EventCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1570872626485-d8ffea69f463?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
                  venueName: "Tick'It Venue",
                  eventDate: "29 November",
                  eventName: "Event 2",
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }

  
}
