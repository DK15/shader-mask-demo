import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
        body: Center(
            child: GridView.extent(
      maxCrossAxisExtent: 220,
      children: <Widget>[
        ShaderMaskDemo(
          blendMode: BlendMode.color,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.colorBurn,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.colorDodge,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.difference,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.exclusion,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.hue,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.softLight,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.difference,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.hardLight,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.screen,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.saturation,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.overlay,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.luminosity,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.plus,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.srcIn,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.srcATop,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.srcOver,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.srcOut,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.dstIn,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.dstOut,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.dstOver,
          imageSize: 140,
        ),
        ShaderMaskDemo(
          blendMode: BlendMode.dstATop,
          imageSize: 140,
        ),
      ],
    )));
  }
}

class ShaderMaskDemo extends StatelessWidget {
  final BlendMode blendMode;
  final double imageSize;

  const ShaderMaskDemo({Key key, this.blendMode, this.imageSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ShaderMask(
            blendMode: blendMode,
            shaderCallback: (bounds) {
              return LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.red,
                    Colors.yellow,
                    Colors.orange,
                    Colors.blue,
                  ]).createShader(bounds);
            },
            child: Container(
                width: imageSize,
                height: imageSize,
                child: Image.asset('assets/jpg.jpg', fit: BoxFit.cover))),
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            blendMode.toString(),
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ), // indicates blendmode type for every image
        )
      ],
    );
  }
}
