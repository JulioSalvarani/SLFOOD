import '/flutter_flow/flutter_flow_util.dart';
import 'modifica_novidades_widget.dart' show ModificaNovidadesWidget;
import 'package:flutter/material.dart';

class ModificaNovidadesModel extends FlutterFlowModel<ModificaNovidadesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloTextController;
  String? Function(BuildContext, String?)? tituloTextControllerValidator;
  // State field(s) for Descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  // State field(s) for Cupom widget.
  FocusNode? cupomFocusNode1;
  TextEditingController? cupomTextController1;
  String? Function(BuildContext, String?)? cupomTextController1Validator;
  // State field(s) for Cupom widget.
  FocusNode? cupomFocusNode2;
  TextEditingController? cupomTextController2;
  String? Function(BuildContext, String?)? cupomTextController2Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tituloFocusNode?.dispose();
    tituloTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

    cupomFocusNode1?.dispose();
    cupomTextController1?.dispose();

    cupomFocusNode2?.dispose();
    cupomTextController2?.dispose();
  }
}
