import '../anaekran/anaekran_widget.dart';
import '../etkinlik_sifre/etkinlik_sifre_widget.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EtkinlikOlusturWidget extends StatefulWidget {
  const EtkinlikOlusturWidget({Key key}) : super(key: key);

  @override
  _EtkinlikOlusturWidgetState createState() => _EtkinlikOlusturWidgetState();
}

class _EtkinlikOlusturWidgetState extends State<EtkinlikOlusturWidget> {
  List<String> checkboxGroupValues;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF0946AC),
        automaticallyImplyLeading: true,
        leading: InkWell(
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
            color: Color(0xFFF8F7F1),
            size: 36,
          ),
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 35, 0),
          child: Text(
            'Kosulları ',
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFF8F7F1),
                  fontSize: 18,
                ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
            child: Icon(
              Icons.assignment_ind_rounded,
              color: Color(0xFFF8F7F1),
              size: 36,
            ),
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: FlutterFlowCheckboxGroup(
                  initiallySelected:
                      checkboxGroupValues != null ? checkboxGroupValues : [],
                  options: [
                    'Universite Ogrencisi olmalı',
                    'Sadece Erkek',
                    'Sadece Kadınlar',
                    'Resit olan bireyler',
                    'Calısan Bireyler',
                    'Lise okuyanlar',
                    'Maks 30 yaş',
                    'En az bir kere müzeye gitmiş',
                    'Yüzüklerın Efendisi İzlemişler'
                  ].toList(),
                  onChanged: (val) => setState(() => checkboxGroupValues = val),
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
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EtkinlikSifreWidget(),
                      ),
                    );
                  },
                  text: 'Olustur',
                  options: FFButtonOptions(
                    width: 145,
                    height: 40,
                    color: Color(0xFF0946AC),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
              Align(
                alignment: AlignmentDirectional(0.65, 0),
                child: Icon(
                  Icons.add_circle_outlined,
                  color: Color(0xFF0946AC),
                  size: 48,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.75, 0),
                child: Text(
                  'Yardımcı Ekle',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
