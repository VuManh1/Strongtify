import 'package:flutter/material.dart';
import 'package:strongtify_mobile_app/ui/widgets/appbar_account.dart';
import 'package:strongtify_mobile_app/utils/constants/color_constants.dart';

class RankScreen extends StatefulWidget {
  const RankScreen({super.key});

  @override
  State<RankScreen> createState() => _RankScreenState();
}

class _RankScreenState extends State<RankScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bảng xếp hạng',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: ColorConstants.background,
        leading: const AppbarAccount(),
      ),
      body: const Center(
        child: Text(
          'Rank',
          style: TextStyle(color: Colors.orange),
        ),
      ),
    );
  }
}
