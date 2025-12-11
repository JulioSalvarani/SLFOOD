import '/flutter_flow/flutter_flow_util.dart';
import 'alterar_produto_widget.dart' show AlterarProdutoWidget;
import 'package:flutter/material.dart';

class AlterarProdutoModel extends FlutterFlowModel<AlterarProdutoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode1;
  TextEditingController? emailTextController1;
  String? Function(BuildContext, String?)? emailTextController1Validator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode2;
  TextEditingController? emailTextController2;
  String? Function(BuildContext, String?)? emailTextController2Validator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode3;
  TextEditingController? emailTextController3;
  String? Function(BuildContext, String?)? emailTextController3Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    emailFocusNode1?.dispose();
    emailTextController1?.dispose();

    emailFocusNode2?.dispose();
    emailTextController2?.dispose();

    emailFocusNode3?.dispose();
    emailTextController3?.dispose();
  }
}
