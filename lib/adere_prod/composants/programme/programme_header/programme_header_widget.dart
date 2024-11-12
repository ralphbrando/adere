import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'programme_header_model.dart';
export 'programme_header_model.dart';

class ProgrammeHeaderWidget extends StatefulWidget {
  const ProgrammeHeaderWidget({
    super.key,
    required this.name,
    required this.icon,
  });

  final String? name;
  final String? icon;

  @override
  State<ProgrammeHeaderWidget> createState() => _ProgrammeHeaderWidgetState();
}

class _ProgrammeHeaderWidgetState extends State<ProgrammeHeaderWidget> {
  late ProgrammeHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgrammeHeaderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional(0.0, 0.0),
      children: [
        Container(
          width: double.infinity,
          height: 2.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).jett,
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).platinum,
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).jett,
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 14.0, 20.0, 13.0),
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
                            widget!.name!,
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).eerieBlack,
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
      ],
    );
  }
}
