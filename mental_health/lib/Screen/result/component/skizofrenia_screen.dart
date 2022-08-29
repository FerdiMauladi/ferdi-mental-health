import 'package:flutter/material.dart';

class SkizofreniaScreen extends StatelessWidget {
  const SkizofreniaScreen({
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
                    'Kamu di diagnosa mengalami gangguan kesehatan Skizofrenia.',
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
                    'Skizofrenia adalah gangguan mental yang dapat memengaruhi tingkah laku, emosi, dan komunikasi. Penderita skizofrenia dapat mengalami halusinasi, delusi, kekacauan berpikir, dan perubahan perilaku.',
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
                          'Sampai saat ini, belum ada obat yang dapat menyembuhkan skizofrenia. Namun, ada pengobatan yang dapat mengendalikan dan mengurangi gejala. Penanganan tersebut dapat berupa:',
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
                          '1. Pemberian obat-obatan antipsikotik',
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
                          '2. Psikoterapi',
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
                          '3. Terapi elektrokonvulsif',
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
                          '4. Pencegahan skizofrenia adalah dengan mendeteksi dan mengobatinya sejak dini sehingga perburukan dan kekambuhan penyakit ini dapat dicegah. Dengan begitu, kualitas hidup penderita pun akan membaik.',
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
