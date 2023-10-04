import 'dart:io';

class Kalkulator {
  double angka1;
  double angka2;
  int operasi;

  Kalkulator(this.angka1, this.angka2, this.operasi);

  void hitung() {
    print('Hasil:');
    switch (operasi) {
      case 1:
        print('$angka1 + $angka2 = ${angka1 + angka2}');
        break;
      case 2:
        print('$angka1 - $angka2 = ${angka1 - angka2}');
        break;
      case 3:
        print('$angka1 * $angka2 = ${angka1 * angka2}');
        break;
      case 4:
        if (angka2 == 0) {
          print('Tidak dapat melakukan pembagian dengan nol.');
        } else {
          print('$angka1 / $angka2 = ${angka1 / angka2}');
        }
        break;
      default:
        print('Operasi yang dipilih tidak valid.');
        break;
    }
  }
}

void main() {
  String ulang = 'ya';
  while (ulang.toLowerCase() == 'ya') {
    try {
      print('==================================================');
      print('Selamat Datang Di Kalkulator Ubaidillah-Calculator');
      print('==================================================');
      stdout.write('Masukkan Angka Pertama: ');
      double angka1 = double.parse(stdin.readLineSync()!);
      print('==================================================');
      stdout.write('Masukkan Angka Kedua: ');
      double angka2 = double.parse(stdin.readLineSync()!);
      print('==================================================');
      print('Operasi Aritmatika yang Tersedia:');
      print('1. Penambahan');
      print('2. Pengurangan');
      print('3. Perkalian');
      print('4. Pembagian');
      print('==================================================');
      stdout.write('Pilih operasi (1/2/3/4): ');
      int operasi = int.parse(stdin.readLineSync()!);

      var kalkulasi = Kalkulator(angka1, angka2, operasi);
      kalkulasi.hitung();
      stdout.write('Apakah Anda ingin melakukan perhitungan lainnya? (ya/tidak): ');
      ulang = stdin.readLineSync()!;
    } on FormatException {
      print('Peringatan! Anda memasukkan format yang tidak valid atau huruf.');
    }
  }
  print('Terima kasih telah menggunakan Kalkulator Sederhana.');
}
