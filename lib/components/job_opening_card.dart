import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:storytechsehej/models/job_opening.dart';
import 'package:storytechsehej/services/size_config.dart';

class JobOpeningCard extends StatelessWidget {
  final Job job;

  JobOpeningCard({this.job});

  @override
  Widget build(BuildContext context) {
    var verticalVal = displaySafeHeightBlocks(context);
    var horizontalVal = displaySafeWidthBlocks(context);
    return Container(
      width: horizontalVal * 75,
      child: Card(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: job.gradient,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 18.0,
                  left: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      job.company,
                      style: GoogleFonts.lato(color: Colors.white60),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Icon(FontAwesomeIcons.heart, color: Colors.white60)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  job.job,
                  style: GoogleFonts.lato(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  '${job.loc} | ${job.type} | ${job.salary}',
                  style: TextStyle(color: Colors.white60, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        RowSuper(
                          innerDistance: -10,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/avatar-1.png'),
                              radius: 19,
                            ),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/avatar-2.png'),
                              radius: 19,
                            ),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/avatar-3.jpeg'),
                              radius: 19,
                            ),
                          ],
                        ),
                        Text(
                          ' ${job.plusNumber}',
                          style: TextStyle(color: Colors.white60, fontSize: 14),
                        ),
                      ],
                    ),
                    ButtonTheme(
                      height: verticalVal * 4,
                      child: RaisedButton(
                        textColor: Colors.black,
                        color: Colors.white,
                        child: Text("APPLY"),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
