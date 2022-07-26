import 'package:flutter/material.dart';
import 'package:mental_health/Screen/homepage/homepage_screen.dart';
import 'package:provider/provider.dart';

import '../../viewmodel/diagnosa_viewmodel.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataDiagnosa = Provider.of<DiagnosaViewModel>(context);
    print(dataDiagnosa.dataDiagnosa.length);
    for (var i = 0; i < dataDiagnosa.dataDiagnosa.length; i++) {
      print(dataDiagnosa.dataDiagnosa[i].question);
      print(dataDiagnosa.dataDiagnosa[i].answer);
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFEEEEEE),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 140,
            alignment: Alignment.topLeft,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  'assets/images/bubble1.png',
                ),
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: Column(
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Maaf diagnosamu belum di temukan',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 406,
                          height: 306,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                'assets/images/empty-konsultasi.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 20),
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          alignment: Alignment.center,
                          child: const Text(
                            'Segera hubungi psikolog terdekat untuk konsultasi',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomepageScreen(),
                ),
                (Route<dynamic> route) => false,
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 15,
                bottom: 40,
                right: 25,
              ),
              alignment: Alignment.centerRight,
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Color(
                  0xFF50C2C9,
                ),
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
