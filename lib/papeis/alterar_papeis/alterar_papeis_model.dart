import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'alterar_papeis_widget.dart' show AlterarPapeisWidget;
import 'package:flutter/material.dart';

class AlterarPapeisModel extends FlutterFlowModel<AlterarPapeisWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // Stores action output result for [Backend Call - API (editapapel)] action in Button widget.
  ApiCallResponse? resultadoeditapapel;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();
  }
}
