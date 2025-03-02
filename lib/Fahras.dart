import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndexPage extends StatelessWidget {
  // The map containing phrases and their corresponding GIF paths
  final Map<String, String> data = {
     "كم الساعة": "assets/whattimeisit.gif",
    "اب": "assets/Father.gif",
    "كبير": "assets/Large.gif",
    "اسرة": "assets/Family.gif",
    "جائزة": "assets/Award.gif",
    "كل": "assets/All.gif",
    "كل يوم": "assets/EveryDay.gif",
    "كل اسبوع": "assets/EveryWeek.gif",
    "مساء": "assets/Evening.gif",
    "فارغ": "assets/Empty.gif",
    "حب": "assets/Love.gif",
    "لا اعرف": "assets/IDontKnow.gif",
    "كيف حالك": "assets/HowAreYou.gif",
    "كيف الامور": "assets/HowAreYouDoing.gif",
    "مرحبا": "assets/Hello.gif",
    "سعيد": "assets/Happy.gif",
    "جدة": "assets/GrandMother.gif",
    "رقم": "assets/Number.gif",
    "ام": "assets/Mother.gif",
    "متوسط": "assets/Medium.gif",
    "اخت": "assets/Sister.gif",
    "حزين": "assets/Sad.gif",
    "والدان": "assets/Parents.gif",
    "اليوم التالي": "assets/NextDay.gif",
    "حجم متوسط": "assets/MediumSizeBowl.gif",
    "يعني": "assets/Mean.gif",
    "اسف": "assets/Sorry.gif",
    "صغير": "assets/Small.gif",
    "عمل": "assets/Work.gif",
   
             
    "طائرة": "assets/Airplane.gif",
"طوال الليل": "assets/AllNight.gif",



"مذهل": "assets/Awesome.gif",
"رائع": "assets/Cool.gif",
"يوم": "assets/Day.gif",
"يوم التوعية بالصم": "assets/DeafAwarenessDay.gif",
"حذف": "assets/Delete.gif",
"الغسق": "assets/Dusk.gif",
"مبكرا": "assets/Early.gif",
"ياكل": "assets/Eating.gif",

" طوارئ": "assets/Emergency.gif",
"حريق": "assets/Fire.gif",
"فيسبوك": "assets/Facebook.gif",
"الجمعة": "assets/Friday.gif",
"مرح": "assets/Fun.gif",
"لعبة": "assets/Game.gif",
"هاشتاغ": "assets/Hashtag.gif",
"انا اريد": "assets/giphy.gif",
"مساء الخير": "assets/Goodevening.gif",
"صباح الخير": "assets/Good Morning.gif",
"تصبح على خير": "assets/Good Night.gif",
"بعد الظهر": "assets/Goog afternoon.gif",
"المنزل": "assets/Home.gif",
"ساعة": "assets/Hour.gif",
"أعجبني": "assets/I Like It.gif",
"لا أعرف": "assets/IDontKnow.gif",
"لا أحب هذا": "assets/Idon'tlike this.gif",
"لا أفهم": "assets/Idon'tunderatand.gif",
"أستمتع بهذا": "assets/Ienjoy this.gif",
"أعرف": "assets/IKnow.gif",
"سأساعدك": "assets/I'll help you.gif",
"ا بخير انا": "assets/I'm Fine.gif",
"إنستغرام": "assets/Instagram.gif",
"إنترنت": "assets/Internete.gif",
"الأمر واضح": "assets/It's Cear.gif",
"إنه حقيقي": "assets/It's really.gif",
"أفهم": "assets/Iunderstand.gif",
"أريد": "assets/Iwant.gif",
"متأخر": "assets/Late.gif",
"ربما": "assets/Maybe.gif",
"كوب متوسط": "assets/MediumMug.gif",
"الإثنين": "assets/Mondy.gif",
"دراجة نارية": "assets/Motorcycle.gif",
"لا": "assets/No.gif",
"أرجو التكرار": "assets/PleaseRepeat.gif",
"أشر": "assets/Point.gif",
"قائد الفريق": "assets/Quarterback.gif",
"التسجيل": "assets/Recording.gif",
"وردة": "assets/Rose.gif",
"شاهد الفرق": "assets/See the difference.gif",
"خجول": "assets/Shy.gif",
"تدوين الإشارة": "assets/Signing Vlog.gif",
"وسائل التواصل الاجتماعي": "assets/SocialMedia.gif",
"قريباً": "assets/Soon.gif",
"تهجئة": "assets/spell out .gif",
"مندهش": "assets/Stunned.gif",

"مفاجأة": "assets/Surprise.gif",
"الخميس": "assets/Thursday.gif",
"ربطة عنق": "assets/Tie.gif",
"الوقت": "assets/Time.gif",
"مرور الوقت": "assets/TimePassage.gif",
"اليوم": "assets/Today.gif",
"غداً": "assets/Tomorrow.gif",
"شاحنة": "assets/Truck.gif",
"الثلاثاء": "assets/Tuesday.gif",
"تويتر": "assets/Twitter.gif",
"كرة الطائرة": "assets/Volleyball.gif",
"عطلة نهاية الأسبوع": "assets/Weekend.gif",
"أين الصف الدراسي": "assets/Were's the classroom.gif",
"متى ينتهي الصف": "assets/WhenIsClassFinished.gif",
"أي مبنى": "assets/WhichBuilding.gif",
"الأربعاء": "assets/wndnesday.gif"
    // Add more items as needed
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'فهرس الصور',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),  // Add padding to the entire body
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: data.keys.length,
                itemBuilder: (context, index) {
                  String phrase = data.keys.elementAt(index);
                  String gifPath = data[phrase]!;
                  
                  return Center(
                    child: Card(
                      color: Color(0xFF002244),
                      margin: EdgeInsets.symmetric(vertical: 8),
                      elevation: 4,
                      child: ListTile(
                        onTap: () {
                          Get.dialog(
                            AlertDialog(
                              content: Image.asset(gifPath),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text("Close"),
                                ),
                              ],
                            ),
                          );
                        },
                        title: Text(
                          phrase,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        leading: Image.asset(gifPath, width: 40, height: 40), // Optional: Display a small preview of the GIF
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Add action for "رجوع"
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: Text(
                    'رجوع',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add action for "حفظ"
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: Text(
                    'حفظ',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
