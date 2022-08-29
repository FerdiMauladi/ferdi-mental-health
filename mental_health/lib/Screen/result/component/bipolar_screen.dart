import 'package:flutter/material.dart';

class BipolarScreen extends StatelessWidget {
  const BipolarScreen({
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
                    'Kamu di diagnosa mengalami gangguan kesehatan Bipolar.',
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
                    'Gangguan bipolar adalah gangguan mental yang ditandai dengan perubahan yang drastis pada suasana hati. Penderita gangguan ini bisa merasa sangat bahagia kemudian berubah menjadi sangat sedih.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
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
