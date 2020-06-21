import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:love_cal/screens/web/page/finalPage.dart';

class HomeWebScreen extends StatefulWidget {
  HomeWebScreen({Key key}) : super(key: key);

  @override
  _HomeWebScreenState createState() => _HomeWebScreenState();
}

class _HomeWebScreenState extends State<HomeWebScreen> {
  String _name1, _name2;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  PageController controller = PageController();
  checkFields() {
    final form = _formKey.currentState;
    if (form.validate()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.pink,
      body: Padding(
        padding: const EdgeInsets.only(left:150,right: 150),
        child: SingleChildScrollView(
          controller: controller,
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    child: Center(
                      child: Text(
                        'Love Calculator 2020',
                        textAlign: TextAlign.center,
                        style:
                            GoogleFonts.oswald(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  )),
                  Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    child: Center(
                      child: Text(
                        'Enter the names of the two people below and hit "Calculate" to see what your relationship chances are.',
                        textAlign: TextAlign.center,
                        style:
                            GoogleFonts.raleway(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(left:15,right: 15,top:70),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                          child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person,
                                color: Colors.white,
                                ),
                                hintText: '1st person name',
                                contentPadding: EdgeInsets.fromLTRB(
                                    20.0, 15.0, 20.0, 15.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(2.0)),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _name1 = value;
                                });
                              },
                              validator: (input) {
                                if (input.isEmpty) {
                                  return 'Enter name';
                                }
                                return null;
                              })),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                          child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person,
                                  color: Colors.white,
                                  ),
                                hintText: '2nd person name',
                                contentPadding: EdgeInsets.fromLTRB(
                                    20.0, 15.0, 20.0, 15.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(2.0)),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _name2 = value;
                                });
                              },
                              validator: (input) {
                                if (input.isEmpty) {
                                  return 'Enter name'; 
                                 }
                                return null;
                              })),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            onPressed: () {
                              if (checkFields()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FinalPage(
                                              name1: _name1,
                                              name2: _name2,
                                            ),
                                        fullscreenDialog: true));
                              }
                            },
                            child: Text(
                              ' Calculate',
                              style: GoogleFonts.oswald(
                                  fontSize: 30, color: Colors.white),
                            ),
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
