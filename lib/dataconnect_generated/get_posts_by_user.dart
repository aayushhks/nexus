part of 'generated.dart';

class GetPostsByUserVariablesBuilder {
  
  final FirebaseDataConnect _dataConnect;
  GetPostsByUserVariablesBuilder(this._dataConnect, );
  Deserializer<GetPostsByUserData> dataDeserializer = (dynamic json)  => GetPostsByUserData.fromJson(jsonDecode(json));
  
  Future<QueryResult<GetPostsByUserData, void>> execute() {
    return ref().execute();
  }

  QueryRef<GetPostsByUserData, void> ref() {
    
    return _dataConnect.query("GetPostsByUser", dataDeserializer, emptySerializer, null);
  }
}

@immutable
class GetPostsByUserPosts {
  final String id;
  final String content;
  final String? imageUrl;
  final String? linkUrl;
  final Timestamp createdAt;
  GetPostsByUserPosts.fromJson(dynamic json):
  
  id = nativeFromJson<String>(json['id']),
  content = nativeFromJson<String>(json['content']),
  imageUrl = json['imageUrl'] == null ? null : nativeFromJson<String>(json['imageUrl']),
  linkUrl = json['linkUrl'] == null ? null : nativeFromJson<String>(json['linkUrl']),
  createdAt = Timestamp.fromJson(json['createdAt']);
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final GetPostsByUserPosts otherTyped = other as GetPostsByUserPosts;
    return id == otherTyped.id && 
    content == otherTyped.content && 
    imageUrl == otherTyped.imageUrl && 
    linkUrl == otherTyped.linkUrl && 
    createdAt == otherTyped.createdAt;
    
  }
  @override
  int get hashCode => Object.hashAll([id.hashCode, content.hashCode, imageUrl.hashCode, linkUrl.hashCode, createdAt.hashCode]);
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = nativeToJson<String>(id);
    json['content'] = nativeToJson<String>(content);
    if (imageUrl != null) {
      json['imageUrl'] = nativeToJson<String?>(imageUrl);
    }
    if (linkUrl != null) {
      json['linkUrl'] = nativeToJson<String?>(linkUrl);
    }
    json['createdAt'] = createdAt.toJson();
    return json;
  }

  GetPostsByUserPosts({
    required this.id,
    required this.content,
    this.imageUrl,
    this.linkUrl,
    required this.createdAt,
  });
}

@immutable
class GetPostsByUserData {
  final List<GetPostsByUserPosts> posts;
  GetPostsByUserData.fromJson(dynamic json):
  
  posts = (json['posts'] as List<dynamic>)
        .map((e) => GetPostsByUserPosts.fromJson(e))
        .toList();
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) {
      return true;
    }
    if(other.runtimeType != runtimeType) {
      return false;
    }

    final GetPostsByUserData otherTyped = other as GetPostsByUserData;
    return posts == otherTyped.posts;
    
  }
  @override
  int get hashCode => posts.hashCode;
  

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['posts'] = posts.map((e) => e.toJson()).toList();
    return json;
  }

  GetPostsByUserData({
    required this.posts,
  });
}

