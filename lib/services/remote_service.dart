import 'package:api_demo/models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<DataModel>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('https://script.googleusercontent.com/macros/echo?user_content_key=X1gB55QhVBf69X5h8vDoCNsOvmcDNfXvjUuf7DxJLx750Ohg55vv3P_7Nr6H_Oe43Y9V_VJ88n_1GU_0SSt1CeQEUEM0BaRKm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnA2YXalDHngCMjXcD8MJyiF-0yddz20bfNFX0nFZJABuJvXBzG6b2lRGYuJ8CID13gh9EncPhVaLtZ_6fhgZP3gjyBMlQuRvtw&lib=MZPPIkz2YMIf_hVGIwK3zU2DG-_8PLBwE#');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return dataModelFromJson(json);
    }
    return null;
  }
}
