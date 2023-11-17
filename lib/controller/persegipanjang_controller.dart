import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  RxBool isHitungLuas = true.obs;
  int panjang = 0;
  int lebar = 0;
  final warna = Rx<Color>(Colors.black);
  final hasil = "".obs;


  void hitungpanjang(){
     int hitung = panjang * lebar;
     warna.value= Colors.green;
     hasil.value ="Hasil Perhitungan panjang $panjang x $lebar =$hitung";
     isHitungLuas.value = true;
  }

  void hitungKeliling(){
     int hitung = 2 * (panjang + lebar);
     warna.value= Colors.blue;
     hasil.value ="Hasil Perhitungan keliling dari 2 x ($panjang + $lebar)";
     isHitungLuas.value = false;
  }
}