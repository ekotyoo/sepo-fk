import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  final aboutContent =
      '''Kami dengan bangga mempersembahkan aplikasi SEPO kepada Anda. Aplikasi ini dirancang khusus untuk membantu meningkatkan pemahaman Anda tentang osteoarthritis lutut/nyeri lutut. 
Dengan menggunakan aplikasi ini, Anda akan mengetahui tentang penyebab, pencegahan, dan pengobatan nyeri lutut. Anda juga akan mendapatkan saran gaya hidup, pola makan, dan latihan fisik untuk membantu meringankan nyeri lutut anda.

Terima kasih telah bergabung dengan SELF EDUCATION PROGRAMS OF OSTEOARTHRITIS (SEPO).''';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Tentang',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              Image.asset(
                'assets/images/logo_image_and_text.png',
                height: 150,
              ),
              const SizedBox(height: 32),
              Text('SEPO',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text(aboutContent, textAlign: TextAlign.justify,),
              const SizedBox(height: 32),
              Text(
                'Kontak Kami',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('Email: appsepo@gmail.com'),
            ],
          ),
        ),
      ),
    );
  }
}
