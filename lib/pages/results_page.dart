import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../consts/colors.dart';
import '../providers/data_provider.dart';
import '../widgets/back_button.dart';
import '../widgets/description_widget.dart';
import '../widgets/results_widget.dart';
import 'data_widget.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  late DataProvider dataProvider;
  double titleTextSize = 28.0;
  double smallTextSize = 18.0;
  double bmi = 0;

  @override
  void initState() {
    dataProvider = Provider.of<DataProvider>(context, listen: false);
    int weight = dataProvider.weight;
    int height = dataProvider.height;
    bmi = weight / (height * height);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.backgroundColor,
        elevation: 0,
        titleSpacing: 20,
        toolbarHeight: 60,
        title: Text(
          'Back',
          style: GoogleFonts.inter(
              color: CustomColors.fontColor,
              fontWeight: FontWeight.bold,
              fontSize: titleTextSize),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: CustomColors.fontColor,
            size: 30,
          ),
        ),
      ),
      backgroundColor: CustomColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Results',
                  style: GoogleFonts.inter(
                    fontSize: titleTextSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const ResultsWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const DataWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            const DesctriptionWidget(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            const AgainButton(),
          ],
        ),
      ),
    );
  }
}
