import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jagoclone/widgets/list_aktif_kantong_slider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Positioned(
            top: -200,
            right: 0,
            child: Container(
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.yellow[800],
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellow.shade800,
                    blurRadius: 100,
                    spreadRadius: 120,
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Selamat sore, ${name.toUpperCase()} !',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/jago_logo.svg',
                        width: 100,
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/profile.png',
                        width: 30,
                      ),
                      const SizedBox(width: 20),
                        Stack(
                        children: [
                          Icon(
                          Icons.notifications_none_rounded,
                          size: 35,
                          ),
                          Positioned(
                            right: 0,
                          child: Container(
                            padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                            color: Colors.red[800],
                            borderRadius: BorderRadius.circular(10),
                            ),
                            constraints: BoxConstraints(
                            minWidth: 20,
                            minHeight: 20,
                            ),
                            child: Text(
                            '3', // Replace with your notification count
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            ),
                          ),
                          )
                        ],
                        )
                    ],
                  ),
                  const SizedBox(height: 20),
                  ListAktifKantongSlider(namaKantong: "Tabungan Masa Depan", saldoKantong: BigInt.from(1_000_000_000), nomorRekening: "1066 3375 5433"),
                  const SizedBox(height: 20),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Expanded(
                      child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 8, // Add shadow
                      shadowColor: Colors.grey[200], // Shadow color
                      ),
                      icon: Icon(Icons.money, size: 24, color: Colors.grey[900]),
                      label: Text('Transfer & Bayar', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey[900])),
                      ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                      child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 8, // Add shadow
                      shadowColor: Colors.grey[200], // Shadow color
                      ),
                      icon: Icon(Icons.qr_code_scanner_outlined, size: 24, color: Colors.grey[900]),
                      label: Text('Scan QRIS', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900, color: Colors.grey[900])),
                      ),
                      ),
                      ],
                      );
                    }
                    ),
                  const SizedBox(height: 20),
                    Row(
                    children: [
                      Text(
                      'Rencanakan',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w900),
                      ),
                      const Spacer(),
                      Text(
                      'Lihat',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.underline,
                        decorationThickness: 3.0,
                        decorationColor: Colors.yellow[900]),
                      ),
                    ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
