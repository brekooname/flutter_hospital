import 'package:flutter/material.dart';
import 'package:flutter_mariam/constants.dart';

Widget columnData({required String key, required String value}) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.grey.shade200,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
        child: Column(children: [
          Text(
            key,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            width: 7,
          ),
          Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ]),
      ),
    ),
  );
}

showResult(context,
    {required List<String> keys, required List<dynamic> values}) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: AlignmentDirectional.topStart,
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: mainColor,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              ListView(
                shrinkWrap: true,
                children: keys
                    .map((e) =>
                        columnData(key: e, value: "${values[e.indexOf(e)]}"))
                    .toList(),
              )
            ],
          ),
        )),
  );
}
