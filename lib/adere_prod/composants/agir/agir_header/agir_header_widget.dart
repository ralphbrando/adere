import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'agir_header_model.dart';
export 'agir_header_model.dart';

class AgirHeaderWidget extends StatefulWidget {
  const AgirHeaderWidget({
    super.key,
    String? title,
    this.image,
    this.sequence,
    this.phase,
    this.seq,
  }) : this.title = title ?? ' ';

  final String title;
  final String? image;
  final String? sequence;
  final int? phase;
  final int? seq;

  @override
  State<AgirHeaderWidget> createState() => _AgirHeaderWidgetState();
}

class _AgirHeaderWidgetState extends State<AgirHeaderWidget> {
  late AgirHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgirHeaderModel());

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

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).platinum,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if ((FFAppState().screenLast != null) &&
                !FFAppState().isTechnique &&
                (FFAppState().screenLast != 0))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    FFIcons.kback,
                    color: FlutterFlowTheme.of(context).jett,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('AGIR_HEADER_COMP_BackIcon_ON_TAP');
                    logFirebaseEvent('BackIcon_backend_call');
                    _model.apiResultzu5 =
                        await ApiAdereGroup.pOSTFlowresetCall.call(
                      deviceId: FFAppState().deviceId,
                      id: widget!.sequence,
                      last: FFAppState().screenLast,
                      section: widget!.phase,
                    );

                    if ((_model.apiResultzu5?.succeeded ?? true)) {
                      logFirebaseEvent('BackIcon_update_app_state');
                      FFAppState().screenLast = 0;
                      safeSetState(() {});
                      logFirebaseEvent('BackIcon_navigate_to');

                      context.pushNamed(
                        'APP-SCREEN',
                        queryParameters: {
                          'sequence': serializeParam(
                            widget!.seq,
                            ParamType.int,
                          ),
                        }.withoutNulls,
                      );
                    }

                    safeSetState(() {});
                  },
                ),
              ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    FFAppState().stepCounter,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).ashGray,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    widget!.title,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).eerieBlack,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ].divide(SizedBox(height: 5.0)),
              ),
            ),
            Container(
              width: 55.0,
              height: 55.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).jett,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 6.0,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.network(
                    widget!.image!,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ].divide(SizedBox(width: 5.0)),
        ),
      ),
    );
  }
}
