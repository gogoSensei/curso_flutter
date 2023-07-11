import 'package:http/http.dart' as http;

import 'package:paquetes/clases/reqres_respuesta.dart';
import 'clases/pais.dart' as pais;

Future<void> getReqRespServicio () async {
  final url =  Uri.https('reqres.in', '/api/users', {'page' : '2'});
  final res = await http.get(url);
  final reqResRes = reqResRespuestaFromJson(res.body);

  // final body = jsonDecode(res.body);
  // print(body);
  // print('PAGE: ${body['page'] }');
  // print('PER-PAGE: ${body['per_page'] }');
  // print('ID-ELEMENTO 3: ${body['data'][2]['id'] }');

  print('PAGE: ${reqResRes.page }');
  print('PER-PAGE: ${reqResRes.perPage }');
  print('ID-ELEMENTO 3: ${reqResRes.data[3].id }');
}

void getInfoPais () async {
  final url = Uri.https('restcountries.com', '/v2/alpha/col');
  final res = await http.get(url);
  final reqResPais = pais.reqResPaisFromJson(res.body);
  final fronteras = reqResPais.borders.join('\n');
  print('''
Pais: ${reqResPais.name}
Población: ${reqResPais.population}
Fronteras:
$fronteras
languages: ${reqResPais.languages[0].nativeName}
Latitud : ${reqResPais.latlng[0]}
Longitud: ${reqResPais.latlng[1]}
Moneda: ${reqResPais.currencies[0].name}
Bandera: ${reqResPais.flag}
''');
}
