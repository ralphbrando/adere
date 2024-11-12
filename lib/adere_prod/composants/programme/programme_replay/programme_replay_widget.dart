import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'programme_replay_model.dart';
export 'programme_replay_model.dart';

class ProgrammeReplayWidget extends StatefulWidget {
  const ProgrammeReplayWidget({
    super.key,
    required this.sequenceId,
  });

  final int? sequenceId;

  @override
  State<ProgrammeReplayWidget> createState() => _ProgrammeReplayWidgetState();
}

class _ProgrammeReplayWidgetState extends State<ProgrammeReplayWidget> {
  late ProgrammeReplayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgrammeReplayModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent(
                        'PROGRAMME_REPLAY_Button_Container_ON_TAP');
                    logFirebaseEvent('Button_Container_backend_call');
                    _model.apiResultb6aCopy =
                        await ApiAdereGroup.pOSTFlowresetCall.call(
                      deviceId: FFAppState().deviceId,
                      id: widget!.sequenceId?.toString(),
                      last: 0,
                    );

                    if ((_model.apiResultb6aCopy?.succeeded ?? true)) {
                      logFirebaseEvent('Button_Container_navigate_to');

                      context.pushNamed(
                        'APP-SCREEN',
                        queryParameters: {
                          'keyComponents': serializeParam(
                            0,
                            ParamType.int,
                          ),
                          'sequence': serializeParam(
                            widget!.sequenceId,
                            ParamType.int,
                          ),
                        }.withoutNulls,
                      );
                    }

                    safeSetState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).jett,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 17.0, 20.0, 16.0),
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Refaire le programme',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.white,
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
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent(
                        'PROGRAMME_REPLAY_Button_Container_ON_TAP');
                    logFirebaseEvent('Button_Container_alert_dialog');
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          content: Text(
                              'Vos données ont été sauvegardées dans votre compte'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                    logFirebaseEvent('Button_Container_action_block');
                    await action_blocks.postscreen(
                      context,
                      sequenceId: widget!.sequenceId?.toString(),
                      nu: widget!.sequenceId?.toString(),
                      rangeTextfield: 'NA',
                      sequenceNumber: widget!.sequenceId,
                      radio: 'NA',
                      drop: 'NA',
                      date: 'NA',
                    );
                    logFirebaseEvent('Button_Container_navigate_to');

                    context.pushNamed('ADERE_DASHBOARD');
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).jett,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 17.0, 20.0, 16.0),
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Choisir un nouveau programme',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.white,
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
              ].divide(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ],
    );
  }
}
