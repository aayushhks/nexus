part of 'generated.dart';

class ListAvailableGroupsVariablesBuilder {
  
  final FirebaseDataConnect _dataConnect;
  ListAvailableGroupsVariablesBuilder(this._dataConnect, );
  Deserializer<ListAvailableGroupsData> dataDeserializer = (dynamic json)  => ListAvailableGroupsData.fromJson(jsonDecode(json));
  
  Future<QueryResult<ListAvailableGroupsData, void>> execute() {
    return ref().execute();
  }

  QueryRef<ListAvailableGroupsData, void> ref() {
    
    return _dataConnect.query("ListAvailableGroups", dataDeserializer, emptySerializer, null);
  }
}

@immutable
class ListAvailableGroupsGroups {
  final String id;
  final String name;
  final String description;
  final String? imageUrl;
  final Timestamp createdAt;
  final ListAvailableGroupsGroupsCreator? creator;
  ListAvailableGroupsGroups.fromJson(dynamic json):
  
  id = nativeFromJson<String>(json['id']),
  name = nativeFromJson<String>(json['name']),
  description = nativeFromJson<String>(json['description']),
  imageUrl = json['imageUrl'] == null ? null : nativeFromJson<String>(json['imageUrl']),
  createdAt = Timestamp.fromJson(json['createdAt']),
  creator = json['creator'] == null ? null : ListAvailableGroupsGroupsCreator.fromJson(json['creator']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final ListAvailableGroupsGroups otherTyped = other as ListAvailableGroupsGroups;
    return id == otherTyped.id && 
    name == otherTyped.name && 
    description == otherTyped.description && 
    imageUrl == otherTyped.imageUrl && 
    createdAt == otherTyped.createdAt && 
    creator == otherTyped.creator;
    
  }
  @override
  int get hashCode => Object.hashAll([id.hashCode, name.hashCode, description.hashCode, imageUrl.hashCode, createdAt.hashCode, creator.hashCode]);
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = nativeToJson<String>(id);
    json['name'] = nativeToJson<String>(name);
    json['description'] = nativeToJson<String>(description);
    if (imageUrl != null) {
      json['imageUrl'] = nativeToJson<String?>(imageUrl);
    }
    json['createdAt'] = createdAt.toJson();
    if (creator != null) {
      json['creator'] = creator!.toJson();
    }
    return json;
  }

  ListAvailableGroupsGroups({
    required this.id,
    required this.name,
    required this.description,
    this.imageUrl,
    required this.createdAt,
    this.creator,
  });
}

@immutable
class ListAvailableGroupsGroupsCreator {
  final String id;
  final String displayName;
  final String email;
  ListAvailableGroupsGroupsCreator.fromJson(dynamic json):
  
  id = nativeFromJson<String>(json['id']),
  displayName = nativeFromJson<String>(json['displayName']),
  email = nativeFromJson<String>(json['email']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final ListAvailableGroupsGroupsCreator otherTyped = other as ListAvailableGroupsGroupsCreator;
    return id == otherTyped.id && 
    displayName == otherTyped.displayName && 
    email == otherTyped.email;
    
  }
  @override
  int get hashCode => Object.hashAll([id.hashCode, displayName.hashCode, email.hashCode]);
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = nativeToJson<String>(id);
    json['displayName'] = nativeToJson<String>(displayName);
    json['email'] = nativeToJson<String>(email);
    return json;
  }

  ListAvailableGroupsGroupsCreator({
    required this.id,
    required this.displayName,
    required this.email,
  });
}

@immutable
class ListAvailableGroupsData {
  final List<ListAvailableGroupsGroups> groups;
  ListAvailableGroupsData.fromJson(dynamic json):
  
  groups = (json['groups'] as List<dynamic>)
        .map((e) => ListAvailableGroupsGroups.fromJson(e))
        .toList();
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final ListAvailableGroupsData otherTyped = other as ListAvailableGroupsData;
    return groups == otherTyped.groups;
    
  }
  @override
  int get hashCode => groups.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['groups'] = groups.map((e) => e.toJson()).toList();
    return json;
  }

  ListAvailableGroupsData({
    required this.groups,
  });
}

