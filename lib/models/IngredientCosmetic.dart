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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the IngredientCosmetic type in your schema. */
@immutable
class IngredientCosmetic extends Model {
  static const classType = const _IngredientCosmeticModelType();
  final String id;
  final Cosmetic? _cosmetic;
  final Ingredient? _ingredient;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  Cosmetic get cosmetic {
    try {
      return _cosmetic!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Ingredient get ingredient {
    try {
      return _ingredient!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const IngredientCosmetic._internal({required this.id, required cosmetic, required ingredient, createdAt, updatedAt}): _cosmetic = cosmetic, _ingredient = ingredient, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory IngredientCosmetic({String? id, required Cosmetic cosmetic, required Ingredient ingredient}) {
    return IngredientCosmetic._internal(
      id: id == null ? UUID.getUUID() : id,
      cosmetic: cosmetic,
      ingredient: ingredient);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngredientCosmetic &&
      id == other.id &&
      _cosmetic == other._cosmetic &&
      _ingredient == other._ingredient;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("IngredientCosmetic {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("cosmetic=" + (_cosmetic != null ? _cosmetic!.toString() : "null") + ", ");
    buffer.write("ingredient=" + (_ingredient != null ? _ingredient!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  IngredientCosmetic copyWith({String? id, Cosmetic? cosmetic, Ingredient? ingredient}) {
    return IngredientCosmetic._internal(
      id: id ?? this.id,
      cosmetic: cosmetic ?? this.cosmetic,
      ingredient: ingredient ?? this.ingredient);
  }
  
  IngredientCosmetic.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _cosmetic = json['cosmetic']?['serializedData'] != null
        ? Cosmetic.fromJson(new Map<String, dynamic>.from(json['cosmetic']['serializedData']))
        : null,
      _ingredient = json['ingredient']?['serializedData'] != null
        ? Ingredient.fromJson(new Map<String, dynamic>.from(json['ingredient']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'cosmetic': _cosmetic?.toJson(), 'ingredient': _ingredient?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField COSMETIC = QueryField(
    fieldName: "cosmetic",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Cosmetic).toString()));
  static final QueryField INGREDIENT = QueryField(
    fieldName: "ingredient",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: (Ingredient).toString()));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "IngredientCosmetic";
    modelSchemaDefinition.pluralName = "IngredientCosmetics";
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["cosmeticID"], name: "byCosmetic"),
      ModelIndex(fields: const ["ingredientID"], name: "byIngredient")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: IngredientCosmetic.COSMETIC,
      isRequired: true,
      // ignore: deprecated_member_use
      targetName: "cosmeticID",
      ofModelName: (Cosmetic).toString()
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: IngredientCosmetic.INGREDIENT,
      isRequired: true,
      // ignore: deprecated_member_use
      targetName: "ingredientID",
      ofModelName: (Ingredient).toString()
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

class _IngredientCosmeticModelType extends ModelType<IngredientCosmetic> {
  const _IngredientCosmeticModelType();
  
  @override
  IngredientCosmetic fromJson(Map<String, dynamic> jsonData) {
    return IngredientCosmetic.fromJson(jsonData);
  }
}