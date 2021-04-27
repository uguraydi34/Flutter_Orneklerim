import 'package:flutter/material.dart';
import 'core/imagemanager.dart';

class HomeViewStateFull extends StatefulWidget {
  @override
  _HomeViewStateFullState createState() => _HomeViewStateFullState();
}

class _HomeViewStateFullState extends State<HomeViewStateFull> {
  bool _yuklendimi = true;
  final ImageManager imageManager = ImageManager();
  @override
  void initState() {
    // İlk Çalıştığında çalışır.
    super.initState();
    yuklemeyibekle(); //yüklemeyi beklet veriler gelicek
  }

  Future<void> yuklemeyibekle() async {
    await Future.delayed(Duration(seconds: 3));
    //3 saniye bekle
    setState(() {
      _yuklendimi = false;
    });
    //ekranı yeniden çiz setstate ile
  }

  @override
  void dispose() {
    // uygulama kapandığında çalışır.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _yuklendimi ? CircularProgressIndicator() : FlutterLogo(),
          AnimatedOpacity(
            opacity: _yuklendimi ? 0 : 1,
            duration: Duration(seconds: 1),
            child: Image.network(imageManager.randomImage),
          ),
        ],
      ),
    );
  }
}
