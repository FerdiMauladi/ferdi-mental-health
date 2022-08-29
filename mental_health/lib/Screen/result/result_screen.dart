import 'package:flutter/material.dart';
import 'package:mental_health/Screen/homepage/homepage_screen.dart';
import 'package:provider/provider.dart';

import '../../viewmodel/diagnosa_viewmodel.dart';
import 'component/bipolar_screen.dart';
import 'component/depresi_screen.dart';
import 'component/emptydiagnosa_screen.dart';
import 'component/paranoid_screen.dart';
import 'component/ptsd_screen.dart';
import 'component/skizofrenia_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataDiagnosa = Provider.of<DiagnosaViewModel>(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFEEEEEE),
      body: Stack(
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
          buildScreen(dataDiagnosa),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
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
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(
                    0xFF50C2C9,
                  ),
                  size: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildScreen(DiagnosaViewModel diagnosaViewModel) {
    if (diagnosaViewModel.dataDiagnosa[0].answer == true &&
        diagnosaViewModel.dataDiagnosa[1].answer == true &&
        diagnosaViewModel.dataDiagnosa[2].answer == true &&
        diagnosaViewModel.dataDiagnosa[3].answer == true &&
        diagnosaViewModel.dataDiagnosa[4].answer == true) {
      return const SkizofreniaScreen();
    }
    if (diagnosaViewModel.dataDiagnosa[0].answer == true &&
        diagnosaViewModel.dataDiagnosa[6].answer == true &&
        diagnosaViewModel.dataDiagnosa[7].answer == true &&
        diagnosaViewModel.dataDiagnosa[8].answer == true &&
        diagnosaViewModel.dataDiagnosa[9].answer == true &&
        diagnosaViewModel.dataDiagnosa[10].answer == true &&
        diagnosaViewModel.dataDiagnosa[11].answer == true) {
      return const PTSDScreen();
    }
    if (diagnosaViewModel.dataDiagnosa[0].answer == true &&
        diagnosaViewModel.dataDiagnosa[6].answer == true &&
        diagnosaViewModel.dataDiagnosa[11].answer == true &&
        diagnosaViewModel.dataDiagnosa[12].answer == true &&
        diagnosaViewModel.dataDiagnosa[13].answer == true &&
        diagnosaViewModel.dataDiagnosa[14].answer == true) {
      return const DepresiScreen();
    }
    if (diagnosaViewModel.dataDiagnosa[12].answer == true &&
        diagnosaViewModel.dataDiagnosa[13].answer == true &&
        diagnosaViewModel.dataDiagnosa[15].answer == true &&
        diagnosaViewModel.dataDiagnosa[16].answer == true &&
        diagnosaViewModel.dataDiagnosa[17].answer == true &&
        diagnosaViewModel.dataDiagnosa[18].answer == true &&
        diagnosaViewModel.dataDiagnosa[19].answer == true) {
      return const BipolarScreen();
    }
    if (diagnosaViewModel.dataDiagnosa[3].answer == true &&
        diagnosaViewModel.dataDiagnosa[8].answer == true &&
        diagnosaViewModel.dataDiagnosa[20].answer == true &&
        diagnosaViewModel.dataDiagnosa[21].answer == true &&
        diagnosaViewModel.dataDiagnosa[22].answer == true &&
        diagnosaViewModel.dataDiagnosa[23].answer == true) {
      return const ParanoidScreen();
    } else {
      return const EmptyDiagnosa();
    }
  }
}
