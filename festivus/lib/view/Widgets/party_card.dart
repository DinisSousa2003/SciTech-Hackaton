import 'package:festivus/entities/party.dart';
import 'package:flutter/material.dart';

class PartyCardWidget extends StatefulWidget {
  final String name;
  final String place;
  final String startTime;
  final String startDay;
  final String photo;

  const PartyCardWidget({
      Key? key,
      required this.name,
      required this.place,
      required this.startTime,
      required this.startDay,
      required this.photo,
      });

  @override
  State<StatefulWidget> createState() => PartyCardWidgetState(
    name: name, place: place, startTime: startTime, startDay: startDay, photo: photo
  );
}

class PartyCardWidgetState extends State<StatefulWidget>{
  final String name;
  final String place;
  final String startTime;
  final String startDay;
  final String photo;

  PartyCardWidgetState(
      {Key? key,
        required this.name,
        required this.place,
        required this.startTime,
        required this.startDay,
        required this.photo,
      });

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
                    'https://picsum.photos/seed/626/600',
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
                        name,
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
                      place,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      startTime + ' ' + startDay,
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
