import 'package:deafproject/learn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Survey extends StatefulWidget {
  const Survey({super.key});

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  String _selectedLanguage = 'en';
  String selectedValue = "select an option";
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
          if(index ==1)
          {
            Get.to(()=>Learn());
          }
          if (index == 0) {
            //Get.to(() => Settings());
            Get.back();
          }
        },
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(color: Colors.green),
        selectedIconTheme: IconThemeData(
          color: Colors.green,
        ),
        backgroundColor: Color(0xFF002244),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.arrow_back), label: "Back"),
         
          BottomNavigationBarItem(
              icon: Icon(Icons.save), label: "Save"),
        ],
        showUnselectedLabels: true,
      ),
      appBar: AppBar(
        title: Text(
          "Survey",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(
                  250.0,
                  100.0,
                  _selectedLanguage == 'en' ? 0.0 : 250.0,
                  0.0,
                ),
                items: [
                  PopupMenuItem<String>(
                    value: 'en',
                    child: Text('English'),
                  ),
                  PopupMenuItem<String>(
                    value: 'ar',
                    child: Text('Arabic'),
                  ),
                ],
              ).then((value) {
                if (value != null) {
                  setState(() {
                    _selectedLanguage = value == 'en' ? 'English' : 'Arabic';
                    Get.updateLocale(Locale(value));
                  });
                }
              });
            },
            icon: Icon(Icons.change_circle),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.moon_circle)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                "Choose an Option",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: Get.width * 9 / 10,
              child: Center(
                child: DropdownButton<String>(
                  value: selectedValue,
                  hint: Text(
                    "Select an option",
                    style: TextStyle(color: Colors.black),
                  ),
                  icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                  dropdownColor: Colors.black,
                  style: TextStyle(color: Colors.white),
                  underline: SizedBox(), // Remove default underline
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: <String>[
                    "select an option",
                    "I am worried and want to connect",
                    "I am not important, but communicate",
                    "I want to learn sign language",
                    "I am here as per this request"
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            selectedValue != "select an option"
                ? Text("You Selected : $selectedValue")
                : SizedBox.shrink(),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    filled: true,
                    hintText: "Enter Your Response here ",
                    hintStyle: const TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.red, width: 2),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
                width: Get.width * 8 / 10,
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'submit',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                width: Get.width * 8 / 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
