part of 'generated.dart';

class JoinGroupVariablesBuilder {
  String groupId;

  final FirebaseDataConnect _dataConnect;
  JoinGroupVariablesBuilder(this._dataConnect, {required  this.groupId,});
  Deserializer<JoinGroupData> dataDeserializer = (dynamic json)  => JoinGroupData.fromJson(jsonDecode(json));
  Serializer<JoinGroupVariables> varsSerializer = (JoinGroupVariables vars) => jsonEncode(vars.toJson());
  Future<OperationResult<JoinGroupData, JoinGroupVariables>> execute() {
    return ref().execute();
  }

  MutationRef<JoinGroupData, JoinGroupVariables> ref() {
    JoinGroupVariables vars= JoinGroupVariables(groupId: groupId,);
    return _dataConnect.mutation("JoinGroup", dataDeserializer, varsSerializer, vars);
  }
}

@immutable
class JoinGroupGroupMembershipInsert {
  final String userId;
  final String groupId;
  JoinGroupGroupMembershipInsert.fromJson(dynamic json):
  
  userId = nativeFromJson<String>(json['userId']),
  groupId = nativeFromJson<String>(json['groupId']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final JoinGroupGroupMembershipInsert otherTyped = other as JoinGroupGroupMembershipInsert;
    return userId == otherTyped.userId && 
    groupId == otherTyped.groupId;
    
  }
  @override
  int get hashCode => Object.hashAll([userId.hashCode, groupId.hashCode]);
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['userId'] = nativeToJson<String>(userId);
    json['groupId'] = nativeToJson<String>(groupId);
    return json;
  }

  JoinGroupGroupMembershipInsert({
    required this.userId,
    required this.groupId,
  });
}

@immutable
class JoinGroupData {
  final JoinGroupGroupMembershipInsert groupMembership_insert;
  JoinGroupData.fromJson(dynamic json):
  
  groupMembership_insert = JoinGroupGroupMembershipInsert.fromJson(json['groupMembership_insert']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final JoinGroupData otherTyped = other as JoinGroupData;
    return groupMembership_insert == otherTyped.groupMembership_insert;
    
  }
  @override
  int get hashCode => groupMembership_insert.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['groupMembership_insert'] = groupMembership_insert.toJson();
    return json;
  }

  JoinGroupData({
    required this.groupMembership_insert,
  });
}

@immutable
class JoinGroupVariables {
  final String groupId;
  @Deprecated('fromJson is deprecated for Variable classes as they are no longer required for deserialization.')
  JoinGroupVariables.fromJson(Map<String, dynamic> json):
  
  groupId = nativeFromJson<String>(json['groupId']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final JoinGroupVariables otherTyped = other as JoinGroupVariables;
    return groupId == otherTyped.groupId;
    
  }
  @override
  int get hashCode => groupId.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['groupId'] = nativeToJson<String>(groupId);
    return json;
  }

  JoinGroupVariables({
    required this.groupId,
  });
}

