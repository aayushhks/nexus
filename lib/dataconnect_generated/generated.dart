library dataconnect_generated;
import 'package:firebase_data_connect/firebase_data_connect.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';

part 'create_new_post.dart';

part 'get_posts_by_user.dart';

part 'join_group.dart';

part 'list_available_groups.dart';







class ExampleConnector {
  
  
  CreateNewPostVariablesBuilder createNewPost ({required String content, }) {
    return CreateNewPostVariablesBuilder(dataConnect, content: content,);
  }
  
  
  GetPostsByUserVariablesBuilder getPostsByUser () {
    return GetPostsByUserVariablesBuilder(dataConnect, );
  }
  
  
  JoinGroupVariablesBuilder joinGroup ({required String groupId, }) {
    return JoinGroupVariablesBuilder(dataConnect, groupId: groupId,);
  }
  
  
  ListAvailableGroupsVariablesBuilder listAvailableGroups () {
    return ListAvailableGroupsVariablesBuilder(dataConnect, );
  }
  

  static ConnectorConfig connectorConfig = ConnectorConfig(
    'us-east4',
    'example',
    'nexus',
  );

  ExampleConnector({required this.dataConnect});
  static ExampleConnector get instance {
    return ExampleConnector(
        dataConnect: FirebaseDataConnect.instanceFor(
            connectorConfig: connectorConfig,
            sdkType: CallerSDKType.generated));
  }

  FirebaseDataConnect dataConnect;
}
