import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pets_record.g.dart';

abstract class PetsRecord implements Built<PetsRecord, PetsRecordBuilder> {
  static Serializer<PetsRecord> get serializer => _$petsRecordSerializer;

  DocumentReference? get userAssociation;

  String? get petPhoto;

  String? get petName;

  String? get petType;

  String? get petAge;

  String? get petBreed;

  String? get petBio;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PetsRecordBuilder builder) => builder
    ..petPhoto = ''
    ..petName = ''
    ..petType = ''
    ..petAge = ''
    ..petBreed = ''
    ..petBio = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pets');

  static Stream<PetsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PetsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PetsRecord._();
  factory PetsRecord([void Function(PetsRecordBuilder) updates]) = _$PetsRecord;

  static PetsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPetsRecordData({
  DocumentReference? userAssociation,
  String? petPhoto,
  String? petName,
  String? petType,
  String? petAge,
  String? petBreed,
  String? petBio,
}) {
  final firestoreData = serializers.toFirestore(
    PetsRecord.serializer,
    PetsRecord(
      (p) => p
        ..userAssociation = userAssociation
        ..petPhoto = petPhoto
        ..petName = petName
        ..petType = petType
        ..petAge = petAge
        ..petBreed = petBreed
        ..petBio = petBio,
    ),
  );

  return firestoreData;
}
