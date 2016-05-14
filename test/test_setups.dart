import 'package:shellstone/shellstone.dart';

// Used to contain any setup specific files, for example Model definitions
@Model(name: 'user')
class User {
  @Attr(type: 'integer', primaryKey: true) int id;
  @Attr(type: 'string') String username;
  @Attr(type: 'string') String password;
  @Attr(type: 'string') String firstName;
  @Attr(type: 'string') String lastName;
}

@Model(name: 'user', migration: 'drop')
class MysqlUser {
  @Attr(type: 'integer', primaryKey: true) int id;
  @Attr(type: 'string') String username;
  @Attr(type: 'string') String password;
  @Attr(type: 'string') String firstName;
  @Attr(type: 'string') String lastName;
}

@Model(name: 'useracc', source: 'postgres', migration: 'drop')
class PostgresUser {
  @Attr(type: 'integer', primaryKey: true) int id;
  @Attr(type: 'string') String username;
  @Attr(type: 'string') String password;
  @Attr(type: 'string') String firstName;
  @Attr(type: 'string') String lastName;
}

@Model(name: 'person', source: 'mongo')
class Person {
  @Attr(type: 'integer', primaryKey: true) int id;
  @Attr(type: 'string', column: 'FirstName') String firstName;
  @Attr(type: 'string', column: 'LastName') String lastName;
  @Attr(type: 'integer', column: 'Age') String age;
}

@Adapter('mongo')
class CustomMongoAdapter extends DatabaseAdapter {

  get name => 'mongo';
  get driver { }

  configure() {}
  connect() {}
  build() {}
  disconnect() {}
  execute(chain) {}
}
