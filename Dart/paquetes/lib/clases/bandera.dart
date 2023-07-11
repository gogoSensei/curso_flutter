class Flags {
    String svg;
    String png;

    Flags({
        required this.svg,
        required this.png,
    });

    factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        svg: json["svg"],
        png: json["png"],
    );

    Map<String, dynamic> toJson() => {
        "svg": svg,
        "png": png,
    };
}
