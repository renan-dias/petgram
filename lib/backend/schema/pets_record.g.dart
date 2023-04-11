// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pets_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PetsRecord> _$petsRecordSerializer = new _$PetsRecordSerializer();

class _$PetsRecordSerializer implements StructuredSerializer<PetsRecord> {
  @override
  final Iterable<Type> types = const [PetsRecord, _$PetsRecord];
  @override
  final String wireName = 'PetsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PetsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userAssociation;
    if (value != null) {
      result
        ..add('userAssociation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.petPhoto;
    if (value != null) {
      result
        ..add('petPhoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.petName;
    if (value != null) {
      result
        ..add('petName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.petType;
    if (value != null) {
      result
        ..add('petType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.petAge;
    if (value != null) {
      result
        ..add('petAge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.petBreed;
    if (value != null) {
      result
        ..add('petBreed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.petBio;
    if (value != null) {
      result
        ..add('petBio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PetsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PetsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userAssociation':
          result.userAssociation = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'petPhoto':
          result.petPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'petName':
          result.petName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'petType':
          result.petType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'petAge':
          result.petAge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'petBreed':
          result.petBreed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'petBio':
          result.petBio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PetsRecord extends PetsRecord {
  @override
  final DocumentReference<Object?>? userAssociation;
  @override
  final String? petPhoto;
  @override
  final String? petName;
  @override
  final String? petType;
  @override
  final String? petAge;
  @override
  final String? petBreed;
  @override
  final String? petBio;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PetsRecord([void Function(PetsRecordBuilder)? updates]) =>
      (new PetsRecordBuilder()..update(updates))._build();

  _$PetsRecord._(
      {this.userAssociation,
      this.petPhoto,
      this.petName,
      this.petType,
      this.petAge,
      this.petBreed,
      this.petBio,
      this.ffRef})
      : super._();

  @override
  PetsRecord rebuild(void Function(PetsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PetsRecordBuilder toBuilder() => new PetsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PetsRecord &&
        userAssociation == other.userAssociation &&
        petPhoto == other.petPhoto &&
        petName == other.petName &&
        petType == other.petType &&
        petAge == other.petAge &&
        petBreed == other.petBreed &&
        petBio == other.petBio &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userAssociation.hashCode);
    _$hash = $jc(_$hash, petPhoto.hashCode);
    _$hash = $jc(_$hash, petName.hashCode);
    _$hash = $jc(_$hash, petType.hashCode);
    _$hash = $jc(_$hash, petAge.hashCode);
    _$hash = $jc(_$hash, petBreed.hashCode);
    _$hash = $jc(_$hash, petBio.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PetsRecord')
          ..add('userAssociation', userAssociation)
          ..add('petPhoto', petPhoto)
          ..add('petName', petName)
          ..add('petType', petType)
          ..add('petAge', petAge)
          ..add('petBreed', petBreed)
          ..add('petBio', petBio)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PetsRecordBuilder implements Builder<PetsRecord, PetsRecordBuilder> {
  _$PetsRecord? _$v;

  DocumentReference<Object?>? _userAssociation;
  DocumentReference<Object?>? get userAssociation => _$this._userAssociation;
  set userAssociation(DocumentReference<Object?>? userAssociation) =>
      _$this._userAssociation = userAssociation;

  String? _petPhoto;
  String? get petPhoto => _$this._petPhoto;
  set petPhoto(String? petPhoto) => _$this._petPhoto = petPhoto;

  String? _petName;
  String? get petName => _$this._petName;
  set petName(String? petName) => _$this._petName = petName;

  String? _petType;
  String? get petType => _$this._petType;
  set petType(String? petType) => _$this._petType = petType;

  String? _petAge;
  String? get petAge => _$this._petAge;
  set petAge(String? petAge) => _$this._petAge = petAge;

  String? _petBreed;
  String? get petBreed => _$this._petBreed;
  set petBreed(String? petBreed) => _$this._petBreed = petBreed;

  String? _petBio;
  String? get petBio => _$this._petBio;
  set petBio(String? petBio) => _$this._petBio = petBio;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PetsRecordBuilder() {
    PetsRecord._initializeBuilder(this);
  }

  PetsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userAssociation = $v.userAssociation;
      _petPhoto = $v.petPhoto;
      _petName = $v.petName;
      _petType = $v.petType;
      _petAge = $v.petAge;
      _petBreed = $v.petBreed;
      _petBio = $v.petBio;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PetsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PetsRecord;
  }

  @override
  void update(void Function(PetsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PetsRecord build() => _build();

  _$PetsRecord _build() {
    final _$result = _$v ??
        new _$PetsRecord._(
            userAssociation: userAssociation,
            petPhoto: petPhoto,
            petName: petName,
            petType: petType,
            petAge: petAge,
            petBreed: petBreed,
            petBio: petBio,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
