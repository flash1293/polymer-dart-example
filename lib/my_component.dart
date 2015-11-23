@HtmlImport('my_component.html')
library my_package.my_component;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('my-component')
class MyComponent extends PolymerElement {
  MyComponent.created() : super.created();

  @Property(observer: 'paramChanged')
  String param = null;

  @reflectable
  void paramChanged(String newParam, String oldParam) {
    print("the param changed!");
  }
}
