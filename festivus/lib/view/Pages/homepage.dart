import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor:Color(0xFF3A117B),
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white38,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  child: Stack(
                    alignment: AlignmentDirectional(0, 0),
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://picsum.photos/seed/204/600',
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 1,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                            child: Text(
                              'FeupCaffé',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'AEFEUP',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '11h 27/10',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
