class RegionalBloc {
    String acronym;
    String name;
    List<String> otherNames;
    List<String>? otherAcronyms;

    RegionalBloc({
        required this.acronym,
        required this.name,
        required this.otherNames,
        this.otherAcronyms,
    });

    factory RegionalBloc.fromJson(Map<String, dynamic> json) => RegionalBloc(
        acronym: json["acronym"],
        name: json["name"],
        otherNames: List<String>.from(json["otherNames"].map((x) => x)),
        otherAcronyms: json["otherAcronyms"] == null ? [] : List<String>.from(json["otherAcronyms"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "acronym": acronym,
        "name": name,
        "otherNames": List<dynamic>.from(otherNames.map((x) => x)),
        "otherAcronyms": otherAcronyms == null ? [] : List<dynamic>.from(otherAcronyms!.map((x) => x)),
    };
}
