import 'package:flutter/material.dart';

class ListAktifKantongSlider extends StatelessWidget {
  const ListAktifKantongSlider(
      {super.key,
      required this.namaKantong,
      required this.saldoKantong,
      required this.nomorRekening});

  final String namaKantong;
  final BigInt saldoKantong;
  final String nomorRekening;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth,
        height: constraints.maxHeight > 110 ? 110 : constraints.maxHeight,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(5, 10)),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.wallet_rounded,
                    size: 30,
                    color: Colors.grey[700],
                  ),
                  const SizedBox(width: 10),
                  Container(
                    constraints: BoxConstraints(maxWidth: 130),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          namaKantong,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              nomorRekening,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.5,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.file_copy_rounded,
                              size: 16,
                              color: Colors.grey[700],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              constraints: BoxConstraints(maxWidth: 100),
                              child: Text(
                                'Rp${saldoKantong.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Icon(
                              Icons.remove_red_eye,
                              size: 24,
                              color: Colors.grey[700],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 40,
                width: constraints.maxWidth,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey[400]!,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Aktivitas Terakhir',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      size: 24,
                      color: Colors.grey[700],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
