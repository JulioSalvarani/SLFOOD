import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nova_funcao_widget.dart' show NovaFuncaoWidget;
import 'package:flutter/material.dart';

class NovaFuncaoModel extends FlutterFlowModel<NovaFuncaoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // Stores action output result for [Backend Call - API (crianovoPapel)] action in Button widget.
  ApiCallResponse? resultado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();
  }
}
