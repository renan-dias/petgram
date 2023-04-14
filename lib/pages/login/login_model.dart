import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email widget.
  TextEditingController? emailController1;
  String? Function(BuildContext, String?)? emailController1Validator;
  // State field(s) for password widget.
  TextEditingController? passwordController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordController1Validator;
  // State field(s) for PageView widget.
  PageController? pageViewController;
  // State field(s) for email widget.
  TextEditingController? emailController2;
  String? Function(BuildContext, String?)? emailController2Validator;
  // State field(s) for password widget.
  TextEditingController? passwordController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordController2Validator;
  // State field(s) for email widget.
  TextEditingController? emailController3;
  String? Function(BuildContext, String?)? emailController3Validator;
  // State field(s) for password widget.
  TextEditingController? passwordController3;
  late bool passwordVisibility3;
  String? Function(BuildContext, String?)? passwordController3Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
    passwordVisibility3 = false;
  }

  void dispose() {
    emailController1?.dispose();
    passwordController1?.dispose();
    emailController2?.dispose();
    passwordController2?.dispose();
    emailController3?.dispose();
    passwordController3?.dispose();
  }

  /// Additional helper methods are added here.

}
