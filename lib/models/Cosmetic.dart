/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: prefer_const_literals_to_create_immutables, public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Cosmetic type in your schema. */
@immutable
class Cosmetic extends Model {
  static const classType = const _CosmeticModelType();
  final String id;
  final String? _title;
  final List<Review>? _reviews;
  final List<DogCosmetic>? _dogs;
  final List<IngredientCosmetic>? _ingredients;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get title {
    return _title;
  }
  
  List<Review>? get reviews {
    return _reviews;
  }
  
  List<DogCosmetic>? get dogs {
    return _dogs;
  }
  
  List<IngredientCosmetic>? get ingredients {
    return _ingredients;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Cosmetic._internal({required this.id, title, reviews, dogs, ingredients, createdAt, updatedAt}): _title = title, _reviews = reviews, _dogs = dogs, _ingredients = ingredients, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Cosmetic({String? id, String? title, List<Review>? reviews, List<DogCosmetic>? dogs, List<IngredientCosmetic>? ingredients}) {
    return Cosmetic._internal(
      id: id == null ? UUID.getUUID() : id,
      title: title,
      reviews: reviews != null ? List<Review>.unmodifiable(reviews) : reviews,
      dogs: dogs != null ? List<DogCosmetic>.unmodifiable(dogs) : dogs,
      ingredients: ingredients != null ? List<IngredientCosmetic>.unmodifiable(ingredients) : ingredients);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cosmetic &&
      id == other.id &&
      _title == other._title &&
      DeepCollectionEquality().equals(_reviews, other._reviews) &&
      DeepCollectionEquality().equals(_dogs, other._dogs) &&
      DeepCollectionEquality().equals(_ingredients, other._ingredients);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Cosmetic {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Cosmetic copyWith({String? id, String? title, List<Review>? reviews, List<DogCosmetic>? dogs, List<IngredientCosmetic>? ingredients}) {
    return Cosmetic._internal(
      id: id ?? this.id,
      title: title ?? this.title,
      reviews: reviews ?? this.reviews,
      dogs: dogs ?? this.dogs,
      ingredients: ingredients ?? this.ingredients);
  }
  
  Cosmetic.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _reviews = json['reviews'] is List
        ? (json['reviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Review.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _dogs = json['dogs'] is List
        ? (json['dogs'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => DogCosmetic.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _ingredients = json['ingredients'] is List
        ? (json['ingredients'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => IngredientCosmetic.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'reviews': _reviews?.map((Review? e) => e?.toJson()).toList(), 'dogs': _dogs?.map((DogCosmetic? e) => e?.toJson()).toList(), 'ingredients': _ingredients?.map((IngredientCosmetic? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField REVIEWS = QueryField(
    fieldName: "reviews",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Review).toString()));
  static final QueryField DOGS = QueryField(
    fieldName: "dogs",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (DogCosmetic).toString()));
  static final QueryField INGREDIENTS = QueryField(
    fieldName: "ingredients",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (IngredientCosmetic).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Cosmetic";
    modelSchemaDefinition.pluralName = "Cosmetics";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: AuthRuleProvider.USERPOOLS,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ]),
      AuthRule(
        authStrategy: AuthStrategy.GROUPS,
        groupClaim: "cognito:groups",
        groups: [ "Admin" ],
        provider: AuthRuleProvider.USERPOOLS,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["id"], name: null)
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Cosmetic.TITLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Cosmetic.REVIEWS,
      isRequired: false,
      ofModelName: (Review).toString(),
      associatedKey: Review.COSMETICID
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Cosmetic.DOGS,
      isRequired: false,
      ofModelName: (DogCosmetic).toString(),
      associatedKey: DogCosmetic.COSMETIC
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Cosmetic.INGREDIENTS,
      isRequired: false,
      ofModelName: (IngredientCosmetic).toString(),
      associatedKey: IngredientCosmetic.COSMETIC
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _CosmeticModelType extends ModelType<Cosmetic> {
  const _CosmeticModelType();
  
  @override
  Cosmetic fromJson(Map<String, dynamic> jsonData) {
    return Cosmetic.fromJson(jsonData);
  }
}