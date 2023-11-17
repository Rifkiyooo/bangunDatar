import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungluas(){
    int hitung = sisi*sisi;
    warna.value= Colors.green;
    hasil.value ="Hasil Perhitungan luas $sisi x $sisi =$hitung";
  }
  void hitungKeliling(){
    int hitung = sisi * 4;
    warna.value= Colors.blue;
    hasil.value ="Hasil Perhitungan keliling $sisi x 4 =$hitung";
  }
}