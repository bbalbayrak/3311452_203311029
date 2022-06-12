import 'package:flutter/material.dart';

class notifPage extends StatefulWidget {
  @override
  _notifPageState createState() => _notifPageState();
}

class _notifPageState extends State<notifPage> {
  List<String> foodList = [
    'Eurasian Journal of Veterinary Sciences Dergisinin\n2022 Yılı Haziran Sayısı 38 (2) Yayımlanmıştır.',
    'Sürekli İşçi Sözlü/Mülakat Sonuçları\n(Engelli-Eski Hükümlü)',
    'Selçuk TÖMER - Yabancı Dil Olarak Türkçe Öğretimi\nSertifika Programı',
    'Tıp Doktorluğu Alanında Denklik Sınavı Duyurusu',
    'Selçuk Üniversitesi-Eğitimciler Birliği Sendikası\n22 Nisan 2022 Tarihli\nKurum İdari Kurulu Görüşme Tutanağı',
    'DEPARCH Journal of Design,\nPlaning and Aesthetics Research Dergisi Hakkında',
    'Selçuk Üniversitesi Slogan Yarışması',
    'Güncel Hemşirelik Araştırmaları\nDergisi yeni sayısını yayınladı.',
    'Selçuk Üniversitesinden Emektarlarına Vefa',
    'Eurasian Journal of Veterinary Sciences Dergimizin\n2022 Yılı 1. Sayısı Yayımlanmıştır.',
    'Tıp Fakültesi Fizyoloji Ana Bilim Dalı\nAraştırma Görevlisi Giriş Sınavı Sonucu',
    '2022 Yılında Yemekhanelerde\nUygulanacak Yemek Ücretleri',
    'Selçuk Üniversitesi 2022-2026 Stratejik Planı',
    'Selçuk Üniversitesi Tıp Fakültesi\nTıp Doktorluğu Alanında Denklik Duyurusu'




  ];
  List<String>? foodListSearch;
  final FocusNode _textFocusNode = FocusNode();
  final TextEditingController? _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFBC8CF2),
          title: Image.asset('assets/images/campus logo.png',height: 45,),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: _textEditingController!.text.isNotEmpty &&
            foodListSearch!.isEmpty
            ? Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search_off,
                    size: 160,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'No results found,\nPlease try different keyword',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        )
            : GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 6.5,
              crossAxisSpacing: 12,
            ),
            itemCount: _textEditingController!.text.isNotEmpty
                ? foodListSearch!.length
                : foodList.length,
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 7),
                      child: const CircleAvatar(

                        backgroundColor: Colors.deepPurple,
                        child: Icon(Icons.notifications_on_rounded,color: Colors.white,size: 20,),
                      ),
                    ),
                    Text(_textEditingController!.text.isNotEmpty
                        ? foodListSearch![index]
                        : foodList[index], style: TextStyle(fontWeight: FontWeight.bold),),

                  ],
                ),
              );
            }));
  }
}