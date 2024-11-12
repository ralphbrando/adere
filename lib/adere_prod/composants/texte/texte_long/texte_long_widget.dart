import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'texte_long_model.dart';
export 'texte_long_model.dart';

class TexteLongWidget extends StatefulWidget {
  const TexteLongWidget({
    super.key,
    this.value,
  });

  final String? value;

  @override
  State<TexteLongWidget> createState() => _TexteLongWidgetState();
}

class _TexteLongWidgetState extends State<TexteLongWidget> {
  late TexteLongModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TexteLongModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget!.value!,
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Inter',
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ],
      ),
    );
  }
}
