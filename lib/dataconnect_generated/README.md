# dataconnect_generated SDK

## Installation
```sh
flutter pub get firebase_data_connect
flutterfire configure
```
For more information, see [Flutter for Firebase installation documentation](https://firebase.google.com/docs/data-connect/flutter-sdk#use-core).

## Data Connect instance
Each connector creates a static class, with an instance of the `DataConnect` class that can be used to connect to your Data Connect backend and call operations.

### Connecting to the emulator

```dart
String host = 'localhost'; // or your host name
int port = 9399; // or your port number
ExampleConnector.instance.dataConnect.useDataConnectEmulator(host, port);
```

You can also call queries and mutations by using the connector class.
## Queries

### GetPostsByUser
#### Required Arguments
```dart
// No required arguments
ExampleConnector.instance.getPostsByUser().execute();
```



#### Return Type
`execute()` returns a `QueryResult<GetPostsByUserData, void>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

/// Result of a query request. Created to hold extra variables in the future.
class QueryResult<Data, Variables> extends OperationResult<Data, Variables> {
  QueryResult(super.dataConnect, super.data, super.ref);
}

final result = await ExampleConnector.instance.getPostsByUser();
GetPostsByUserData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
final ref = ExampleConnector.instance.getPostsByUser().ref();
ref.execute();

ref.subscribe(...);
```


### ListAvailableGroups
#### Required Arguments
```dart
// No required arguments
ExampleConnector.instance.listAvailableGroups().execute();
```



#### Return Type
`execute()` returns a `QueryResult<ListAvailableGroupsData, void>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

/// Result of a query request. Created to hold extra variables in the future.
class QueryResult<Data, Variables> extends OperationResult<Data, Variables> {
  QueryResult(super.dataConnect, super.data, super.ref);
}

final result = await ExampleConnector.instance.listAvailableGroups();
ListAvailableGroupsData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
final ref = ExampleConnector.instance.listAvailableGroups().ref();
ref.execute();

ref.subscribe(...);
```

## Mutations

### CreateNewPost
#### Required Arguments
```dart
String content = ...;
ExampleConnector.instance.createNewPost(
  content: content,
).execute();
```

#### Optional Arguments
We return a builder for each query. For CreateNewPost, we created `CreateNewPostBuilder`. For queries and mutations with optional parameters, we return a builder class.
The builder pattern allows Data Connect to distinguish between fields that haven't been set and fields that have been set to null. A field can be set by calling its respective setter method like below:
```dart
class CreateNewPostVariablesBuilder {
  ...
   CreateNewPostVariablesBuilder imageUrl(String? t) {
   _imageUrl.value = t;
   return this;
  }
  CreateNewPostVariablesBuilder linkUrl(String? t) {
   _linkUrl.value = t;
   return this;
  }

  ...
}
ExampleConnector.instance.createNewPost(
  content: content,
)
.imageUrl(imageUrl)
.linkUrl(linkUrl)
.execute();
```

#### Return Type
`execute()` returns a `OperationResult<CreateNewPostData, CreateNewPostVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await ExampleConnector.instance.createNewPost(
  content: content,
);
CreateNewPostData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String content = ...;

final ref = ExampleConnector.instance.createNewPost(
  content: content,
).ref();
ref.execute();
```


### JoinGroup
#### Required Arguments
```dart
String groupId = ...;
ExampleConnector.instance.joinGroup(
  groupId: groupId,
).execute();
```



#### Return Type
`execute()` returns a `OperationResult<JoinGroupData, JoinGroupVariables>`
```dart
/// Result of an Operation Request (query/mutation).
class OperationResult<Data, Variables> {
  OperationResult(this.dataConnect, this.data, this.ref);
  Data data;
  OperationRef<Data, Variables> ref;
  FirebaseDataConnect dataConnect;
}

final result = await ExampleConnector.instance.joinGroup(
  groupId: groupId,
);
JoinGroupData data = result.data;
final ref = result.ref;
```

#### Getting the Ref
Each builder returns an `execute` function, which is a helper function that creates a `Ref` object, and executes the underlying operation.
An example of how to use the `Ref` object is shown below:
```dart
String groupId = ...;

final ref = ExampleConnector.instance.joinGroup(
  groupId: groupId,
).ref();
ref.execute();
```

