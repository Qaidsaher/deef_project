import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final Map<String, String> wordGifMap = {
  "airplane": "Airplane.gif",
  "طائره": "Airplane.gif",
  "all": "All.gif",
  "الكل": "All.gif",
  "all night": "AllNight.gif",
  "طوال الليل": "AllNight.gif",
  "awesome": "Awesome.gif",
  "رائع": "Awesome.gif",
  "baby": "Baby.gif",
  "طفل": "Baby.gif",
  "big": "Big.gif",
  "كبير": "Big.gif",
  "box office": "BoxOffice.gif",
  "شباك التذاكر": "BoxOffice.gif",
  "brother": "Brother.gif",
  "اخ": "Brother.gif",
  "bus": "Bus.gif",
  "حافلة": "Bus.gif",
  "bye": "Goodbye.gif",
  "الى اللقاء": "Goodbye.gif",
  "car": "Car.gif",
  "سيارة": "Car.gif",
  "children": "Children.gif",
  "اطفال": "Children.gif",
  "congratulations": "Award.gif",
  "مبروك": "Award.gif",
  "cool": "Cool.gif",
  "رائع": "Cool.gif",
  "day": "Day.gif",
  "يوم": "Day.gif",
  "deaf awareness day": "DeafAwarenessDay.gif",
  "يوم التوعية بالصم": "DeafAwarenessDay.gif",
  "delete": "Delete.gif",
  "حذف": "Delete.gif",
  "dusk": "Dusk.gif",
  "الغسق": "Dusk.gif",
  "early": "Early.gif",
  "مبكر": "Early.gif",
  "eating": "Eating.gif",
  "تناول الطعام": "Eating.gif",
  "emergency": "Emergency.gif",
  "طارئ": "Emergency.gif",
  "empty": "Empty.gif",
  "فارغ": "Empty.gif",
  "enthusiastically": "Enthusiastically.gif",
  "بحماس": "Enthusiastically.gif",
  "evening": "Evening.gif",
  "مساء": "Evening.gif",
  "every day": "EveryDay.gif",
  "كل يوم": "EveryDay.gif",
  "every week": "EveryWeek.gif",
  "كل اسبوع": "EveryWeek.gif",
  "facebook": "Facebook.gif",
  "فيسبوك": "Facebook.gif",
  "family": "Family.gif",
  "عائله": "Family.gif",
  "father": "Father.gif",
  "اب": "Father.gif",
  "fire": "Fire.gif",
  "نار": "Fire.gif",
  "friday": "Friday.gif",
  "الجمعه": "Friday.gif",
  "friend": "Friend.gif",
  "صديق": "Friend.gif",
  "fun": "Fun.gif",
  "مرح": "Fun.gif",
  "game": "Game.gif",
  "لعبه": "Game.gif",
  "giphy": "Giphy.gif",
  "جيبهي": "Giphy.gif",
  "good evening": "GoodEvening.gif",
  "مساء الخير": "GoodEvening.gif",
  "good morning": "GoodMorning.gif",
  "صباح الخير": "GoodMorning.gif",
  "good night": "GoodNight.gif",
  "تصبح على خير": "GoodNight.gif",
  "goodbye": "Goodbye.gif",
  "وداعا": "Goodbye.gif",
  "grandfather": "GrandFather.gif",
  "جد": "GrandFather.gif",
  "grandmother": "GrandMother.gif",
  "جدة": "GrandMother.gif",
  "happy": "Happy.gif",
  "سعيد": "Happy.gif",
  "hashtag": "Hashtag.gif",
  "هاشتاج": "Hashtag.gif",
  "hello": "Hello.gif",
  "مرحبا": "Hello.gif",
  "home": "Home.gif",
  "منزل": "Home.gif",
  "hour": "Hour.gif",
  "ساعة": "Hour.gif",
  "how are you": "HowAreYou.gif",
  "كيف حالك": "HowAreYou.gif",
  "how are you doing": "HowAreYouDoing.gif",
  "كيف حالك؟": "HowAreYouDoing.gif",
  "i don't know": "IDontKnow.gif",
  "لا اعرف": "IDontKnow.gif",
  "i don't like this": "IDontLikeThis.gif",
  "لا يعجبني هذا": "IDontLikeThis.gif",
  "i don't understand": "IDontUnderstand.gif",
  "لا افهم": "IDontUnderstand.gif",
  "i enjoy this": "IEnjoyThis.gif",
  "استمتع بهذا": "IEnjoyThis.gif",
  "i know": "IKnow.gif",
  "اعرف": "IKnow.gif",
  "i like it": "ILikeIt.gif",
  "احب ذلك": "ILikeIt.gif",
  "i understand": "IUnderstand.gif",
  "انا أفهم": "IUnderstand.gif",
  "i want": "IWant.gif",
  "اريد": "IWant.gif",
  "i'll help you": "IllHelpYou.gif",
  "ساساعدك": "IllHelpYou.gif",
  "i'm fine": "ImFine.gif",
  "أنا بخير": "ImFine.gif",
  "instagram": "Instagram.gif",
  "انتستقرام": "Instagram.gif",
  "internet": "Internet.gif",
  "انترنت": "Internet.gif",
  "large": "Large.gif",
  "كبير": "Large.gif",
  "late": "Late.gif",
  "متاخر": "Late.gif",
  "length": "Length.gif",
  "طول": "Length.gif",
  "love": "Love.gif",
  "حب": "Love.gif",
  "medium": "Medium.gif",
  "متوسط": "Medium.gif",
  "mother": "Mother.gif",
  "ام": "Mother.gif",
  "motorcycle": "Motorcycle.gif",
  "دراجة نارية": "Motorcycle.gif",
  "no": "No.gif",
  "لا": "No.gif",
  "number": "Number.gif",
  "رقم": "Number.gif",
  "parents": "Parents.gif",
  "والدين": "Parents.gif",
  "please repeat": "PleaseRepeat.gif",
  "من فضلك اعد": "PleaseRepeat.gif",
  "recording": "Recording.gif",
  "تسجيل": "Recording.gif",
  "sad": "Sad.gif",
  "حزين": "Sad.gif",
  "school": "School.gif",
  "مدرسة": "School.gif",
  "see you": "SeeYou.gif",
  "اراك لاحقا": "SeeYou.gif",
  "sister": "Sister.gif",
  "اخت": "Sister.gif",
  "sorry": "Sorry.gif",
  "اسف": "Sorry.gif",
  "time": "Time.gif",
  "وقت": "Time.gif",
  "today": "Today.gif",
  "اليوم": "Today.gif",
  "tomorrow": "Tomorrow.gif",
  "غدا": "Tomorrow.gif",
  "work": "Work.gif",
  "عمل": "Work.gif",
  "yes": "Yes.gif",
  "نعم": "Yes.gif"
};
class TextInputScreen extends StatefulWidget {
  const TextInputScreen({Key? key}) : super(key: key);

