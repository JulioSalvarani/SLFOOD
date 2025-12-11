import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modifica_pedido_widget.dart' show ModificaPedidoWidget;
import 'package:flutter/material.dart';

class ModificaPedidoModel extends FlutterFlowModel<ModificaPedidoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloTextController;
  String? Function(BuildContext, String?)? tituloTextControllerValidator;
  // State field(s) for Descricao widget.
  FocusNode? descricaoFocusNode1;
  TextEditingController? descricaoTextController1;
  String? Function(BuildContext, String?)? descricaoTextController1Validator;
  // State field(s) for Descricao widget.
  FocusNode? descricaoFocusNode2;
  TextEditingController? descricaoTextController2;
  String? Function(BuildContext, String?)? descricaoTextController2Validator;
  // State field(s) for Descricao widget.
  FocusNode? descricaoFocusNode3;
  TextEditingController? descricaoTextController3;
  String? Function(BuildContext, String?)? descricaoTextController3Validator;
  // State field(s) for Descricao widget.
  FocusNode? descricaoFocusNode4;
  TextEditingController? descricaoTextController4;
  String? Function(BuildContext, String?)? descricaoTextController4Validator;
  // State field(s) for Descricao widget.
  FocusNode? descricaoFocusNode5;
  TextEditingController? descricaoTextController5;
  String? Function(BuildContext, String?)? descricaoTextController5Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tituloFocusNode?.dispose();
    tituloTextController?.dispose();

    descricaoFocusNode1?.dispose();
    descricaoTextController1?.dispose();

    descricaoFocusNode2?.dispose();
    descricaoTextController2?.dispose();

    descricaoFocusNode3?.dispose();
    descricaoTextController3?.dispose();

    descricaoFocusNode4?.dispose();
    descricaoTextController4?.dispose();

    descricaoFocusNode5?.dispose();
    descricaoTextController5?.dispose();
  }
}
