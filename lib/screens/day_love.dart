import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../common/app_colors.dart';
import '../widgets/button.dart';
import './../common/app_text_styles.dart';

class DayLove extends StatefulWidget {
  const DayLove({Key? key}) : super(key: key);

  @override
  State<DayLove> createState() => _DayLoveState();
}

class _DayLoveState extends State<DayLove> {
  // String startDay = DateFormat('yyyy-MM-dd').format(DateTime.now());
  String startDay = "";
  //show dialog calendar
  void _showDialogCalendar() {
    showModalBottomSheet<void>(
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //       topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r)),
        // ),
        context: context,
        // isScrollControlled: true,
        builder: (context) {
          return Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: AppColors.primary,
                    border: Border(
                        bottom: BorderSide(width: 0.5, color: Colors.grey))),
                child: Row(
                  children: [
                    Button(
                        label: 'Huỷ',
                        type: 'text',
                        colorText: Colors.white,
                        onClick: () {
                          Navigator.pop(context);
                        }),
                    Expanded(
                        child: Text(
                      'Chọn khoảng thời gian',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.black.copyWith(color: Colors.black),
                    )),
                    Button(
                        label: 'Xong',
                        type: 'text',
                        colorText: Colors.white,
                        onClick: () {}),
                  ],
                ),
              ),
              SfDateRangePicker(
                onSelectionChanged: _onSelectionChanged,
                selectionMode: DateRangePickerSelectionMode.range,
                // minDate: DateTime.now().subtract(const Duration(days: 7)),
                // maxDate: DateTime.now(),
                initialSelectedRange: PickerDateRange(
                    DateTime.now().subtract(const Duration(days: 7)),
                    DateTime.now()),
              )
            ],
          );
        });
  }

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      var _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
          // ignore: lines_longer_than_80_chars
          ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      print('DATATA RANGE ${args.value}');
      setState(() {
        startDay = DateFormat('dd-MM-yyyy').format(args.value.startDate);
      });
      // endDate = DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate);
    } else if (args.value is DateTime) {
      var _selectedDate = args.value.toString();
      print('DATATA_DATETIME $_selectedDate');
    } else if (args.value is List<DateTime>) {
      var _dateCount = args.value.length.toString();
      print('DATATA_LÍT $_dateCount');
    } else {
      var _rangeCount = args.value.length.toString();
      print('DATATA_ELS $_rangeCount');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn ngày tỏ tình'),
      ),
      body: SafeArea(
        child: Container(
            // height: 800,
            // width: 100,
            child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Text(
              startDay != ''
                  ? "Đi chơi ngày $startDay cẩn thận xe tông!!!"
                  : "",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    // color: Colors.amber,
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.red,
                      ],
                    )),
                child: FlatButton(
                    child: const Text(
                      'Chọn ngày đi chơi',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    textColor: Colors.white,
                    // color: Colors.pinkAccent,
                    onPressed: () {
                      this._showDialogCalendar();
                    }),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
