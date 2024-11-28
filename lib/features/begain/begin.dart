import 'package:flutter/material.dart';
import 'dart:math';

// ignore: must_be_immutable
class Begin extends StatelessWidget {
  final random = Random();
  List<String> ran = [
    'روى عن عبد الله بن عمرو -رضي الله عنه- أنه قال: (لَمْ يَكُنِ النبيُّ صَلَّى اللهُ عليه وسلَّمَ فَاحِشًا ولَا مُتَفَحِّشًا، وكانَ يقولُ: إنَّ مِن خِيَارِكُمْ أحْسَنَكُمْ أخْلَاقًا).',
    'قال رسول الله صلى الله عليه وسلم: (ما مِن شيءٍ أثقلُ في الميزانِ من حُسنِ الخُلُقِ).',
    'قال رسول الله صلى الله عليه وسلم: (إنَّ مِن أحبِّكم إليَّ وأقربِكُم منِّي مجلسًا يومَ القيامةِ أحاسنَكُم أخلاقًا).',
    'قال رسول الله صلى الله عليه وسلم: (إنَّ المؤمنَ ليُدْرِكُ بحُسْنِ خُلُقِه درجةَ الصَّائمِ القائمِ).',
    'قال رسول الله صلى الله عليه وسلم: (إنَّ أكملَ أو من أكملِ المؤمنين إيمانًا أحسنُهم خُلقًا).',
    'قال رسول الله صلى الله عليه وسلم: (أحَبُّ عبادِ اللهِ إلى اللهِ أحسَنُهُمْ خُلُقًا).',
    'سئل رسول الله -صلى الله عليه وسلم- عن أكثر شيء يُدخل الناس الجنة، فقال: (تَقْوَى اللهِ وحُسْنُ الخُلُقِ)',
    'قال رسول الله صلى الله عليه وسلم: (إنَّما بُعِثْتُ لأُتممَ صالحَ الأخلاقِ).',
    'قال رسول الله -صلى الله عيه وسلم-: (مَن كانَ آخرُ كلامِه لا إلَه إلَّا اللَّهُ، دخلَ الجنَّةَ).',
    'قال رسول الله -صلى الله عيه وسلم-: (إنَّ الرَّجُلَ لَيَعْمَلُ الزَّمَنَ الطَّوِيلَ بِعَمَلِ أَهْلِ النَّارِ، ثُمَّ يُخْتَمُ له عَمَلُهُ بِعَمَلِ أَهْلِ الجَنَّةِ).',
    'قال رسول الله -صلى الله عيه وسلم-: (ثلاثةٌ كلُّهم ضامنٌ على اللهِ إن عاش كُفِيَ، و إن مات دخل الجنةَ: من دخل بيتَه بسلامٍ فهو ضامنٌ على اللهِ عزَّ و جلَّ و من خرج إلى المسجدِ فهو ضامنٌ على اللهِ و من خرج في سبيل اللهِ فهو ضامنٌ على اللهِ).',
    'قال رسول الله -صلى الله عيه وسلم-: (من ماتَ وَهوَ بريءٌ منَ الْكبرِ والغُلولِ والدَّينِ دخلَ الجنَّةَ).',
    'قال رسول الله -صلى الله عيه وسلم-: (الطاعونُ، والمبطونُ، والغريقُ، والنُّفَساءُ: شهادةٌ).',
  ];

  Begin({super.key});

  @override
  Widget build(BuildContext context) {
    final randomIndex = random.nextInt(ran.length);
    final randomItem = ran[randomIndex];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 3 / 4,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'images/kaba.jpg',
                      ))),
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 1 / 16,
                ),
                child: ListTile(
                  title: const Text(
                    'حديث اليوم|',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  subtitle: Text(
                    randomItem,
                    style: const TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 2 / 6,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'bottombar');
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 1 / 6,
                            color: Colors.amber,
                            child: const Center(
                              child: Text(
                                "ابدأ",
                                style: TextStyle(
                                    fontSize: 40, color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 1 / 6,
                            color: Colors.black,
                            child: const Center(
                              child: Text(
                                "الان",
                                style: TextStyle(
                                    fontSize: 40, color: Colors.amber),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
