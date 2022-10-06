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

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the CosmeticIngredientCount type in your schema. */
@immutable
class CosmeticIngredientCount extends Model {
  static const classType = const _CosmeticIngredientCountModelType();
  final String id;
  final String? _cosmeticID;
  final String? _IngredientID;
  final String? _count_info;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get cosmeticID {
    return _cosmeticID;
  }
  
  String? get IngredientID {
    return _IngredientID;
  }
  
  String? get count_info {
    return _count_info;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const CosmeticIngredientCount._internal({required this.id, cosmeticID, IngredientID, count_info, createdAt, updatedAt}): _cosmeticID = cosmeticID, _IngredientID = IngredientID, _count_info = count_info, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory CosmeticIngredientCount({String? id, String? cosmeticID, String? IngredientID, String? count_info}) {
    return CosmeticIngredientCount._internal(
      id: id == null ? UUID.getUUID() : id,
      cosmeticID: cosmeticID,
      IngredientID: IngredientID,
      count_info: count_info);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CosmeticIngredientCount &&
      id == other.id &&
      _cosmeticID == other._cosmeticID &&
      _IngredientID == other._IngredientID &&
      _count_info == other._count_info;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CosmeticIngredientCount {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("cosmeticID=" + "$_cosmeticID" + ", ");
    buffer.write("IngredientID=" + "$_IngredientID" + ", ");
    buffer.write("count_info=" + "$_count_info" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CosmeticIngredientCount copyWith({String? id, String? cosmeticID, String? IngredientID, String? count_info}) {
    return CosmeticIngredientCount._internal(
      id: id ?? this.id,
      cosmeticID: cosmeticID ?? this.cosmeticID,
      IngredientID: IngredientID ?? this.IngredientID,
      count_info: count_info ?? this.count_info);
  }
  
  CosmeticIngredientCount.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _cosmeticID = json['cosmeticID'],
      _IngredientID = json['IngredientID'],
      _count_info = json['count_info'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'cosmeticID': _cosmeticID, 'IngredientID': _IngredientID, 'count_info': _count_info, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField COSMETICID = QueryField(fieldName: "cosmeticID");
  static final QueryField INGREDIENTID = QueryField(fieldName: "IngredientID");
  static final QueryField COUNT_INFO = QueryField(fieldName: "count_info");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CosmeticIngredientCount";
    modelSchemaDefinition.pluralName = "CosmeticIngredientCounts";
    
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CosmeticIngredientCount.COSMETICID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CosmeticIngredientCount.INGREDIENTID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: CosmeticIngredientCount.COUNT_INFO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
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

class _CosmeticIngredientCountModelType extends ModelType<CosmeticIngredientCount> {
  const _CosmeticIngredientCountModelType();
  
  @override
  CosmeticIngredientCount fromJson(Map<String, dynamic> jsonData) {
    return CosmeticIngredientCount.fromJson(jsonData);
  }
}