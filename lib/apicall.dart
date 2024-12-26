import "dart:convert";

import "package:http/http.dart" as http;
class API{
  fetchdata()async{
    final headers = {
      "accept":"application/json",
    "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3MjQ0YTZhZTIyMWEwOTVhZWQ5NmRkNDBlYTc1NzkwOCIsIm5iZiI6MTczNTE0MTQ3OS4xMjYwMDAyLCJzdWIiOiI2NzZjMjg2NzQ1Y2M1NWZmYjc2NGVkMjMiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.IF81aQvH9iyt0pyA3ajxoeduW7q6zsI64jqIY8Wmi5o"
    };
    final url = Uri.parse('https://api.themoviedb.org/3/movie/popular');
    final response = await http.get(url,headers: headers);
    if(response.statusCode==200) {
      final jsondata = jsonDecode(response.body);
      return jsondata['results'];
    }else{
      throw Exception('Bad Request');
    }

  }
}