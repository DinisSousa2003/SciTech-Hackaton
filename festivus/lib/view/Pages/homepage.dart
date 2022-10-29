import 'package:festivus/view/Widgets/party_card.dart';
import 'package:flutter/material.dart';

import '../../model/parties.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF4E15BB),
        automaticallyImplyLeading: false,
        title: Text(
          'Festivus',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              PartyCardWidget( name: party1.name, place: party1.place, startDay: party1.startDay, photo: party1.photo, startTime: party1.startTime),
              PartyCardWidget( name: party2.name, place: party2.place, startDay: party2.startDay, photo: party2.photo, startTime: party2.startTime)
            ],
          ),
        ),
      ),
    );
  }
}
