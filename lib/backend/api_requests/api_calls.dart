import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginGestorCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "senha": "${escapeStringForJson(senha)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'loginGestor',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/login_gestor',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuario.name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.usuario.email''',
      ));
  static dynamic funcao(dynamic response) => getJsonField(
        response,
        r'''$.usuario.papel_id''',
      );
}

class PegaTodosProdutosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'pegaTodosProdutos',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/pega_todos_produtos',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? descricao(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? preco(dynamic response) => (getJsonField(
        response,
        r'''$[:].preco''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<bool>? precisaprod(dynamic response) => (getJsonField(
        response,
        r'''$[:].precisa_produzir''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<int>? qtddisp(dynamic response) => (getJsonField(
        response,
        r'''$[:].qtd_disp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class PegaTodosPapeisCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'pegaTodosPapeis',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/pegaTodosPapeis',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? papel(dynamic response) => (getJsonField(
        response,
        r'''$[:].papel''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? numero(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class PegaTodosColaboradoresCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'pegaTodosColaboradores',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/retorna_todos_usuarios',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? email(dynamic response) => (getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? papel(dynamic response) => (getJsonField(
        response,
        r'''$[:]._papel.papel''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? papelnumero(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class EditapapelCall {
  static Future<ApiCallResponse> call({
    String? nomeanterior = '',
    String? nomenovo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome_anterior": "${escapeStringForJson(nomeanterior)}",
  "nome_novo": "${escapeStringForJson(nomenovo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editapapel',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/edita_papel',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoverPapelCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'removerPapel',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/exclui_papel',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'nome': nome,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CrianovoPapelCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crianovoPapel',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/novo_papel',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditaProdutoSimplificadoCall {
  static Future<ApiCallResponse> call({
    String? nomeAnterior = '',
    String? nomeNovo = '',
    double? preco,
    String? descricao = '',
    String? qtdDisp = '',
    bool? precisaProduzir,
  }) async {
    final ffApiRequestBody = '''
{
  "nome_anterior": "${escapeStringForJson(nomeAnterior)}",
  "nome_novo": "${escapeStringForJson(nomeNovo)}",
  "preco": ${preco},
  "descricao": "${escapeStringForJson(descricao)}",
  "qtdDisp": "${escapeStringForJson(qtdDisp)}",
  "precisaProduzir": ${precisaProduzir}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editaProdutoSimplificado',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/edita_produtosimplificado',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ExcluiProdutoCall {
  static Future<ApiCallResponse> call({
    String? produto = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'excluiProduto',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/exclui_produto',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'nome': produto,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriaProdutoSimplificadoCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    double? preco,
    String? descricao = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "preco": ${preco},
  "descricao": "${escapeStringForJson(descricao)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criaProdutoSimplificado',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/cria_produto_simplificado',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriaNovoColaboradorCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? senha = '',
    String? papel = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(senha)}",
  "papel": "${escapeStringForJson(papel)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criaNovoColaborador',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/cria_novo_usuario',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditaColaboradorCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? senha = '',
    String? papel = '',
    String? emailAntigo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email_antigo": "${escapeStringForJson(emailAntigo)}",
  "senha": "${escapeStringForJson(senha)}",
  "funcao": "${escapeStringForJson(papel)}",
  "email": "${escapeStringForJson(email)}",
  "nome": "${escapeStringForJson(nome)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editaColaborador',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/edita_usuario_simplificado',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ExcluirColaboradorCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'excluirColaborador',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/exclui_usuario',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'email': email,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriaNovidadeCall {
  static Future<ApiCallResponse> call({
    String? titulo = '',
    String? descricao = '',
    String? cupom = '',
    int? desconto,
  }) async {
    final ffApiRequestBody = '''
{
  "titulo": "${escapeStringForJson(titulo)}",
  "descricao": "${escapeStringForJson(descricao)}",
  "cupom": "${escapeStringForJson(cupom)}",
  "desconto": ${desconto}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criaNovidade',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/cria_novidade',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditaNovidadeCall {
  static Future<ApiCallResponse> call({
    String? tituloAntigo = '',
    String? descricaoAntiga = '',
    String? titulo = '',
    String? descricao = '',
    String? cupom = '',
    int? desconto,
    bool? validade = true,
  }) async {
    final ffApiRequestBody = '''
{
  "titulo_antigo": "${escapeStringForJson(tituloAntigo)}",
  "descricao_antiga": "${escapeStringForJson(descricaoAntiga)}",
  "titulo": "${escapeStringForJson(titulo)}",
  "descricao": "${escapeStringForJson(descricao)}",
  "cupom": "${escapeStringForJson(cupom)}",
  "desconto": ${desconto},
  "validade": ${validade}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editaNovidade',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/edita_novidades',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ExcluiNovidadeCall {
  static Future<ApiCallResponse> call({
    String? titulo = '',
    String? descricao = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'excluiNovidade',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/deleta_novidades',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'titulo': titulo,
        'descricao': descricao,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PegaTodasNovidadesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'pegaTodasNovidades',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/pega_todas_novidades',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? titulo(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? descricao(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cupom(dynamic response) => (getJsonField(
        response,
        r'''$[:].CUPOM''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? desconto(dynamic response) => (getJsonField(
        response,
        r'''$[:].desconto''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<bool>? visibilidade(dynamic response) => (getJsonField(
        response,
        r'''$[:].visibilidade''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class EditaVisibilidadeCall {
  static Future<ApiCallResponse> call({
    String? titulo = '',
    String? descricao = '',
    bool? visiblidade,
  }) async {
    final ffApiRequestBody = '''
{
  "titulo": "${escapeStringForJson(titulo)}",
  "descricao": "${escapeStringForJson(descricao)}",
  "visibilidade": ${visiblidade}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editaVisibilidade',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/edita_Visibilidade',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditaPrecisaProduzirCall {
  static Future<ApiCallResponse> call({
    bool? precisaProd,
    String? nome = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "precisa_prod": ${precisaProd}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editaPrecisaProduzir',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/edita_precisa_produzir',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PegaTodosPedidosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'pegaTodosPedidos',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/pega_todos_pedidos',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? pedido(dynamic response) => (getJsonField(
        response,
        r'''$[:].cod_pedido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? subtotal(dynamic response) => (getJsonField(
        response,
        r'''$[:].valorInicial''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? entrega(dynamic response) => (getJsonField(
        response,
        r'''$[:].valorEntregador''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? total(dynamic response) => (getJsonField(
        response,
        r'''$[:].total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? descontopontos(dynamic response) => (getJsonField(
        response,
        r'''$[:].descontocompontos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? cupom(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigousado''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nomeCliente(dynamic response) => (getJsonField(
        response,
        r'''$[:]._cliente.nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:]._status_pedido.status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PegaStatusPedidoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'pegaStatusPedido',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/pegaStatusPedido',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class EditaPedidoCall {
  static Future<ApiCallResponse> call({
    String? pedido = '',
    String? subtotal = '',
    String? entrega = '',
    String? total = '',
    String? status = '',
  }) async {
    final ffApiRequestBody = '''
{
  "N_Pedido": "${escapeStringForJson(pedido)}",
  "total": "${escapeStringForJson(total)}",
  "subtotal": "${escapeStringForJson(subtotal)}",
  "valorEntrega": "${escapeStringForJson(entrega)}",
  "status": "${escapeStringForJson(status)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editaPedido',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:dmBo-aBZ/modifica_statusPedido',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelaPedidoCall {
  static Future<ApiCallResponse> call({
    String? codPedido = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cancelaPedido',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:zhG7S9wm/cancelar_cobranca_CLIENTE',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'cod_pedido': codPedido,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
