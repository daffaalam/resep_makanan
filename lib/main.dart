import 'package:flutter/material.dart';
import 'package:resep_makanan/view/detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  List<String> namaMakanan = [
    'Steak Tempe Jamur Krispi',
    'Es Cocopandan Selasih',
    'Kare Ayam Krispi',
    'Kerang Bambu Pedas',
    'Cumi Bumbu Kari',
    'Omelet Ayam',
    'Seblak Basah Ceker Ayam Bakso',
    'Cilok Crispy',
    'Bakwan Mie Wortel',
    'Tahu Bumbu Cabe Hijau'
  ];

  List<String> gambarMakanan = [
    'https://www.kreasisasa.com/upload/recipe/81ca601c819f5e7eb761e6c9a9893a68.jpg',
    'https://www.kreasisasa.com/upload/recipe/8ccc0bfffe4f1240ce6a931239ac0150.jpg',
    'https://www.kreasisasa.com/upload/recipe/4be37b71ae07902a8f4fb325654d316f.jpg',
    'https://www.kreasisasa.com/upload/recipe/Kerang%20Bambu%20Pedas%20Web.jpg',
    'https://www.kreasisasa.com/upload/recipe/cc93880a8e6f70957e784109a8f17280.jpg',
    'https://www.kreasisasa.com/upload/recipe/87ee80c195ba25257c4b7196dd2103a6.jpg',
    'https://www.kreasisasa.com/upload/recipe/9b1f5a5d373cafd4da5787e841a5f1d7.jpg',
    'https://www.kreasisasa.com/upload/recipe/Cilok%20Crispy%20Web.jpg',
    'https://www.kreasisasa.com/upload/recipe/99eb212bffbef80ea0be617317abc5d7.jpg',
    'https://www.kreasisasa.com/upload/recipe/1759ac82fc6f3989a3352f86161979e1.jpg'
  ];

  List<String> bahanMakanan = [
    '• 200 gr tempe, haluskan\n• 100 gr jamur tiram, sobek memanjang\n• 1 sachet LaRasa Kaldu Pelezat Serbaguna Rasa Sapi\nPelapis :\n• 1 bungkus SASA Tepung Bumbu Serbaguna Original 80 gr\n• 6 sdm air dingin\n• minyak goreng, untuk menggoreng',
    '• 1 bungkus agar-agar\n• 80 gr SASA Santan Bubuk\n• 800 ml air\n• 80 gr gula pasir\nBahan isi :\n• 200 gr nata de coco\n• 100 gr kelapa serut\n• 100 gr nangka, potong panjang\n• 1 sdm biji selasih\n• 100 gr SASA Santan Bubuk\n• 100 ml sirup cocopandan\n• 500 gr es serut',
    '• 450 gr dada ayam fillet\n• 1 bungkus SASA Tepung Bumbu Ala Kentucky 225 gr\n• 10 sdm air dingin\n• 250 ml minyak goreng\nBahan Kari :\n• 1 sdm margarin\n• 1 buah bawang bombay, iris\n• 2 blok kare jepang\n• 1 buah	wortel\n• 1 buah	kentang ukuran besar\n• 800 ml	air\nPelengkap :\n• 500 gr	nasi putih',
    '• 4-5 sdm SASA Sambal Terasi\n• 600 g kerang bambu\n• 2 cm jahe, memarkan\n• 2 ruas lengkuas, memarkan\n• 5 btg sereh, ambil putihnya lalu memarkan\n• 2 ikat daun kemangi, ambil daunnya\n• air untuk merebus\n• air es, garam, minyak\nBumbu halus :\n• 5 btr kemiri\n• 2 cm jahe\n• 2 sdt ketumbar',
    '• 500 gr cumi\n• 1 sdt garam\n• 500 ml air\n• 100 gr SASA Santan Bubuk\n• ½ sdt SASA Penyedap Rasa\nBumbu Kari :\n• 6 bh cabe merah besar\n• 5 siung bawang putih\n• 8 butir bawang merah\n• 1 ruas jari kunyit\n• 1 ruas jari jahe\n• ½ sdt ketumbar\n• ¼ sdt merica\n• ¼ sdt jinten\n• ½ sdt bubuk kari',
    '• 4 butir telur\n• 20 gr SASA Santan Bubuk\n• 50 ml air\n• 60 gr paprika merah, kuning dan hijau\n• garam dan merica bubuk secukupnya\nCampuran Ayam :\n• 3 sdm minyak goreng\n• 300 gr fillet ayam, potong dadu\n• 50 gr SASA Santan Bubuk\n• 300 ml air\n• 3 lembar daun jeruk\n• 3 lembar daun salam\n• 2 cm lengkuas\n• 2 batang sereh, memarkan\nBumbu Halus :\n• 7 butir bawang merah\n• 5 siung bawang putih\n• 1 sdt ketumbar\n• ¼ sdt jinten\n• ¼ buah pala\n• 1 sdt merica butiran\n• 5 butir kemiri',
    '• 20 buah ceker ayam, rebus hingga matang\n• 200 gr kerupuk udang, rebus setengah matang\n• 10 buah bakso sapi, iris tipis\n• 500 ml air\n• 1 batang daun bawang, iris tipis\n• 1 bungkus SASA Penyedap Rasa\n• 3 sdm SASA Saus Tomat\n• 1 ½ sdm	gula merah, sisir halus\n• 1 sdm kecap manis\n• garam dan merica bubuk secukupnya\nBumbu halus :\n• 8 buah cabai rawit\n• 5 siung bawang putih\n• 5 butir bawang merah\n• 1 sdm minyak goreng',
    '• SASA Sambal Ekstra Pedas\n• 150 g tapioka\n• 1 bks LaRasa Bumbu Nasi Goreng Barbeque\n• 150 g terigu\n• 4 siung bawang putih\n• 1 btg daun bawang, iris halus\n• 200 ml air\n• 1 sdm lada putih\n• garam & gula secukupnya\n• sosis & cheese, potong dadu kecil\nUntuk membalut:\n• 1 bks sasa tepung bumbu original (80 gr)\n• 6 sdm air es',
    '• 1 bungkus SASA Tepung Bakwan Spesial 100 gr\n• 120 ml air\n• 1 keping mie instan, rebus setengah matang\n• 2 buah	wortel, serut\n• 250 ml	minyak goreng',
    '• 400 gr tahu putih, potong dadu\n• minyak goreng secukupnya\n• 50 gr SASA Santan Bubuk\n• 100 ml air\n• 2 cm lengkuas, memarkan\n• 2 lembar daun salam\n• 2 lembar daun jeruk\n• garam dan gula pasir secukupnya\nBumbu Halus :\n• 150 gr cabai hijau\n• 5 butir bawang merah\n• 3 siung bawang putih'
  ];

  // source : www.kreasisasa.com

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Bahan Makanan',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Bahan Makanan'),
        ),
        body: getListView(),
      ),
    );
  }

  ListView getListView() =>
      ListView.builder(
        itemCount: namaMakanan.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
                gambarMakanan[index],
                alignment: Alignment.center,
                height: 50,
                width: 50),
            title: Text(namaMakanan[index]),

            /**
             * Ketika pengguna melakukan tap pada ListTile, pindah ke DetailScreen.
             * Selain membuat DetailScreen, data juga dikirimkan.
             */

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailScreen(
                        nama: namaMakanan[index],
                        gambar: gambarMakanan[index],
                        bahan: bahanMakanan[index],
                      ),
                ),
              );
            },
          );
        },
      );
}
