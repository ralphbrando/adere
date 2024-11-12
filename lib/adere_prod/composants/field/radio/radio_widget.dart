import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'radio_model.dart';
export 'radio_model.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({
    super.key,
    this.choices,
    required this.action,
  });

  final List<String>? choices;
  final Future Function()? action;

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  late RadioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RadioModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final choice = widget!.choices?.toList() ?? [];

        return ListView.separated(
          padding: EdgeInsets.zero,
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: choice.length,
          separatorBuilder: (_, __) => SizedBox(height: 20.0),
          itemBuilder: (context, choiceIndex) {
            final choiceItem = choice[choiceIndex];
            return InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('RADIO_COMP_Item_Container_ON_TAP');
                logFirebaseEvent('Item_Container_update_app_state');
                FFAppState().radioMultipleString = [];
                FFAppState().update(() {});
                logFirebaseEvent('Item_Container_update_app_state');
                FFAppState().addToRadioMultipleString(choiceItem);
                FFAppState().update(() {});
                logFirebaseEvent('Item_Container_execute_callback');
                await widget.action?.call();
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).jett,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 17.0, 20.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        choiceItem,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
            );
          },
        );
      },
    );
  }
}
