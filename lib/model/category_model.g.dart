// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

extension CategoryCopyWith on Category {
  Category copyWith({
    String? id,
    String? name,
    String? pathLogo,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      pathLogo: pathLogo ?? this.pathLogo,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map json) => Category(
      id: json['id'] as String?,
      pathLogo: json['pathLogo'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('pathLogo', instance.pathLogo);
  writeNotNull('id', instance.id);
  return val;
}
