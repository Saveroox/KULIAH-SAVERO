//pada program ini saya memakai library bernama dart:io karena program ini membutuhkan input dari keyboard (stdin) dan meng-outputkan ke terminal (stdout)
import 'dart:io';

void main(){
  String? namaKaryawan;
  int? jamKerja;
  double? upahPerJam;

  String? inputStatusKaryawan;
  bool? status;

  double gajiBersih;
  double gajiKotor;


  stdout.write("Masukkan Nama : ");
  namaKaryawan = stdin.readLineSync();

  stdout.write("Masukkan jumlah jam kerja per minggu : ");
  jamKerja = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Upah per Jam : ");
  upahPerJam = double.parse(stdin.readLineSync()!);

  stdout.write("Apakah Status Karyawan (Tetap/Kontrak) : ");
  inputStatusKaryawan = stdin.readLineSync();

  if(inputStatusKaryawan != null && inputStatusKaryawan.toLowerCase() == "tetap"){
    status = true;
  } else {
    status = false;
  }

  gajiKotor = jamKerja * upahPerJam;
  if (status == true){
    print("");
    print("Anda Dikenakan pajak 10%!");
    gajiBersih = gajiKotor * 0.90;
  } else {
    print("");
    print("Anda Dikenakan pajak 5%!");
    gajiBersih = gajiKotor * 0.95;
  }

  //Pada bgian ini sya menambahkan method bawaan dart yaitu padRight() supaya teks punya panjang yang sama
  print("===== Slip Gaji Karyawan ======");
  print("Nama Karywan".padRight(15) + ": $namaKaryawan");
  print("Jam kerja per minggu".padRight(10) + ": $jamKerja");
  print("Upah per jam".padRight(15) + ": Rp$upahPerJam");
  print("Status karyawan".padRight(15) + ": ${status ? "Tetap" : "Kontrak"} ");
  print("Gaji Kotor".padRight(15) + ": Rp$gajiKotor");
  print("Gaji Bersih (setelah pajak)".padRight(15) + ": Rp$gajiBersih");
  print("===============================");


  
}