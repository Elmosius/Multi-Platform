import 'bangun_datar.dart';

class SegiEmpat extends BangunDatar {
  final double panjang;
  final double lebar;

  SegiEmpat({required this.panjang, required this.lebar});

  @override
  double keliling() {
    return 2 * (panjang + lebar);
  }

  @override
  double luas() {
    return panjang * lebar;
  }
}
