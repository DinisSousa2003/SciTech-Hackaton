import 'package:festivus/entities/party.dart';
import 'package:flutter/material.dart';

class PartyPage extends StatefulWidget {
  final Party party;
  PartyPage({Key? key, required this.party}) : super(key: key);

  @override
  _PartyPageState createState() => _PartyPageState( party: party);
}

class _PartyPageState extends State<PartyPage> {
  final Party party;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _PartyPageState(
  {Key? key, required this.party}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color(0xFF4E15BB),
          automaticallyImplyLeading: false,
          title: Text(
            'FESTIVUS',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [],
          centerTitle: true,
          toolbarHeight: 90,
          elevation: 2,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Stack(
                  children: [
                    Image.network(
                      party.photo,
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      fit: BoxFit.none,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xCB7C5FE8),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            party.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Text(
                          'Where: '+party.place+'\n\nWhen: '+party.startTime+' to '+party.endTime+' - '+party.startDay+'  \n\nEntry: '+party.price.toString()+'€\n\nDescription: '+party.description,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  child: Icon(Icons.check, size: 10.0,color: Colors.white),
                  onPressed: () {
                    setState(() {
                    //student.present = true;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                  minimumSize: Size(7,11),
                  //primary: student.present ? Colors.grey : Colors.lightGreen,
                  primary: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                  )),
                ),
                TextButton(
                child: Icon(Icons.close, size: 13.0,color: Colors.white),
                onPressed: () {
                  setState(() {
                    //student.present = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                minimumSize: Size(7,13),
                //primary: student.present ? Colors.red : Colors.grey,
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60.0),

                )),
                ),
              ],
            )

            ],
          ),
        ),
      ),
    );
  }
}
