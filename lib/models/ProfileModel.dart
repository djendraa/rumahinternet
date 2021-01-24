import 'dart:convert';

List<Profile> profileFromMap(String str) => List<Profile>.from(json.decode(str).map((x) => Profile.fromMap(x)));

String profileToMap(List<Profile> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Profile {
    Profile({
        this.idProfile,
        this.nama,
        this.nohp,
        this.alamat,
    });

    final String idProfile;
    final String nama;
    final String nohp;
    final String alamat;

    Profile copyWith({
        String idProfile,
        String nama,
        String nohp,
        String alamat,
    }) => 
        Profile(
            idProfile: idProfile ?? this.idProfile,
            nama: nama ?? this.nama,
            nohp: nohp ?? this.nohp,
            alamat: alamat ?? this.alamat,
        );

    factory Profile.fromMap(Map<String, dynamic> json) => Profile(
        idProfile: json["id_profile"],
        nama: json["nama"],
        nohp: json["nohp"],
        alamat: json["alamat"],
    );

    Map<String, dynamic> toMap() => {
        "id_profile": idProfile,
        "nama": nama,
        "nohp": nohp,
        "alamat": alamat,
    };
}
