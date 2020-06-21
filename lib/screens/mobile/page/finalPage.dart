import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalPage extends StatefulWidget {
  final String name1, name2;
  FinalPage({
    Key key,
    this.name1,
    this.name2,
  }) : super(key: key);

  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  int c = 0, c1 = 0, sum, totlal;
  List val1, val;
  @override
  void initState() {
    super.initState();
 
    val = widget.name1.toLowerCase().codeUnits;
    val1 = widget.name2.toLowerCase().codeUnits;
    val.forEach((e) => c += e);
    val1.forEach((e) => c1 += e);
    totlal = c * c1;
    sum = totlal % 100;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pink
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                          )
                        ]
          ),
          child: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:EdgeInsets.all(8),
                  child:Container(
                    child:Center(
                      child:Icon(FontAwesomeIcons.solidHeart,
                      color: Colors.redAccent,
size:80)
                    )
                  )
                ),
                 Padding(
                  padding:EdgeInsets.all(8),
                  child:Container(
                    child:Center(
                      child:Text('Love calculator result',
                      textAlign: TextAlign.center,
                      style:GoogleFonts.oswald(
                        fontSize: 40,
                          color: Colors.redAccent,
                      )
                      )
                    )
                  )
                ),
                Padding(
                  padding:EdgeInsets.all(8),
                  child:Container(
                    child:Center(
                      child:Text('${widget.name1} & ${widget.name2}',
                      textAlign: TextAlign.center,
                      style:GoogleFonts.titilliumWeb(
                        fontSize: 60,
                          color: Colors.black87,
                      )
                      )
                    )
                  )
                ),
                Padding(
                  padding:EdgeInsets.all(8),
                  child:Container(
                    child:Center(
                      child:Text('$sum%',
                      textAlign: TextAlign.center,
                      style:GoogleFonts.ubuntu(
                        fontSize: 60,
                          color: Colors.red,
                      )
                      )
                    )
                  )
                ),
              ],
            )
          )),
      ),
    );
  }
}
