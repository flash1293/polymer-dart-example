@TestOn("browser")
import "dart:html";
import "dart:async";
import "package:test/test.dart";
import 'package:polymer/polymer.dart';

import '../web/my_component.dart';

main() async {
  MyComponent componentUnderTest;
  
  await initPolymer();
  
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