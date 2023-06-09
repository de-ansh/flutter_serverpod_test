import 'package:artikool_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class ArticleEndpoint extends Endpoint {
  //Fetching from DB
  Future<List<Article>> getArticles(Session session, {String? keyword}) async {
    return await Article.find(
      session,
      where: (t) =>
          keyword != null ? t.title.like('%keyword%') : Constant(true),
    );

    // return 'Hello Article';
  }

  Future<bool> addArticle(Session session, Article article) async {
    await Article.insert(session, article);
    return true;
  }

  Future<bool> updateArticle(Session session, Article article) async {
    var result = await Article.update(session, article);
    return result;
  }

  Future<bool> deleteArticle(Session session, int id) async {
    var result = await Article.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }
}
