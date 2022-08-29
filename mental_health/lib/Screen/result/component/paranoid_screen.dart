import 'package:flutter/material.dart';

class ParanoidScreen extends StatelessWidget {
  const ParanoidScreen({
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
                    'Kamu di diagnosa mengalami gangguan kesehatan Paranoid.',
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
                    'Paranoid adalah masalah psikologis yang ditandai dengan munculnya rasa curiga dan takut berlebihan. Orang yang paranoid cenderung sulit atau bahkan tidak bisa memercayai orang lain dan memiliki pola pikir yang berbeda dari kebanyakan orang.',
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
                          'Ada beberapa faktor yang diketahui dapat membuat seseorang lebih berisiko untuk menjadi paranoid, yaitu:',
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
                          '1. Trauma psikologis, misalnya menjadi korban pelecehan seksual atau kekerasan fisik',
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
                          '2. Gangguan mental tertentu, misalnya gangguan kecemasan, depresi, dan skizofrenia stres berat atau tekanan batin',
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
                          '3. Gangguan pada otak, misalnya karena demensia, penyakit Huntington, stroke, dan penyakit Parkinson',
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
                          '4. Insomnia berat',
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
                          '5. Konsumsi minuman beralkohol atau penggunaan narkoba dalam jangka panjang.',
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
