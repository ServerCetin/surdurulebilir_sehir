import '../anaekran/anaekran_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EtkinlikSifreWidget extends StatefulWidget {
  const EtkinlikSifreWidget({Key key}) : super(key: key);

  @override
  _EtkinlikSifreWidgetState createState() => _EtkinlikSifreWidgetState();
}

class _EtkinlikSifreWidgetState extends State<EtkinlikSifreWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF0946AC),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.qr_code_scanner,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      size: 250,
                    ),
                  ],
                ),
              ),
              Text(
                'C99%/FASDASpf',
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'PAYLAS',
                  options: FFButtonOptions(
                    width: 200,
                    height: 50,
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF090F13),
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 30,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.15),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AnaekranWidget(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      size: 36,
                    ),
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
