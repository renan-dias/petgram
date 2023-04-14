import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'privacy_model.dart';
export 'privacy_model.dart';

class PrivacyWidget extends StatefulWidget {
  const PrivacyWidget({Key? key}) : super(key: key);

  @override
  _PrivacyWidgetState createState() => _PrivacyWidgetState();
}

class _PrivacyWidgetState extends State<PrivacyWidget> {
  late PrivacyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'privacy',
        color: FlutterFlowTheme.of(context).primary,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Text(
                'Política de privacidade e dados',
                textAlign: TextAlign.justify,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: Colors.white,
                      fontSize: 22.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'O aplicativo Petgram é de propriedade e operado por Progidyoo. Este documento apresenta informações importantes sobre nossas políticas de privacidade de dados e responsabilidade pelo uso do aplicativo.\n\nColeta de Dados\nAo usar o aplicativo Petgram, os usuários concordam em fornecer informações de conta, incluindo nome de usuário, senha e informações de perfil. Além disso, os usuários podem optar por fornecer informações adicionais, como fotos e comentários. Essas informações são armazenadas em um banco de dados seguro no Firebase.\n\nUso de Dados\nO Petgram usa informações coletadas dos usuários para melhorar o funcionamento do aplicativo, bem como para fornecer uma experiência personalizada para cada usuário. As informações coletadas podem ser usadas para fins de análise e pesquisa, bem como para melhorar os recursos do aplicativo e a segurança do usuário.\n\nCompartilhamento de Dados\nO Petgram não compartilha informações de conta ou fotos com terceiros, exceto quando exigido por lei ou em casos de violação dos termos de uso do aplicativo.\n\nProteção de Dados\nO Petgram emprega medidas de segurança para proteger as informações dos usuários. O Firebase é um banco de dados seguro e robusto que garante a proteção de informações confidenciais. No entanto, os usuários devem estar cientes de que nenhum sistema de segurança é infalível e que nenhuma garantia pode ser dada quanto à segurança das informações transmitidas pela Internet.\n\nRemoção de Informações\nOs usuários têm o direito de remover todas as suas informações do Petgram, incluindo fotos e comentários. Os usuários podem fazer isso acessando as opções de conta no aplicativo e seguindo as instruções fornecidas.\n\nAo usar o aplicativo Petgram, os usuários concordam com os termos e condições descritos neste documento. Se você tiver alguma dúvida sobre nossas políticas de privacidade ou responsabilidade, entre em contato conosco por meio das opções de suporte disponíveis no aplicativo.',
                                  style: TextStyle(),
                                )
                              ],
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
