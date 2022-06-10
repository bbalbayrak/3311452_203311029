import 'package:flutter/material.dart';

class GridSearchScreen extends StatefulWidget {
  @override
  _GridSearchScreenState createState() => _GridSearchScreenState();
}

class _GridSearchScreenState extends State<GridSearchScreen> {
  List<String> foodList = [
    'ACİL AFET TOPLULUĞU',
    'ACİL YARDIM AFET YÖNETİMİ TOPLULUĞU',
    'ADEM VE ALEM TOPLULUĞU',
    'AKADEMİK DÜŞÜNCE TOPLULUĞU',
    'ALTERNATİF ENERJİ KAYNAKLARI TOPLULUĞU',
    'ANADOLU KAFKAS KARTALLARI TOPLULUĞU',
    'ATATÜRKÇÜ DÜŞÜNCE TOPLULUĞU',
    'BELDE-İ MUHAYYERE GENÇLİK TOPLULUĞU',
    'BEYŞEHİR EKONOMİ TOPLULUĞU',
    'BİLİMSEL ARAŞTIRMA TOPLULUĞU',
    'BİLİNÇLİ İDEAL GENÇLİK TOPLULUĞU',
    'BİLİŞİM TEKNOLOJİLERİ TOPLULUĞU',
    'BİR ÇOCUK BİR DÜNYA TOPLULUĞU',
    'BİSİKLET TOPLULUĞU',
    'BİYOÇEŞİTLİLİK VE DOĞA TOPLULUĞU',
    'BLOCKCHAİN TOPLULUĞU',
    'BURADAYIM TOPLULUĞU',
    'BÜYÜLÜ ALEM TİYATRO TOPLULUĞU',
    'ÇARK SANAT TOPLULUĞU',
    'ÇEVRE VE İKLİM TOPLULUĞU',
    'ÇEVRE KORUMA TOPLULUĞU',
    'DAMLA TOPLULUĞU',
    'DOĞA SPORLARI TOPLULUĞU',
    'ECZACILIK ÖĞRENCİLERİ TOPLULUĞU',
    'EDEBİYAT TOPLULUĞU',
    'EĞİTİM TOPLULUĞU',
    'ELEKTRONİK SPORLAR TOPLULUĞU',
    'EL SANATLARI TOPLULUĞU',
    'ERASMUS+ÖĞRENCİ TOPLULUĞU',
    'EVRENSEL MÜZİK TOPLULUĞU',
    'FELSEFE DURAĞI TOPLULUĞU',
    'FİKİRNAME TOPLULUĞU',
    'GELECEĞİN TEKNİKERLERİ TOPLULUĞU',
    'GELENEKSEL OKÇULUK TOPLULUĞU',
    'GENÇ DİŞ HEKİMLERİ TOPLULUĞU',
    'GENÇ GÖNÜLLÜLER TOPLULUĞU',
    'GENÇ HEMŞİRELER TOPLULUĞU',
    'GENÇ KANATLAR TOPLULUĞU',
    'GENÇ KIZILAY TOPLULUĞU',
    'GENÇ KİMYAGERLER TOPLULUĞU',
    'GENÇ REHBERLER TOPLULUĞU',
    'GENÇ REKREASYONİSTLER TOPLULUĞU',
    'GENÇ TEMA TOPLULUĞU',
    'GENÇ TIBBİYELİLER TOPLULUĞU',
    'GENÇ YERYÜZÜ DOKTORLARI TOPLULUĞU',
    'GENÇ YEŞİLAY TOPLULUĞU',
    'GEZGİNLER TOPLULUĞU',
    'GİRİŞİMCİLİK VE KARİYER TOPLULUĞU',
    'GÖK-SÜ HAVACILIK TOPLULUĞU',
    'GRAFİK TASARIM TOPLULUĞU',
    'HALKÇI ATATÜRKÇÜLER TOPLULUĞU',
    'HALKLA İLİŞKİLER TOPLULUĞU',
    'HANGAR TEKNOLOJİ TOPLULUĞU',
    'HERKES İÇİN SPOR TOPLULUĞU',
    'HİTABET SANATÇILARI TOPLULUĞU',
    'HUKUK AKADEMİSİ TOPLULUĞU',
    'HUKUK VE ETİK TOPLULUĞU',
    'HUKUK VE İNSAN HAKLARI TOPLULUĞU',
    'HUKUK VE KARİYER TOPLULUĞU',
    'IVSA-KONYA TOPLULUĞU',
    'İBNİ-SİNA (AVİCENNA) BİLİM TOPLULUĞU',
    'İHYA TOPLULUĞU',
    'İKLİM ELÇİLERİ TOPLULUĞU',
    'İLETİŞİM TOPLULUĞU',
    'İLETİŞİM VE KARİYER TOPLULUĞU',
    'İNSANSIZ ARAÇLAR (SUIAT) TOPLULUĞU',
    'İSTASYON TİYATRO TOPLULUĞU',
    'İYİLİK HER ZAMAN HER YERDE TOPLULUĞU',
    'İZ BIRAKANLAR TOPLULUĞU',
    'JAPON KÜLTÜR TOPLULUĞU',
    'KAMPÜS FİLM (KAMFİ) TOPLULUĞU',
    'KRİTİK VE ANALİTİK DÜŞÜNME TOPLULUĞU',
    'KUŞ GÖZLEM TOPLULUĞU',
    'KÜLTÜR AHLAK VE MEDENİYET TOPLULUĞU',
    'MATEMATİK TOPLULUĞU',
    'MEDENİYET GENÇLİĞİ TOPLULUĞU',
    'MEDENİYET İNŞASI TOPLULUĞU',
    'MESCİD TOPLULUĞU',
    'MİLLİ VE YERLİ SANCAK TOPLULUĞU',
    'MUHASEBE, FİNANS VE DENETİM TOPLULUĞU',
    'MÜNAZARA TOPLULUĞU',
    'MÜZİK TOPLULUĞU',
    'NECİP FAZIL FİKİR AKADEMİSİ TOPLULUĞU',
    'NEVA EDEBİYAT, SANAT VE FİKİR TOPLULUĞU',
    'ODAK FOTOĞRAFÇILIK TOPLULUĞU',
    'ÖZLENEN GENÇ TOPLULUĞU',
    'PSİKOLOJİ TOPLULUĞU',
    'PUSULA SANAT VE GELİŞİM TOPLULUĞU',
    'RAVİ HADİS TOPLULUĞU',
    'ROL YAPMA VE KUTU OYUNLARI TOPLULUĞU',
    'SADE EBELER TOPLULUĞU',
    'SAĞLIK OLSUN TOPLULUĞU',
    'SAĞLIKLI YAŞAM VE BESLENME TOPLULUĞU',
    'SANAT VE SPOR TOPLULUĞU',
    'SELÇUK ENGELSİZ ÖĞRENCİ TOPLULUĞU',
    'SELÇUK IEEE TOPLULUĞU',
    'SELÇUK MODA TOPLULUĞU',
    'SEYYAR TİYATRO TOPLULUĞU',
    'SIFIR ATIK TOPLULUĞU',
    'SİVİL SAVUNMA VE İTFAİYE TOPLULUĞU',
    'SİBER GÜVENLİK TOPLULUĞU',
    'SİNEMA TOPLULUĞU',
    'SOSYOLOJİK DÜŞÜNME TOPLULUĞU',
    'TARIM TOPLULUĞU',
    'TARIM TEKNOLOJİLERİ (TARTEK) TOPLULUĞU',
    'TARİHİN BEYAZ ÖNLÜKLERİ TOPLULUĞU',
    'TASARIM (TASA) TOPLULUĞU',
    'TAŞKENT KÜLTÜR VE SANAT TOPLULUĞU',
    'TAŞUCU SPOR VE SANAT TOPLULUĞU',
    'TIBBİ İLLÜSTRASYON TOPLULUĞU',
    'TÜRK TARİHİ VE KÜLTÜRÜ TOPLULUĞU',
    'ULUSLARARASI ÖĞRENCİ TOPLULUĞU',
    'ULUSLARARASI TİCARET TOPLULUĞU',
    'ÜNİVERSİTELİ AKTİF GENÇLER TOPLULUĞU',
    'YABANCI DİLLER TOPLULUĞU',
    'YAKIN SAVUNMA TOPLULUĞU',
    'YAŞAYAN TASARIM TOPLULUĞU',
    'YENİ UFUK EĞİTİM VE KÜLTÜR TOPLULUĞU',
    'YÖNETİM BİLİŞİM SİSTEMLERİ TOPLULUĞU',
  ];
  List<String>? foodListSearch;
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
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
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xFFBC8CF2),
            title: Container(
              decoration: BoxDecoration(
                  color:  Colors.white60,
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: _textEditingController,
                focusNode: _textFocusNode,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Search..',
                    contentPadding: EdgeInsets.all(8)),
                onChanged: (value) {
                  setState(() {
                    foodListSearch = foodList
                        .where(
                            (element) => element.contains(value.toUpperCase()))
                        .toList();
                    if (_textEditingController!.text.isNotEmpty &&
                        foodListSearch!.length == 0) {
                      print('foodListSearch length ${foodListSearch!.length}');
                    }
                  });
                },
              ),
            )),
        body: _textEditingController!.text.isNotEmpty &&
            foodListSearch!.length == 0
            ? Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search_off,
                    size: 160,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'No results found,\nPlease try different keyword',
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        )
            : GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 7.5,
              crossAxisSpacing: 12,
            ),
            itemCount: _textEditingController!.text.isNotEmpty
                ? foodListSearch!.length
                : foodList.length,
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                      child: Icon(Icons.account_balance,color: Colors.white,),
                    ),
                    Text(_textEditingController!.text.isNotEmpty
                        ? foodListSearch![index]
                        : foodList[index]),
                    MaterialButton(
                      minWidth: 50,
                      child: Icon(Icons.arrow_circle_right,
                          color: Color(0xFFBC8CF2),),
                      onPressed: () {},
                    ),
                  ],
                ),
              );
            }));
  }
}