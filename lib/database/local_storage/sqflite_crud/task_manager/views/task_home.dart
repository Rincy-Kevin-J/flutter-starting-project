import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

import '../../../../../utils/mycolor.dart';
import '../../../../../utils/text-style.dart';
import '../widget/create_edit_sheet.dart';

class TaskHome extends StatefulWidget {
  const TaskHome({super.key});

  @override
  State<TaskHome> createState() => _TaskHomeState();
}

class _TaskHomeState extends State<TaskHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.basicColor,
        title: Text(
          "Create Your Notes",
          style: MyTextThemes.textheadingg,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>showSheet(null,context),//while creating note id will be zero
        child: FaIcon(Icons.note_alt_outlined),
      ),
    );
  }
}
