import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 300),
              _TestBox(
                child: Container(width: 200, height: 200, color: Colors.red),
              ),
              SizedBox(height: 800),
            ],
          ),
        ));
  }
}

@immutable
class _TestBox extends SingleChildRenderObjectWidget {
  const _TestBox({Widget? child}) : super(child: child);

  @override
  _TestFilter createRenderObject(BuildContext context) {
    return _TestFilter();
  }

  @override
  void updateRenderObject(BuildContext context, _TestFilter filter) {
    filter.markNeedsPaint();
  }
}

class _TestFilter extends RenderProxyBox {
  @override
  ShaderMaskLayer? get layer => super.layer as ShaderMaskLayer?;

  @override
  bool get alwaysNeedsCompositing => child != null;

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child != null) {
      assert(needsCompositing);

      const color = Colors.black;
      layer ??= ShaderMaskLayer();
      layer!
        ..shader = LinearGradient(
          colors: [color, color],
        ).createShader(Rect.fromLTWH(0, 0, 1, 1))
        ..maskRect = offset & size
        // The following has no problem.
        // ..maskRect = (offset & size).inflate(1)
        ..blendMode = BlendMode.srcIn;
      context.pushLayer(layer!, super.paint, offset);
    } else {
      layer = null;
    }
  }
}
