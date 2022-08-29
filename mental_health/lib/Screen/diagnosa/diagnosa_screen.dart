import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/diagnosa_model.dart';
import '../../viewmodel/diagnosa_viewmodel.dart';
import '../result/result_screen.dart';

class DiagnosaScreen extends StatefulWidget {
  const DiagnosaScreen({Key? key}) : super(key: key);

  @override
  State<DiagnosaScreen> createState() => _DiagnosaScreenState();
}

class _DiagnosaScreenState extends State<DiagnosaScreen> {
  var _controller = PageController();
  int? _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var viewModel = Provider.of<DiagnosaViewModel>(context, listen: false);
      viewModel.deleteDataDiagnosa();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataDiagnosa = Provider.of<DiagnosaViewModel>(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF50C2C9),
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
          Container(
            margin: const EdgeInsets.only(
              top: 5,
              left: 10,
              right: 10,
            ),
            alignment: Alignment.center,
            child: const Text(
              'Silahkan isi gejala di bawah ini dengan jujur ya.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              decoration: const BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: PageView.builder(
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: pertanyaanDiagnosa.length,
                itemBuilder: (context, index) {
                  final dataIndex = pertanyaanDiagnosa[index];
                  return ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 25,
                          right: 25,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 55,
                                  height: 55,
                                  child: CircleAvatar(
                                    backgroundColor: const Color(0xFF50C2C9),
                                    child: Text(
                                      '${index + 1}.',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 45,
                                left: 10,
                                right: 10,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                dataIndex,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.23,
                                bottom: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    height: 50,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xFF50C2C9),
                                        textStyle: const TextStyle(
                                          fontSize: 14,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      onPressed: () {
                                        final diagnosaData = DiagnosaModel(
                                          question: pertanyaanDiagnosa[index],
                                          answer: true,
                                        );
                                        dataDiagnosa
                                            .addDataDiagnosa(diagnosaData);
                                        _controller.nextPage(
                                          duration:
                                              const Duration(milliseconds: 400),
                                          curve: Curves.easeIn,
                                        );

                                        if (index == 23) {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const ResultScreen(),
                                            ),
                                            (Route<dynamic> route) => false,
                                          );
                                        }
                                      },
                                      child: const Text(
                                        'Ya',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    height: 50,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: const Color(0xFF50C2C9),
                                        textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      onPressed: () {
                                        final diagnosaData = DiagnosaModel(
                                          question: pertanyaanDiagnosa[index],
                                          answer: false,
                                        );
                                        dataDiagnosa
                                            .addDataDiagnosa(diagnosaData);
                                        _controller.nextPage(
                                          duration:
                                              const Duration(milliseconds: 400),
                                          curve: Curves.easeIn,
                                        );
                                        if (index == 23) {
                                          Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const ResultScreen(),
                                            ),
                                            (Route<dynamic> route) => false,
                                          );
                                        }
                                      },
                                      child: const Text(
                                        'Tidak',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
