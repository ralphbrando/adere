import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adere_dashboard_mon_etat_dev_model.dart';
export 'adere_dashboard_mon_etat_dev_model.dart';

class AdereDashboardMonEtatDevWidget extends StatefulWidget {
  const AdereDashboardMonEtatDevWidget({super.key});

  @override
  State<AdereDashboardMonEtatDevWidget> createState() =>
      _AdereDashboardMonEtatDevWidgetState();
}

class _AdereDashboardMonEtatDevWidgetState
    extends State<AdereDashboardMonEtatDevWidget> {
  late AdereDashboardMonEtatDevModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdereDashboardMonEtatDevModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ADERE_DASHBOARD_MON_ETAT_DEV'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 47.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color(0xFFEAEAF6),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: Icon(
                              Icons.menu,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 20.0,
                                      height: 20.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF4A3288),
                                        shape: BoxShape.circle,
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: 10.0,
                                        height: 10.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFEAEAF6),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'ADERE',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Color(0xFF4A3288),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 2.0)),
                            ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Stack(
                              alignment: AlignmentDirectional(0.7, -0.7),
                              children: [
                                Icon(
                                  FFIcons.kbell,
                                  color: Colors.black,
                                  size: 24.0,
                                ),
                                Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEAEAF6),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 4.0,
                                      height: 4.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF03030),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: Icon(
                              FFIcons.kuser,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                        ].divide(SizedBox(width: 10.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'TABLEAU DE BORD',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color: Color(0xFF4A3288),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 6.0, 0.0, 0.0),
                                          child: Container(
                                            width: 147.0,
                                            height: 5.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF4A3288),
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF9480CE),
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 10.0),
                                          child: Text(
                                            'À FAIRE',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF4A3288),
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 10.0),
                                          child: Text(
                                            'MON ÉTAT',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF9480CE),
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 10.0),
                                          child: Text(
                                            'MES ALERTES',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF9480CE),
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 10.0),
                                          child: Text(
                                            'MA MALADIE',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF9480CE),
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 10.0),
                                          child: Text(
                                            'MES INFORMATIONS',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ].divide(SizedBox(width: 6.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFF4A3288),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF4A3288),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Icon(
                                            FFIcons.karrowLeft32,
                                            color: Colors.white,
                                            size: 18.0,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '08/07/2024 - 13/07/2024',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF4A3288),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Icon(
                                            FFIcons.karrowRight22,
                                            color: Colors.white,
                                            size: 18.0,
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 10.0)),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 191.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEAEAF6),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFF4A3288),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            10.0,
                                                                            15.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'EBASTINE ARROW 10 mg Cpr pell Plq/30',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Color(0xFF4A3288),
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      ListView(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            13.0,
                                                                            15.0,
                                                                            13.0,
                                                                            8.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'lun.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidCircle,
                                                                                            color: Color(0xFF9480CE),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                          child: Icon(
                                                                                            FFIcons.kcloseCircle2,
                                                                                            color: Color(0xFFF03030),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                        child: Icon(
                                                                                          FFIcons.ktickCircle2,
                                                                                          color: Color(0xFF08C266),
                                                                                          size: 24.0,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'mar.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidCircle,
                                                                                            color: Color(0xFF9480CE),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                        child: Icon(
                                                                                          FFIcons.kcloseCircle2,
                                                                                          color: Color(0xFFF03030),
                                                                                          size: 24.0,
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                          child: Icon(
                                                                                            FFIcons.ktickCircle2,
                                                                                            color: Color(0xFF08C266),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'mer.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidCircle,
                                                                                            color: Color(0xFF9480CE),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                          child: Icon(
                                                                                            FFIcons.kcloseCircle2,
                                                                                            color: Color(0xFFF03030),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                        child: Icon(
                                                                                          FFIcons.ktickCircle2,
                                                                                          color: Color(0xFF08C266),
                                                                                          size: 24.0,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'jeu.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidCircle,
                                                                                            color: Color(0xFF9480CE),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                          child: Icon(
                                                                                            FFIcons.kcloseCircle2,
                                                                                            color: Color(0xFFF03030),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                        child: Icon(
                                                                                          FFIcons.ktickCircle2,
                                                                                          color: Color(0xFF08C266),
                                                                                          size: 24.0,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'ven.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidCircle,
                                                                                            color: Color(0xFF9480CE),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                          child: Icon(
                                                                                            FFIcons.kcloseCircle2,
                                                                                            color: Color(0xFFF03030),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                        child: Icon(
                                                                                          FFIcons.ktickCircle2,
                                                                                          color: Color(0xFF08C266),
                                                                                          size: 24.0,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                                border: Border.all(
                                                                                  color: Color(0xFF9480CE),
                                                                                  width: 1.5,
                                                                                ),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'sam.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidCircle,
                                                                                            color: Color(0xFF9480CE),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                          child: Icon(
                                                                                            FFIcons.kcloseCircle2,
                                                                                            color: Color(0xFFF03030),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                        child: Icon(
                                                                                          FFIcons.ktickCircle2,
                                                                                          color: Color(0xFF08C266),
                                                                                          size: 24.0,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'dim.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                        child: FaIcon(
                                                                                          FontAwesomeIcons.solidCircle,
                                                                                          color: Color(0xFF9480CE),
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                          child: Icon(
                                                                                            FFIcons.kcloseCircle2,
                                                                                            color: Color(0xFFF03030),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 6.0),
                                                                                          child: Icon(
                                                                                            FFIcons.ktickCircle2,
                                                                                            color: Color(0xFF08C266),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFDEF0F4),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      50.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFF4A3288),
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      8.0,
                                                                      10.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Container(
                                                                width: 24.0,
                                                                height: 24.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF4A3288),
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    FFIcons
                                                                        .kaddPlus,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          6.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          'Je déclare la prise de mes médicaments',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Color(0xFF4A3288),
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ]
                                                      .divide(SizedBox(
                                                          height: 10.0))
                                                      .addToStart(SizedBox(
                                                          height: 10.0))
                                                      .addToEnd(SizedBox(
                                                          height: 10.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 157.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEAEAF6),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFF4A3288),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      ListView(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            13.0,
                                                                            8.0,
                                                                            13.0,
                                                                            8.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'lun.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidCircle,
                                                                                            color: Color(0xFF9480CE),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidFrown,
                                                                                            color: Color(0xFFF03030),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidFrown,
                                                                                            color: Color(0xFFF29800),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidMeh,
                                                                                            color: Color(0xFF60A8C2),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidSmile,
                                                                                            color: Color(0xFF387E64),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                        child: FaIcon(
                                                                                          FontAwesomeIcons.solidSmile,
                                                                                          color: Color(0xFF08C266),
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'mar.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidCircle,
                                                                                            color: Color(0xFF9480CE),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                        child: FaIcon(
                                                                                          FontAwesomeIcons.solidFrown,
                                                                                          color: Color(0xFFF03030),
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidFrown,
                                                                                            color: Color(0xFFF29800),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidMeh,
                                                                                            color: Color(0xFF60A8C2),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidSmile,
                                                                                            color: Color(0xFF387E64),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidSmile,
                                                                                            color: Color(0xFF08C266),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'mer.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidCircle,
                                                                                            color: Color(0xFF9480CE),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidFrown,
                                                                                            color: Color(0xFFF03030),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                        child: FaIcon(
                                                                                          FontAwesomeIcons.solidFrown,
                                                                                          color: Color(0xFFF29800),
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidMeh,
                                                                                            color: Color(0xFF60A8C2),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidSmile,
                                                                                            color: Color(0xFF387E64),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidSmile,
                                                                                            color: Color(0xFF08C266),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'jeu.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidCircle,
                                                                                            color: Color(0xFF9480CE),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidFrown,
                                                                                            color: Color(0xFFF03030),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidFrown,
                                                                                            color: Color(0xFFF29800),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                        child: FaIcon(
                                                                                          FontAwesomeIcons.solidMeh,
                                                                                          color: Color(0xFF60A8C2),
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidSmile,
                                                                                            color: Color(0xFF387E64),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidSmile,
                                                                                            color: Color(0xFF08C266),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'ven.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidCircle,
                                                                                            color: Color(0xFF9480CE),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidFrown,
                                                                                            color: Color(0xFFF03030),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidFrown,
                                                                                            color: Color(0xFFF29800),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidMeh,
                                                                                            color: Color(0xFF60A8C2),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                        child: FaIcon(
                                                                                          FontAwesomeIcons.solidSmile,
                                                                                          color: Color(0xFF387E64),
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidSmile,
                                                                                            color: Color(0xFF08C266),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                                border: Border.all(
                                                                                  color: Color(0xFF9480CE),
                                                                                  width: 1.5,
                                                                                ),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'sam.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidCircle,
                                                                                            color: Color(0xFF9480CE),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidFrown,
                                                                                            color: Color(0xFFF03030),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidFrown,
                                                                                            color: Color(0xFFF29800),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidMeh,
                                                                                            color: Color(0xFF60A8C2),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidSmile,
                                                                                            color: Color(0xFF387E64),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                        child: FaIcon(
                                                                                          FontAwesomeIcons.solidSmile,
                                                                                          color: Color(0xFF08C266),
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      'dim.',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: Color(0xFF9480CE),
                                                                                            fontSize: 11.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Stack(
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                        child: FaIcon(
                                                                                          FontAwesomeIcons.solidCircle,
                                                                                          color: Color(0xFF9480CE),
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidFrown,
                                                                                            color: Color(0xFFF03030),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidFrown,
                                                                                            color: Color(0xFFF29800),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidMeh,
                                                                                            color: Color(0xFF60A8C2),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidSmile,
                                                                                            color: Color(0xFF387E64),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Opacity(
                                                                                        opacity: 0.0,
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8.0, 2.0, 8.0, 8.0),
                                                                                          child: FaIcon(
                                                                                            FontAwesomeIcons.solidSmile,
                                                                                            color: Color(0xFF08C266),
                                                                                            size: 20.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFDEF0F4),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      50.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFF4A3288),
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      8.0,
                                                                      10.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Container(
                                                                width: 24.0,
                                                                height: 24.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF4A3288),
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    FFIcons
                                                                        .kaddPlus,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          6.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          'Je déclare mes symptômes',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Inter',
                                                                                color: Color(0xFF4A3288),
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 24.0,
                                                                height: 24.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ]
                                                      .divide(SizedBox(
                                                          height: 10.0))
                                                      .addToStart(SizedBox(
                                                          height: 10.0))
                                                      .addToEnd(SizedBox(
                                                          height: 10.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 20.0)),
                        ),
                      ),
                    ]
                        .divide(SizedBox(height: 20.0))
                        .addToStart(SizedBox(height: 20.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
              child: Container(
                width: double.infinity,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Color(0xFFEAEAF6),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    FFIcons.khome,
                                    color: Color(0xFF4A3288),
                                    size: 24.0,
                                  ),
                                  Text(
                                    'Accueil',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Color(0xFF4A3288),
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    FFIcons.klayout,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  Text(
                                    'Programmes',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.black,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    FFIcons.kaddCircle,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  Text(
                                    'Saisies',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.black,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    FFIcons.kmedkit,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  Text(
                                    'Armoire',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.black,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    FFIcons.kshare,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  Text(
                                    'Services',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.black,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
