import 'package:flutter/material.dart';
import 'package:manit_erp/constants/global_variables.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final List<Subject> subjects = [
    Subject(code: "CS101", name: "Introduction to Computer Science", isSelected: true),
    Subject(code: "CS201", name: "Data Structures and Algorithms", isSelected: true),
    Subject(code: "CS301", name: "Object-Oriented Programming", isSelected: true),
    Subject(code: "CS401", name: "Database Management Systems", isSelected: true),
    Subject(code: "CS501", name: "Computer Networks", isSelected: true),
    Subject(code: "CS601", name: "Operating Systems", isSelected: true),
    Subject(code: "CS701", name: "Artificial Intelligence", isSelected: true),
    Subject(code: "CS801", name: "Software Engineering", isSelected: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: GlobalVariables.appGradient,
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 21, left: 20,bottom: 17),
                  child: Text(
                    'Student Registration',
                    style: TextStyle(
                      fontFamily: 'assets/fonts/Poppins-Regular.ttf',
                      fontSize: 20.0,
                      color: GlobalVariables.backgroundColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                  ),
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: subjects.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            leading: CircleAvatar(
                              backgroundColor: Colors.indigo,
                              child: Text(
                                subjects[index].code.substring(0, 2),
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                            title: Text(
                              subjects[index].name,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            subtitle: Text(
                              'Code: ${subjects[index].code}',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            trailing: Checkbox(
                              value: subjects[index].isSelected,
                              onChanged: null,
                              activeColor: Colors.indigo,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Subject {
  final String code;
  final String name;
  final bool isSelected;

  Subject({required this.code, required this.name, required this.isSelected});
}