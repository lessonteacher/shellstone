import '../lib/shellstone.dart';

// Annotate this class as being a Model class with identity user
@Model(identity: 'user')
class User {

  // Create the attributes. They usethe @Attr annotation
  @Attr(type: 'integer', primaryKey: true) int id;
  @Attr(type: 'string') String username;
}
