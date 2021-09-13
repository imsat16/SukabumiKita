// class Hotel {
//   final int id_hotel;
//   final String foto;
//   final String nama;
//   final String deskripsi;
//   final String alamat;
//   final String rating;

//   Hotel(
//       {required this.id_hotel,
//       required this.foto,
//       required this.nama,
//       required this.deskripsi,
//       required this.alamat,
//       required this.rating});

//   factory Hotel.fromJson(Map<String, dynamic> json) {
//     return Hotel(
//       id_hotel: json['id_hotel'],
//       foto: json['foto'],
//       nama: json['nama'],
//       deskripsi: json['deskripsi'],
//       alamat: json['alamat'],
//       rating: json['rating'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         'foto': foto,
//         'nama': nama,
//         'deskripsi': deskripsi,
//         'alamat': alamat,
//         'rating': rating
//       };
// }
