import 'package:festivus/view/Widgets/party_card.dart';
import 'package:flutter/material.dart';

import '../../entities/party.dart';
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
            children: partyWidgetsList(),
          ),
        ),
      ),
    );
  }

  List<Widget> partyWidgetsList(){
    List<Party> parties = ListParties.getParties();
    List<Widget> widgets = [];
    for (var party in parties){
      widgets.add(PartyCardWidget( name: party.name, place: party.place, startDay: party.startDay, photo: party.photo, startTime: party.startTime));
    }
    return widgets.sublist(0, 3);
  }
}
