import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'radio_multiple_model.dart';
export 'radio_multiple_model.dart';

class RadioMultipleWidget extends StatefulWidget {
  const RadioMultipleWidget({
    super.key,
    this.choices,
  });

  final List<String>? choices;

  @override
  State<RadioMultipleWidget> createState() => _RadioMultipleWidgetState();
}

class _RadioMultipleWidgetState extends State<RadioMultipleWidget> {
  late RadioMultipleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RadioMultipleModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (false)
          FlutterFlowChoiceChips(
            options: widget!.choices!.map((label) => ChipData(label)).toList(),
            onChanged: (val) =>
                safeSetState(() => _model.choiceChipsValues = val),
            selectedChipStyle: ChipStyle(
              backgroundColor: FlutterFlowTheme.of(context).jett,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    color: Colors.white,
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
              iconColor: Color(0x00000000),
              iconSize: 24.0,
              labelPadding:
                  EdgeInsetsDirectional.fromSTEB(20.0, 17.0, 20.0, 16.0),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(50.0),
            ),
            unselectedChipStyle: ChipStyle(
              backgroundColor: FlutterFlowTheme.of(context).white,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    color: FlutterFlowTheme.of(context).eerieBlack,
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
              iconColor: Color(0x00000000),
              iconSize: 24.0,
              labelPadding:
                  EdgeInsetsDirectional.fromSTEB(20.0, 17.0, 20.0, 16.0),
              elevation: 0.0,
              borderColor: FlutterFlowTheme.of(context).jett,
              borderWidth: 2.0,
              borderRadius: BorderRadius.circular(50.0),
            ),
            chipSpacing: 20.0,
            rowSpacing: 20.0,
            multiselect: true,
            initialized: _model.choiceChipsValues != null,
            alignment: WrapAlignment.start,
            controller: _model.choiceChipsValueController ??=
                FormFieldController<List<String>>(
              [],
            ),
            wrapped: true,
          ),
        Builder(
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
                    logFirebaseEvent('RADIO_MULTIPLE_Items_Container_ON_TAP');
                    if (FFAppState()
                        .radioMultipleString
                        .where((e) => e == choiceItem)
                        .toList()
                        .isNotEmpty) {
                      logFirebaseEvent('Items_Container_update_app_state');
                      FFAppState().removeFromRadioMultipleString(choiceItem);
                      safeSetState(() {});
                    } else {
                      logFirebaseEvent('Items_Container_update_app_state');
                      FFAppState().addToRadioMultipleString(choiceItem);
                      safeSetState(() {});
                    }
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            choiceItem,
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
                          if (FFAppState()
                              .radioMultipleString
                              .where((e) => e == choiceItem)
                              .toList()
                              .isNotEmpty)
                            Icon(
                              FFIcons.kcloseSquare,
                              color: Colors.white,
                              size: 24.0,
                            ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ].divide(SizedBox(height: 20.0)),
    );
  }
}
