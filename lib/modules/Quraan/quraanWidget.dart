import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/modules/Quraan/quranTextView.dart';
import 'package:islami_app/modules/Quraan/quranViewWidget.dart';

class quranWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;

    var theme = Theme.of(context);
    List<String> SuraNames = [
      "الفاتحه",
      "البقرة",
      "آل عمران",
      "النساء",
      "المائدة",
      "الأنعام",
      "الأعراف",
      "الأنفال",
      "التوبة",
      "يونس",
      "هود",
      "يوسف",
      "الرعد",
      "إبراهيم",
      "الحجر",
      "النحل",
      "الإسراء",
      "الكهف",
      "مريم",
      "طه",
      "الأنبياء",
      "الحج",
      "المؤمنون",
      "النّور",
      "الفرقان",
      "الشعراء",
      "النّمل",
      "القصص",
      "العنكبوت",
      "الرّوم",
      "لقمان",
      "السجدة",
      "الأحزاب",
      "سبأ",
      "فاطر",
      "يس",
      "الصافات",
      "ص",
      "الزمر",
      "غافر",
      "فصّلت",
      "الشورى",
      "الزخرف",
      "الدّخان",
      "الجاثية",
      "الأحقاف",
      "محمد",
      "الفتح",
      "الحجرات",
      "ق",
      "الذاريات",
      "الطور",
      "النجم",
      "القمر",
      "الرحمن",
      "الواقعة",
      "الحديد",
      "المجادلة",
      "الحشر",
      "الممتحنة",
      "الصف",
      "الجمعة",
      "المنافقون",
      "التغابن",
      "الطلاق",
      "التحريم",
      "الملك",
      "القلم",
      "الحاقة",
      "المعارج",
      "نوح",
      "الجن",
      "المزّمّل",
      "المدّثر",
      "القيامة",
      "الإنسان",
      "المرسلات",
      "النبأ",
      "النازعات",
      "عبس",
      "التكوير",
      "الإنفطار",
      "المطفّفين",
      "الإنشقاق",
      "البروج",
      "الطارق",
      "الأعلى",
      "الغاشية",
      "الفجر",
      "البلد",
      "الشمس",
      "الليل",
      "الضحى",
      "الشرح",
      "التين",
      "العلق",
      "القدر",
      "البينة",
      "الزلزلة",
      "العاديات",
      "القارعة",
      "التكاثر",
      "العصر",
      "الهمزة",
      "الفيل",
      "قريش",
      "الماعون",
      "الكوثر",
      "الكافرون",
      "النصر",
      "المسد",
      "الإخلاص",
      "الفلق",
      "الناس"
    ];
    return Column(
      children: [
        Image.asset('assets/images/quran_image.png'),

        // Text('quran', style: TextStyle(fontSize: 30)),
        Divider(
          color: theme.dividerTheme.color,
          thickness: 1.5,
          height: 3,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                local.suraNum,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 45,
              width: 1.5,
              color: theme.colorScheme.onSecondary,
            ),
            Expanded(
                child: Text(local.suraName,
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.center)),
          ],
        ),
        Divider(
          color: theme.dividerTheme.color,
          thickness: 1.5,
          height: 3,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, QuranTextView.routeName,
                    arguments: SuraDetails(
                        suraName: SuraNames[index],
                        suraNumber: '${index + 1}'));
              },
              child: QuranViewWidget(
                SuraName: SuraNames[index],
                SuraNum: '${index + 1}',
              ),
            ),
            itemCount: SuraNames.length,
          ),
        )
      ],
    );
  }
}

class SuraDetails {
  final String suraName;
  final String suraNumber;

  SuraDetails({required this.suraName, required this.suraNumber});
}
