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


/** This is an auto generated class representing the DCTGood type in your schema. */
@immutable
class DCTGood extends Model {
  static const classType = const _DCTGoodModelType();
  final String id;
  final String? _content_id;
  final bool? _like;
  final bool? _trial;
  final String? _user_name;
  final String? _user_id;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get content_id {
    return _content_id;
  }
  
  bool? get like {
    return _like;
  }
  
  bool? get trial {
    return _trial;
  }
  
  String? get user_name {
    return _user_name;
  }
  
  String? get user_id {
    return _user_id;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const DCTGood._internal({required this.id, content_id, like, trial, user_name, user_id, createdAt, updatedAt}): _content_id = content_id, _like = like, _trial = trial, _user_name = user_name, _user_id = user_id, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory DCTGood({String? id, String? content_id, bool? like, bool? trial, String? user_name, String? user_id}) {
    return DCTGood._internal(
      id: id == null ? UUID.getUUID() : id,
      content_id: content_id,
      like: like,
      trial: trial,
      user_name: user_name,
      user_id: user_id);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DCTGood &&
      id == other.id &&
      _content_id == other._content_id &&
      _like == other._like &&
      _trial == other._trial &&
      _user_name == other._user_name &&
      _user_id == other._user_id;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("DCTGood {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("content_id=" + "$_content_id" + ", ");
    buffer.write("like=" + (_like != null ? _like!.toString() : "null") + ", ");
    buffer.write("trial=" + (_trial != null ? _trial!.toString() : "null") + ", ");
    buffer.write("user_name=" + "$_user_name" + ", ");
    buffer.write("user_id=" + "$_user_id" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  DCTGood copyWith({String? id, String? content_id, bool? like, bool? trial, String? user_name, String? user_id}) {
    return DCTGood._internal(
      id: id ?? this.id,
      content_id: content_id ?? this.content_id,
      like: like ?? this.like,
      trial: trial ?? this.trial,
      user_name: user_name ?? this.user_name,
      user_id: user_id ?? this.user_id);
  }
  
  DCTGood.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _content_id = json['content_id'],
      _like = json['like'],
      _trial = json['trial'],
      _user_name = json['user_name'],
      _user_id = json['user_id'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'content_id': _content_id, 'like': _like, 'trial': _trial, 'user_name': _user_name, 'user_id': _user_id, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField CONTENT_ID = QueryField(fieldName: "content_id");
  static final QueryField LIKE = QueryField(fieldName: "like");
  static final QueryField TRIAL = QueryField(fieldName: "trial");
  static final QueryField USER_NAME = QueryField(fieldName: "user_name");
  static final QueryField USER_ID = QueryField(fieldName: "user_id");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "DCTGood";
    modelSchemaDefinition.pluralName = "DCTGoods";
    
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
      key: DCTGood.CONTENT_ID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DCTGood.LIKE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DCTGood.TRIAL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DCTGood.USER_NAME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: DCTGood.USER_ID,
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

class _DCTGoodModelType extends ModelType<DCTGood> {
  const _DCTGoodModelType();
  
  @override
  DCTGood fromJson(Map<String, dynamic> jsonData) {
    return DCTGood.fromJson(jsonData);
  }
}