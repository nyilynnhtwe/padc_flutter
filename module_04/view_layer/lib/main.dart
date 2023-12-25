import 'package:flutter/material.dart';
import 'package:view_layer/lessons/LearningBottomNavBar.dart';
import 'package:view_layer/lessons/LearningCustomScrollView.dart';
import 'package:view_layer/lessons/LearningDialog.dart';
import 'package:view_layer/lessons/LearningGridViewBuilder.dart';
import 'package:view_layer/lessons/LearningListViewBuilder.dart';
import 'package:view_layer/lessons/v_Container.dart';
import 'package:view_layer/lessons/v_check_boxes.dart';
import 'package:view_layer/lessons/v_drop_down_menu.dart';
import 'package:view_layer/lessons/v_grid_view.dart';
import 'package:view_layer/lessons/v_list_view.dart';
import 'package:view_layer/lessons/v_radio_buttons.dart';
import 'package:view_layer/lessons/v_simple_widget.dart';
import 'package:view_layer/lessons/v_single_child_s_view.dart';
import 'package:view_layer/lessons/v_warp_view.dart';
import 'package:view_layer/lessons/v_wigs_arr_o_wigs.dart';

void main() {
  runApp(const DataDisplayWidget());
}

class DataDisplayWidget extends StatelessWidget {
  const DataDisplayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const BtnNav(),
    );
  }
}
