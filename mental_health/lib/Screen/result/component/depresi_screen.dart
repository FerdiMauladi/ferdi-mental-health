import 'package:flutter/material.dart';

class DepresiScreen extends StatelessWidget {
  const DepresiScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.15,
      bottom: 0,
      left: 0,
      right: 0,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 25,
              right: 25,
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 10),
                  child: const Text(
                    'Kamu di diagnosa mengalami gangguan kesehatan Depresi.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25, bottom: 20),
                  child: const Text(
                    'Depresi adalah gangguan mood, kondisi emosional berkepanjangan yang mewarnai proses berpikir, berperasaan dan berperilaku seseorang. Seseorang yang depresi memperlihatkan perasaan tidak berdaya dan kehilangan harapan, disertai perasaan sedih, kehilangan minat dan kegembiraan.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        child: const Text(
                          'Berikut ini sejumlah faktor yang memicu munculnya depresi: ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          '1. Riwayat keluarga.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          '2. Masalah kesehatan fisik.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          '3. Pengalaman dan trauma masa kecil.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          '4. Peristiwa kehidupan yang penuh tekanan.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          '5. Berakhirnya hubungan, ditinggal oleh orang dicintai, masalah keuangan, dan sebagainya.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          '6. Menderita penyakit kronis atau serius.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          '7. Ketergantungan jenis obat tertentu.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          '8. Diintimidasi, bullying atau diserang.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25, bottom: 20),
                  child: const Text(
                    'Silahkan temui psikolog terdekat untuk mendapatkan penanganan medis.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
