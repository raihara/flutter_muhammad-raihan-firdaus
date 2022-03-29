import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Gambar Mode Grid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('GridView Image Assets')),
      ),
      body: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          GestureDetector(
          child: Hero(
            tag: 'Image Hero Adidas',
            child: Image.asset(
              'assets/adidas.jpg',
              )),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return DetailScreen();
            }));
          },
        ),
        GestureDetector(
          child: Hero(
            tag: 'Image Hero Flutter Logo',
            child: Image.asset(
              'assets/flutter_logo.jpg',
              )),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return FlutterLogo();
            }));
          },
        ),
        GestureDetector(
          child: Hero(
            tag: 'Image Hero Univ.Pancasila',
            child: Image.asset(
              'assets/univ.pancasila.jpg',
              )),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return UnivPancasila();
            }));
          },
        ),
        GestureDetector(
          child: Hero(
            tag: 'Image Hero Logo Halal',
            child: Image.asset(
              'assets/logo_halal.jpg',
              )),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return LogoHalalIndonesia();
            }));
          },
        ),
        ],
      ),
    );
  }
}

class DetailScreen extends StatefulWidget {
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'Image Hero Adidas',
            child: Image(image: AssetImage('assets/adidas.jpg')),
            // child: Image.asset(
            //   'assets/adidas.jpg',
            // ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
class FlutterLogo extends StatefulWidget {
  const FlutterLogo({ Key? key }) : super(key: key);

  @override
  State<FlutterLogo> createState() => _FlutterLogoState();
}

class _FlutterLogoState extends State<FlutterLogo> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'Image Hero Flutter Logo',
            child: Image(image: AssetImage('assets/flutter_logo.jpg')),
            // child: Image.asset(
            //   'assets/adidas.jpg',
            // ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
class UnivPancasila extends StatefulWidget {
  const UnivPancasila({ Key? key }) : super(key: key);

  @override
  State<UnivPancasila> createState() => _UnivPancasilaState();
}

class _UnivPancasilaState extends State<UnivPancasila> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'Image Hero Univ.Pancasila',
            child: Image(image: AssetImage('assets/univ.pancasila.jpg')),
            // child: Image.asset(
            //   'assets/adidas.jpg',
            // ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
class LogoHalalIndonesia extends StatefulWidget {
  const LogoHalalIndonesia({ Key? key }) : super(key: key);

  @override
  State<LogoHalalIndonesia> createState() => _LogoHalalIndonesiaState();
}

class _LogoHalalIndonesiaState extends State<LogoHalalIndonesia> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'Image Hero Logo Halal Indonesia',
            child: Image(image: AssetImage('assets/logo_halal.jpg')),
            // child: Image.asset(
            //   'assets/adidas.jpg',
            // ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}