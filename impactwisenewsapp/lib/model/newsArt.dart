class NewsArt{
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

NewsArt({
   required this.imgUrl,
  required this.newsHead,
  required this.newsDes,
  required this.newsCnt,
  required this.newsUrl,
});

 static NewsArt fromAPItoApp(Map<String, dynamic> article){
   return NewsArt(
       imgUrl: article["urlToImage"] ?? "https://img.freepik.com/free-vector/live-breaking-news-template-style_23-2148509656.jpg?w=740&t=st=1714335242~exp=1714335842~hmac=88833a7644b1e47fd7ee7034d4256ce7c991c81a832cb6e51638e9a6f750b1ae",
       newsHead: article["title"] ?? "--",
       newsDes: article["description"] ?? "--",
       newsCnt: article["content"] ?? "--",
       newsUrl: article["url"] ?? "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en");
 }
}