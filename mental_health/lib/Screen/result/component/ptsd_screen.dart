import 'package:flutter/material.dart';

class PTSDScreen extends StatelessWidget {
  const PTSDScreen({
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
                    'Kamu di diagnosa mengalami gangguan kesehatan PTSD.',
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
                    'PTSD (post-traumatic stress disorder) atau gangguan stres pascatrauma adalah gangguan mental yang muncul setelah seseorang mengalami atau menyaksikan peristiwa yang bersifat traumatis atau sangat tidak menyenangkan.',
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
                          'Ada dugaan bahwa penyebabnya adalah kombinasi dari sejumlah kondisi berikut:',
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
                          '1. Pengalaman yang tidak menyenangkan',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          '2. Riwayat gangguan mental pada keluarga',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          '3. Kepribadian bawaan yang temperamen.',
                          textAlign: TextAlign.start,
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
