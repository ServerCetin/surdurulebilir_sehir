import '../anaekran/anaekran_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GelenleriOnaylamaWidget extends StatefulWidget {
  const GelenleriOnaylamaWidget({Key key}) : super(key: key);

  @override
  _GelenleriOnaylamaWidgetState createState() =>
      _GelenleriOnaylamaWidgetState();
}

class _GelenleriOnaylamaWidgetState extends State<GelenleriOnaylamaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController passwordLoginController;

  @override
  void initState() {
    super.initState();
    passwordLoginController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 150, 0, 0),
                child: Icon(
                  Icons.photo_camera,
                  color: Color(0xFF262D34),
                  size: 200,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 12, 5, 0),
                child: TextFormField(
                  controller: passwordLoginController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Kodu gir',
                    labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF95A1AC),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Color(0xFF0946AC),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                  ),
                  style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
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
                    Icons.arrow_back_ios_outlined,
                    color: Color(0xFF262D34),
                    size: 36,
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
