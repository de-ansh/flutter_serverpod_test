import 'package:demopod_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ExampleEndpoint extends Endpoint {
  Future<String> hello(Session session, String name) async {
    return 'Hello $name';
  }

  Future<Article> getArticle(Session session, int id) async {
    return Article(
      title: "Future Of Flutter",
      content: "Flutter is the one of the best cross plotform development tool",
      publishedOn: DateTime.now(),
      isPrime: true,
      authorName: "Ansh",
    );
  }
}
