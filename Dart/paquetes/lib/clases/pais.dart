// To parse this JSON data, do
//
//     final reqResPais = reqResPaisFromJson(jsonString);

import 'dart:convert';

import 'package:paquetes/clases/bandera.dart';
import 'package:paquetes/clases/language.dart';
import 'package:paquetes/clases/moneda.dart';
import 'package:paquetes/clases/regionalblog.dart';
import 'package:paquetes/clases/translation.dart';

ReqResPais reqResPaisFromJson(String str) => ReqResPais.fromJson(json.decode(str));

String reqResPaisToJson(ReqResPais data) => json.encode(data.toJson());

class ReqResPais {
    String name;
    List<String> topLevelDomain;
    String alpha2Code;
    String alpha3Code;
    List<String> callingCodes;
    String capital;
    List<String> altSpellings;
    String subregion;
    String region;
    int population;
    List<dynamic> latlng;
    String demonym;
    double area;
    double gini;
    List<String> timezones;
    List<String> borders;
    String nativeName;
    String numericCode;
    Flags flags;
    List<Currency> currencies;
    List<Language> languages;
    Translations translations;
    String flag;
    List<RegionalBloc> regionalBlocs;
    String cioc;
    bool independent;

    ReqResPais({
        required this.name,
        required this.topLevelDomain,
        required this.alpha2Code,
        required this.alpha3Code,
        required this.callingCodes,
        required this.capital,
        required this.altSpellings,
        required this.subregion,
        required this.region,
        required this.population,
        required this.latlng,
        required this.demonym,
        required this.area,
        required this.gini,
        required this.timezones,
        required this.borders,
        required this.nativeName,
        required this.numericCode,
        required this.flags,
        required this.currencies,
        required this.languages,
        required this.translations,
        required this.flag,
        required this.regionalBlocs,
        required this.cioc,
        required this.independent,
    });

    factory ReqResPais.fromJson(Map<String, dynamic> json) => ReqResPais(
        name: json["name"],
        topLevelDomain: List<String>.from(json["topLevelDomain"].map((x) => x)),
        alpha2Code: json["alpha2Code"],
        alpha3Code: json["alpha3Code"],
        callingCodes: List<String>.from(json["callingCodes"].map((x) => x)),
        capital: json["capital"],
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        subregion: json["subregion"],
        region: json["region"],
        population: json["population"],
        latlng: List<dynamic>.from(json["latlng"].map((x) => x)),
        demonym: json["demonym"],
        area: json["area"],
        gini: json["gini"]?.toDouble(),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        borders: List<String>.from(json["borders"].map((x) => x)),
        nativeName: json["nativeName"],
        numericCode: json["numericCode"],
        flags: Flags.fromJson(json["flags"]),
        currencies: List<Currency>.from(json["currencies"].map((x) => Currency.fromJson(x))),
        languages: List<Language>.from(json["languages"].map((x) => Language.fromJson(x))),
        translations: Translations.fromJson(json["translations"]),
        flag: json["flag"],
        regionalBlocs: List<RegionalBloc>.from(json["regionalBlocs"].map((x) => RegionalBloc.fromJson(x))),
        cioc: json["cioc"],
        independent: json["independent"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "topLevelDomain": List<dynamic>.from(topLevelDomain.map((x) => x)),
        "alpha2Code": alpha2Code,
        "alpha3Code": alpha3Code,
        "callingCodes": List<dynamic>.from(callingCodes.map((x) => x)),
        "capital": capital,
        "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
        "subregion": subregion,
        "region": region,
        "population": population,
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "demonym": demonym,
        "area": area,
        "gini": gini,
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "borders": List<dynamic>.from(borders.map((x) => x)),
        "nativeName": nativeName,
        "numericCode": numericCode,
        "flags": flags.toJson(),
        "currencies": List<dynamic>.from(currencies.map((x) => x.toJson())),
        "languages": List<dynamic>.from(languages.map((x) => x.toJson())),
        "translations": translations.toJson(),
        "flag": flag,
        "regionalBlocs": List<dynamic>.from(regionalBlocs.map((x) => x.toJson())),
        "cioc": cioc,
        "independent": independent,
    };
}
