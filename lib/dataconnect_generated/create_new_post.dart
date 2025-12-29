part of 'generated.dart';

class CreateNewPostVariablesBuilder {
  String content;
  Optional<String> _imageUrl = Optional.optional(nativeFromJson, nativeToJson);
  Optional<String> _linkUrl = Optional.optional(nativeFromJson, nativeToJson);

  final FirebaseDataConnect _dataConnect;  CreateNewPostVariablesBuilder imageUrl(String? t) {
   _imageUrl.value = t;
   return this;
  }
  CreateNewPostVariablesBuilder linkUrl(String? t) {
   _linkUrl.value = t;
   return this;
  }

  CreateNewPostVariablesBuilder(this._dataConnect, {required  this.content,});
  Deserializer<CreateNewPostData> dataDeserializer = (dynamic json)  => CreateNewPostData.fromJson(jsonDecode(json));
  Serializer<CreateNewPostVariables> varsSerializer = (CreateNewPostVariables vars) => jsonEncode(vars.toJson());
  Future<OperationResult<CreateNewPostData, CreateNewPostVariables>> execute() {
    return ref().execute();
  }

  MutationRef<CreateNewPostData, CreateNewPostVariables> ref() {
    CreateNewPostVariables vars= CreateNewPostVariables(content: content,imageUrl: _imageUrl,linkUrl: _linkUrl,);
    return _dataConnect.mutation("CreateNewPost", dataDeserializer, varsSerializer, vars);
  }
}

@immutable
class CreateNewPostPostInsert {
  final String id;
  CreateNewPostPostInsert.fromJson(dynamic json):
  
  id = nativeFromJson<String>(json['id']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final CreateNewPostPostInsert otherTyped = other as CreateNewPostPostInsert;
    return id == otherTyped.id;
    
  }
  @override
  int get hashCode => id.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = nativeToJson<String>(id);
    return json;
  }

  CreateNewPostPostInsert({
    required this.id,
  });
}

@immutable
class CreateNewPostData {
  final CreateNewPostPostInsert post_insert;
  CreateNewPostData.fromJson(dynamic json):
  
  post_insert = CreateNewPostPostInsert.fromJson(json['post_insert']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final CreateNewPostData otherTyped = other as CreateNewPostData;
    return post_insert == otherTyped.post_insert;
    
  }
  @override
  int get hashCode => post_insert.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['post_insert'] = post_insert.toJson();
    return json;
  }

  CreateNewPostData({
    required this.post_insert,
  });
}

@immutable
class CreateNewPostVariables {
  final String content;
  late final Optional<String>imageUrl;
  late final Optional<String>linkUrl;
  @Deprecated('fromJson is deprecated for Variable classes as they are no longer required for deserialization.')
  CreateNewPostVariables.fromJson(Map<String, dynamic> json):
  
  content = nativeFromJson<String>(json['content']) {
  
  
  
    imageUrl = Optional.optional(nativeFromJson, nativeToJson);
    imageUrl.value = json['imageUrl'] == null ? null : nativeFromJson<String>(json['imageUrl']);
  
  
    linkUrl = Optional.optional(nativeFromJson, nativeToJson);
    linkUrl.value = json['linkUrl'] == null ? null : nativeFromJson<String>(json['linkUrl']);
  
  }
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final CreateNewPostVariables otherTyped = other as CreateNewPostVariables;
    return content == otherTyped.content && 
    imageUrl == otherTyped.imageUrl && 
    linkUrl == otherTyped.linkUrl;
    
  }
  @override
  int get hashCode => Object.hashAll([content.hashCode, imageUrl.hashCode, linkUrl.hashCode]);
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['content'] = nativeToJson<String>(content);
    if(imageUrl.state == OptionalState.set) {
      json['imageUrl'] = imageUrl.toJson();
    }
    if(linkUrl.state == OptionalState.set) {
      json['linkUrl'] = linkUrl.toJson();
    }
    return json;
  }

  CreateNewPostVariables({
    required this.content,
    required this.imageUrl,
    required this.linkUrl,
  });
}