  @override
  _TextInputScreenState createState() => _TextInputScreenState();
}

class _TextInputScreenState extends State<TextInputScreen> {
  final TextEditingController _textController = TextEditingController();
  String _searchQuery = '';
  String _selectedLanguage = "en";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deaf_App".tr),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(
                  250.0, // Show left for English
                  100.0, // Vertical position remains the same
                  _selectedLanguage == 'en'
                      ? 0.0
                      : 250.0, // Show right for Arabic
                  0.0, // Horizontal offset remains the same
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
                    Get.updateLocale(Locale(value)); // Update the locale
                  });
                }
              });
            },
            icon: Icon(Icons.change_circle),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Wrap the body with SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                color: const Color(0xFF002244), // Background color of the Card
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'Enter your text...',
                      hintStyle: const TextStyle(
                          color: Colors.white70), // Hint text color
                      filled: true,
                      fillColor: const Color(
                          0xFF002244), // Background color of the TextField
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color:
                              Colors.white, // White border color when enabled
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color:
                              Colors.white, // White border color when focused
                          width:
                              2.0, // Optional: Thickness of the focused border
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.red, // Red border color for errors
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors
                              .red, // Red border color when focused in error state
                          width: 2.0, // Optional: Thickness of the error border
                        ),
                      ),
                    ),
                    style: const TextStyle(color: Colors.white), // Text color
                    maxLines: 3, // Allows up to 3 lines of input
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Close the keyboard
                  FocusScope.of(context).requestFocus(FocusNode());

                  setState(() {
                    _searchQuery = _textController.text;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Convert to Sign'.tr,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              if (_searchQuery.isNotEmpty) ...[
                SizedBox(height: 15),
                Container(
                  child: Image.asset(
                    "assets/${wordGifMap[_searchQuery] ?? "default.gif"}",
                    errorBuilder: (context, error, stackTrace) {
                      return Text('Sign language GIF not found!'.tr);
                    },
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
