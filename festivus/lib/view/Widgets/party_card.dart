import 'package:flutter/material.dart';

class PartyCardWidget extends StatefulWidget {
  const PartyCardWidget({Key? key}) : super(key: key);

  @override
  _PartyCardWidgetState createState() => _PartyCardWidgetState();
}

class _PartyCardWidgetState extends State<PartyCardWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
