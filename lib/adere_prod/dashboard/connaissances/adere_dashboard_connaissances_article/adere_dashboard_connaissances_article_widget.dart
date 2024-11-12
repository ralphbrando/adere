import '/adere_prod/composants/navigation/adere_dashboard_header/adere_dashboard_header_widget.dart';
import '/adere_prod/composants/navigation/adere_dashboard_navigation_bottom/adere_dashboard_navigation_bottom_widget.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adere_dashboard_connaissances_article_model.dart';
export 'adere_dashboard_connaissances_article_model.dart';

class AdereDashboardConnaissancesArticleWidget extends StatefulWidget {
  const AdereDashboardConnaissancesArticleWidget({
    super.key,
    required this.idart,
  });

  final int? idart;

  @override
  State<AdereDashboardConnaissancesArticleWidget> createState() =>
      _AdereDashboardConnaissancesArticleWidgetState();
}

class _AdereDashboardConnaissancesArticleWidgetState
    extends State<AdereDashboardConnaissancesArticleWidget> {
  late AdereDashboardConnaissancesArticleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => AdereDashboardConnaissancesArticleModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ADERE_DASHBOARD_CONNAISSANCES_ARTICLE'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADERE_DASHBOARD_CONNAISSANCES_ARTICLE_AD');
      logFirebaseEvent('ADERE_DASHBOARD_CONNAISSANCES_ARTICLE_up');
      FFAppState().AdereDashboardHeaderNav1 = false;
      FFAppState().AdereDashboardHeaderNav2 = false;
      FFAppState().AdereDashboardHeaderNav3 = false;
      FFAppState().AdereDashboardHeaderNav4 = false;
      FFAppState().AdereDashboardBottomNav1 = false;
      FFAppState().AdereDashboardBottomNav2 = false;
      FFAppState().AdereDashboardBottomNav3 = false;
      FFAppState().AdereDashboardBottomNav4 = false;
      FFAppState().AdereDashboardBottomNav5 = false;
      FFAppState().AdereDashboardHomeNav1 = false;
      FFAppState().AdereDashboardHomeNav2 = false;
      FFAppState().AdereDashboardHomeNav3 = false;
      FFAppState().AdereDashboardHomeNav4 = false;
      FFAppState().AdereDashboardSaisiesNav1 = false;
      FFAppState().AdereDashboardSaisiesNav2 = false;
      FFAppState().AdereDashboardSaisiesNav3 = false;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 40.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).isabelline,
              ),
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).isabelline,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: wrapWithModel(
                model: _model.adereDashboardHeaderModel,
                updateCallback: () => safeSetState(() {}),
                child: AdereDashboardHeaderWidget(),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: FutureBuilder<List<WikiPostsRow>>(
                  future: WikiPostsTable().querySingleRow(
                    queryFn: (q) => q.eq(
                      'id',
                      widget!.idart,
                    ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<WikiPostsRow> contentColumnWikiPostsRowList =
                        snapshot.data!;

                    final contentColumnWikiPostsRow =
                        contentColumnWikiPostsRowList.isNotEmpty
                            ? contentColumnWikiPostsRowList.first
                            : null;

                    return SingleChildScrollView(
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
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'CONNAISSANCES',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .eerieBlack,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 6.0, 0.0, 0.0),
                                              child: Container(
                                                width: 139.0,
                                                height: 5.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .eerieBlack,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
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
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).columbiaBlue,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 15.0, 20.0, 14.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
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
                                              contentColumnWikiPostsRow!.title!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .eerieBlack,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
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
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                        contentColumnWikiPostsRow!.image!,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).platinum,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 20.0, 20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            contentColumnWikiPostsRow!
                                                .description!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .eerieBlack,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 20.0)),
                              ),
                            ),
                          ),
                        ]
                            .divide(SizedBox(height: 20.0))
                            .addToStart(SizedBox(height: 20.0)),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 80.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).isabelline,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: wrapWithModel(
                  model: _model.adereDashboardNavigationBottomModel,
                  updateCallback: () => safeSetState(() {}),
                  child: AdereDashboardNavigationBottomWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}