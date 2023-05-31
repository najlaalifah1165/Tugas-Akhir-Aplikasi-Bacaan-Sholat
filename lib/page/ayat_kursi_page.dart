import 'package:flutter/material.dart';

class AyatKursi extends StatefulWidget {
  const AyatKursi({super.key});

  @override
  State<AyatKursi> createState() => _AyatKursiState();
}

class _AyatKursiState extends State<AyatKursi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(0),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color(0xff0e1446),
                        )),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 159, 219, 252),
                      ),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        margin: EdgeInsets.only(top: 4, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ayat Kursi",
                              style: TextStyle(
                                color: Color(0xff0e1446),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Bacaan Ayat Kursi beserta Artinya",
                              style: TextStyle(
                                color: Color(0xff0e1446),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      child: Image.asset("assets/images/ayat_kursi.png",
                          width: 140, fit: BoxFit.fill),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 210, right: 20),
                      child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xff0e1446)),
                          child: Material(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor: Colors.amber,
                              borderRadius: BorderRadius.circular(50),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                    title: Center(
                                      child: Text("Arti Ayat Kursi"),
                                    ),
                                    content: SingleChildScrollView(
                                      child: Text(
                                        "'Allah, tidak ada Tuhan (yang berhak disembah) melainkan Dia Yang Hidup kekal lagi terus menerus mengurus (makhluk-Nya); tidak mengantuk dan tidak tidur. Kepunyaan-Nya apa yang di langit dan di bumi. Tiada yang dapat memberi syafa'at di sisi Allah tanpa izin-Nya? Allah mengetahui apa-apa yang di hadapan mereka dan di belakang mereka, dan mereka tidak mengetahui apa-apa dari ilmu Allah melainkan apa yang dikehendaki-Nya. Kursi Allah meliputi langit dan bumi. Dan Allah tidak merasa berat memelihara keduanya, dan Allah Maha Tinggi lagi Maha Besar.'",
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: Center(
                                child: Text(
                                  "Artinya",
                                  style: TextStyle(
                                    letterSpacing: 2,
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(top: 20),
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ",
                        style: TextStyle(
                          color: Color(0xff0e1446),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Dengan menyebut nama Allah yang maha pengasih lagi maha penyayang",
                        style: TextStyle(
                          color: Color(0xff0e1446),
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SelectableText(
                      "ٱللَّهُ لَآ إِلَٰهَ إِلَّا هُوَ ٱلْحَىُّ ٱلْقَيُّومُ ۚ لَا تَأْخُذُهُۥ سِنَةٌ وَلَا نَوْمٌ ۚ لَّهُۥ مَا فِى ٱلسَّمَٰوَٰتِ وَمَا فِى ٱلْأَرْضِ ۗ مَن ذَا ٱلَّذِى يَشْفَعُ عِندَهُۥٓ إِلَّا بِإِذْنِهِۦ ۚ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ ۖ وَلَا يُحِيطُونَ بِشَىْءٍ مِّنْ عِلْمِهِۦٓ إِلَّا بِمَا شَآءَ ۚ وَسِعَ كُرْسِيُّهُ ٱلسَّمَٰوَٰتِ وَٱلْأَرْضَ ۖ وَلَا يَـُٔودُهُۥ حِفْظُهُمَا ۚ وَهُوَ ٱلْعَلِىُّ ٱلْعَظِيمُ",
                      style: TextStyle(
                        color: Color(0xff0e1446),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: SelectableText(
                        "Allahu laa ilaaha illaa huw al-hayyul qayyuum. Laa ta’ khuzuhu sinatuw wa laa na’um, lahuu maa fisamaawaati wa maa fil-ard, man zallazi yasyfa’u ‘indahuu illaa bi iznih, ya’lamu maa baina aidiihim wa maa khalfahum, wa laa yuhiituna bisyai im min ‘ilmihii illaa bimaa syaa wasi’a kursiyyuhus samaawaati wal-ard, wa laa ya ‘uduhu hifzuhumaa wa huwal-‘aliyyul-‘aziim",
                        style: TextStyle(
                          color: Color(0xff0e1446),
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ))
            ],
          )),
    );
  }
}
