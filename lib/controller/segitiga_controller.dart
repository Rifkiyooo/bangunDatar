import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas = 0;
  final warna = Rx<Color>(Colors.black);
  final hasil = "".obs;
  int tinggi = 0;

  void hitungluas() {
    int hitung = alas * tinggi;
    warna.value = Colors.green;
    hasil.value = "Hasil Perhitungan luas $alas x $tinggi =$hitung";
  }
  void hitungKeliling() {
    int hitung = alas + tinggi + tinggi;
    warna.value = Colors.blue;
    hasil.value = "Hasil Perhitungan luas 2x $alas x $tinggi =$hitung";
  }
}