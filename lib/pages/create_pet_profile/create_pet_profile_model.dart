import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatePetProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for petName widget.
  TextEditingController? petNameController;
  String? Function(BuildContext, String?)? petNameControllerValidator;
  // State field(s) for petType widget.
  String? petTypeValue;
  FormFieldController<String>? petTypeController;
  // State field(s) for petBreed widget.
  TextEditingController? petBreedController;
  String? Function(BuildContext, String?)? petBreedControllerValidator;
  // State field(s) for petAge widget.
  TextEditingController? petAgeController;
  String? Function(BuildContext, String?)? petAgeControllerValidator;
  // State field(s) for petBio widget.
  TextEditingController? petBioController;
  String? Function(BuildContext, String?)? petBioControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    petNameController?.dispose();
    petBreedController?.dispose();
    petAgeController?.dispose();
    petBioController?.dispose();
  }

  /// Additional helper methods are added here.

}
