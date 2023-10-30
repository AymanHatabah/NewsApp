import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:news/models/NewsResponses.dart';
import 'package:news/models/SourcesResponse.dart';
import 'package:news/shared/constant.dart';

class ApiManger {
 static Future<SourcesResponse>getSource(String catId) async {
    Uri url =  Uri.https(Base_Url, "/v2/top-headlines/sources",
        {"apiKey": "37e4881267014385b8fe52db4e796dbe","category":catId});
  Response response= await http.get(url);
  var jsonData=jsonDecode(response.body);
  SourcesResponse data=SourcesResponse.fromJson(jsonData);
  return data;
  }
  static Future<NewsResponses> getNewsData(String sourcesId)async{
Uri url=Uri.https(Base_Url,"v2/everything",{
 "apiKey":Api_Key,
 "sources":sourcesId,
});
  http.Response response=await http.get(url);
var jsonData=jsonDecode(response.body);
NewsResponses  newsResponse=NewsResponses.fromJson(jsonData);
return newsResponse;
  }
}
