import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/cell_part.dart';
import 'package:couldai_user_app/screens/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CellPart> _cellParts = [
    CellPart(
      name: 'Membran Sel',
      description: 'Berfungsi sebagai penghalang selektif yang mengontrol lalu lintas zat masuk dan keluar sel. Ini melindungi integritas interior sel.',
      imagePath: 'assets/images/cell_membrane.png',
    ),
    CellPart(
      name: 'Nukleus (Inti Sel)',
      description: 'Pusat kendali sel. Ini berisi materi genetik (DNA) sel dan mengontrol pertumbuhan, metabolisme, dan reproduksi sel.',
      imagePath: 'assets/images/nucleus.png',
    ),
    CellPart(
      name: 'Sitoplasma',
      description: 'Zat seperti jeli yang mengisi sel dan mengelilingi organel. Di sinilah sebagian besar reaksi metabolisme sel terjadi.',
      imagePath: 'assets/images/cytoplasm.png',
    ),
    CellPart(
      name: 'Mitokondria',
      description: 'Pembangkit tenaga sel. Mereka menghasilkan sebagian besar pasokan adenosin trifosfat (ATP) sel, yang digunakan sebagai sumber energi kimia.',
      imagePath: 'assets/images/mitochondria.png',
    ),
    CellPart(
      name: 'Ribosom',
      description: 'Bertanggung jawab untuk sintesis protein. Mereka menerjemahkan informasi genetik dari nukleus menjadi protein fungsional.',
      imagePath: 'assets/images/ribosomes.png',
    ),
    CellPart(
      name: 'Retikulum Endoplasma',
      description: 'Jaringan membran yang terlibat dalam sintesis protein dan lipid. Ada dua jenis: RE kasar (dengan ribosom) dan RE halus.',
      imagePath: 'assets/images/endoplasmic_reticulum.png',
    ),
    CellPart(
      name: 'Aparatus Golgi',
      description: 'Memodifikasi, menyortir, dan mengemas protein dan lipid untuk sekresi atau pengiriman ke organel lain.',
      imagePath: 'assets/images/golgi_apparatus.png',
    ),
    CellPart(
      name: 'Lisosom',
      description: 'Pusat daur ulang sel. Mereka mengandung enzim pencernaan yang memecah limbah dan puing-puing seluler.',
      imagePath: 'assets/images/lysosome.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bagian-Bagian Sel'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: _cellParts.length,
        itemBuilder: (context, index) {
          final cellPart = _cellParts[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(
                cellPart.imagePath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(cellPart.name),
              subtitle: Text(
                cellPart.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(cellPart: cellPart),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
