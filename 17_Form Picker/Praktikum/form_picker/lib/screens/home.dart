import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text ("Create Post"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            //buildfilepicker
            buidDatePicker(context),
            //colorpicker
            buildColorPicker(context),
            //caption
          ],
        ),
      ),
    );
  }
  Widget buidDatePicker(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Date'),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context, 
                  initialDate: currentDate,
                  firstDate: DateTime(2022),
                  lastDate: DateTime(currentDate.year + 10),
                  );
                setState(() {
                  if (selectDate != null){
                    _dueDate = selectDate;
                  }
                });
              }, 
              child: const Text('Select'),
              ),
          ],
        ),
        Text(DateFormat('dd-MM-yyyy').format(_dueDate)),
      ],
    );
  }
  Widget buildColorPicker(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Color'),
        SizedBox(height: 10,),
        Container(
          height: 70,
          width: double.infinity,
          color: _currentColor,
        ),
        SizedBox(height: 10,),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(_currentColor),
          ),
          onPressed: (){
            showDialog(
              context: context, 
              builder: (context){
                return AlertDialog(
                  title: Text('Pick your color'),
                  content: BlockPicker(
                    pickerColor: _currentColor,
                    onColorChanged: (color){
                      setState(() {
                        _currentColor = color;
                      });
                    }
                    ),
                  actions: [
                    TextButton(
                      onPressed: (){
                        Navigator.pop(context);
                      }, 
                      child: Text('Save'),
                      ),
                  ],
                );
              }
            );
          },
          child: Text('Pick Color'),
        ),
      ],
    );
  }
}