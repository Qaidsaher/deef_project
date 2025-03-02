import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

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


class AudioInputScreen extends StatefulWidget {
  const AudioInputScreen({Key? key}) : super(key: key);

  @override
  _AudioInputScreenState createState() => _AudioInputScreenState();
}

class _AudioInputScreenState extends State<AudioInputScreen> {
  final SpeechToText _speechToText = SpeechToText();
  bool _isListening = false;
  String _searchQuery = '';
  String _selectedLanguage = "en-US"; // Default to English (US)

  @override
  void initState() {
    super.initState();
    _initializeSpeechRecognition();
  }

  Future<void> _initializeSpeechRecognition() async {
    await _speechToText.initialize();
  }

  void _startListening() async {
    if (!_isListening) {
      bool available = await _speechToText.initialize();
      if (available) {
        setState(() => _isListening = true);
        _speechToText.listen(
          onResult: (result) {
            setState(() {
              _searchQuery = result.recognizedWords;
            });
          },
          localeId: _selectedLanguage, // Use the selected language
        );
      }
      print(_searchQuery);
      print("------------------");
      print(wordGifMap[_searchQuery]);
    }
  }

  void _stopListening() {
    if (_isListening) {
      _speechToText.stop();
      setState(() => _isListening = false);
    }
  }

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
                position: RelativeRect.fromLTRB(250.0, 100.0, 0.0, 0.0),
                items: [
                  PopupMenuItem<String>(
                    value: 'en-US',
                    child: Text('English'),
                  ),
                  PopupMenuItem<String>(
                    value: 'ar-SA',
                    child: Text('Arabic'),
                  ),
                ],
              ).then((value) {
                if (value != null) {
                  setState(() {
                    _selectedLanguage = value;
                    Get.updateLocale(Locale(value.split('-')[0])); // Update locale
                  });
                }
              });
            },
            icon: Icon(Icons.change_circle),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
             
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTapDown: (_) => _startListening(),
                  onTapUp: (_) => _stopListening(),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: _isListening ? Colors.purple : Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _isListening ? Icons.mic : Icons.mic_none,
                            size: 48,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            _isListening ? 'Listening...' : 'Hold to Record'.tr,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (_searchQuery.isNotEmpty) ...[
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("The Result is : ".tr),
                  Text(
                    "${_searchQuery}",
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
              SizedBox(height: 15),
              Container(
                child: Image.asset(
                  "assets/${wordGifMap[_searchQuery] ?? "default.gif"}",
                  errorBuilder: (context, error, stackTrace) {
                    return Text('Sign language GIF not found!'.tr);
                  },
                ),
              ),
            ] else ...[
              Text("No Spelled Word Yet".tr)
            ],
          ],
        ),
      ),
    );
  }
}
