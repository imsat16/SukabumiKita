// class Vaca {
//   final String id;
//   final String foto;
//   final String nama;
//   final String deskripsi;
//   final int alamat;
//   final String rating;
//   final String posisi;

//   Vaca({ required this.id, required this.foto, required this.nama, required this.deskripsi, required this.alamat, required this.rating, required this.posisi});

//   factory Vaca.fromJson(Map<String, dynamic> json) {
//     return Vaca(
//       id: json['id_vaca'] as String,
//       foto: json['foto'] as String,
//       nama: json['nama'] as String,
//       deskripsi: json['deskripsi'] as String,
//       alamat: json['alamat'] as int,
//       rating: json['rating'] as String,
//       posisi: json['posisi'] as String,
//     );
//   }

//   @override
//   String toString() {
//     return 'Vaca{id: $id, name: $nama, age: $deskripsi}';
//   }
// }