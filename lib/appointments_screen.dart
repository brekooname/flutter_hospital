import 'package:flutter/material.dart';
import '/components/components.dart';
import '/components/text_field.dart';

import 'constants.dart';

class AppointmentsScreen extends StatelessWidget {
  AppointmentsScreen({super.key});
  var appointmentController = TextEditingController();
  var surgeryController = TextEditingController();
  var diagousesController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text('My Appointments'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Column(
                    children: [
                      const Text(
                        "My Appointment",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      MyTextField().build(context,
                          hint: "Enter your name",
                          controller: appointmentController),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                            onPressed: () {
                              showResult(context,
                                  keys: ["name :"], values: ["sdfsdf"]);
                            },
                            child: const Text("Get my appointment")),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Column(
                    children: [
                      const Text(
                        "My Surgery",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      MyTextField().build(context,
                          hint: "Enter your ID", controller: surgeryController),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                            onPressed: () {
                              showResult(context,
                                  keys: ["name :"], values: ["sdfsdf"]);
                            },
                            child: const Text("Get my surgery")),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Column(
                    children: [
                      const Text(
                        "My Diaougnases",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      MyTextField().build(context,
                          hint: "Enter your ID",
                          controller: diagousesController),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                            onPressed: () {
                              showResult(context,
                                  keys: ["name :"], values: ["sdfsdf"]);
                            },
                            child: const Text("Get my diaougnases")),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
