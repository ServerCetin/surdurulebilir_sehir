import '../anaekran/anaekran_widget.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../oyunuzyollandi/oyunuzyollandi_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DenetliyiciWidget extends StatefulWidget {
  const DenetliyiciWidget({Key key}) : super(key: key);

  @override
  _DenetliyiciWidgetState createState() => _DenetliyiciWidgetState();
}

class _DenetliyiciWidgetState extends State<DenetliyiciWidget> {
  List<String> checkboxGroupValues;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF0946AC),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(85, 0, 45, 0),
          child: Text(
            'Birlikte Yonetelim!',
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFF8F7F1),
                  fontSize: 18,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Text(
                      'Levent meydanına herkese açık bir piyano koymayı düşünüyoruz. Böylelikle her meraklı çalabilecek. Bütçesi x kadar tutacak. Bunu bir İstanbul\'lu olarak ister misiniz?\n',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: FlutterFlowCheckboxGroup(
                      initiallySelected: checkboxGroupValues != null
                          ? checkboxGroupValues
                          : [],
                      options: ['İsterim', 'istemem', 'Emin Değilim'].toList(),
                      onChanged: (val) =>
                          setState(() => checkboxGroupValues = val),
                      activeColor: Color(0xFF0946AC),
                      checkColor: Colors.white,
                      checkboxBorderColor: Color(0xFF95A1AC),
                      textStyle: FlutterFlowTheme.of(context).bodyText2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OyunuzyollandiWidget(),
                          ),
                          (r) => false,
                        );
                      },
                      text: 'Gonder',
                      options: FFButtonOptions(
                        width: 145,
                        height: 40,
                        color: Color(0xFF0946AC),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnaekranWidget(),
                          ),
                          (r) => false,
                        );
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFF262D34),
                        size: 36,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
