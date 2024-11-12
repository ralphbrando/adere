import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'markdown_comp_model.dart';
export 'markdown_comp_model.dart';

class MarkdownCompWidget extends StatefulWidget {
  const MarkdownCompWidget({
    super.key,
    this.value,
  });

  final String? value;

  @override
  State<MarkdownCompWidget> createState() => _MarkdownCompWidgetState();
}

class _MarkdownCompWidgetState extends State<MarkdownCompWidget> {
  late MarkdownCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MarkdownCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: MarkdownBody(
          data: widget!.value!,
          selectable: true,
          onTapLink: (_, url, __) => launchURL(url!),
        ),
      ),
    );
  }
}
