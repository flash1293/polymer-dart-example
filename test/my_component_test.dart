@TestOn("browser")
import "dart:html";
import "dart:async";
import "package:test/test.dart";
import 'package:polymer/polymer.dart';

import '../web/my_component.dart';

void main() {
  MyComponent componentUnderTest;
  
  setUpAll(() {
    //wait for polymer to start up
    return new Future.delayed(const Duration(seconds: 4), () => null);
    //return initPolymer();
  });
  
  setUp(() {
    //document.body.children.clear();
    //componentUnderTest = new Element.tag('my-component');
    //document.body.append(componentUnderTest);
    componentUnderTest = document.body.querySelector("#abc");
  });
  
  test("my-component should be initialized correctly", () {
    Element heading = componentUnderTest.shadowRoot.querySelector('h1');
    expect(heading.text, equals('This is my component'));
  });
}