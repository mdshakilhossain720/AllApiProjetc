import 'package:apiintegrationall/data/model/update_model.dart';
import 'package:flutter/material.dart';

class UpdateDisplay extends StatefulWidget {
  final String name, job, update;
  final UpdateModel updateModel;

  const UpdateDisplay(
      {super.key,
      required this.name,
      required this.job,
      required this.update,
      required this.updateModel});

  @override
  State<UpdateDisplay> createState() => _UpdateDisplayState();
}

class _UpdateDisplayState extends State<UpdateDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upadte api"),
      ),
      body: ListView(
        children: [
          // Text("Name:{$name}"),
          // Text("Name:{$job}"),
          // Text("Name:{$creatadd}"),

        ],
      ),
    );
  }
}
