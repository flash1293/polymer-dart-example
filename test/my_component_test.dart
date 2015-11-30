@TestOn("browser")
import "dart:html";
import "package:test/test.dart";
import 'package:polymer/polymer.dart';

import 'package:polymer_dart_example/my_component.dart';

main() async {
  MyComponent componentUnderTest;
  
  await initPolymer();
  
  setUp(() {
    document.body.children.clear();
    componentUnderTest = new Element.tag('my-component');
    document.body.append(componentUnderTest);
  });
  
  test("my-component should be initialized correctly", () {
    Element heading = new PolymerDom(componentUnderTest.root).querySelector('h1');
    expect(heading.text, equals('This is my component'));
  });

  test("my-component should reflect param to paragraph", () {
    componentUnderTest.setAttribute("param", "abc");
    Element paragraph = new PolymerDom(componentUnderTest.root).querySelector('p');
    expect(paragraph.text, equals('abc'));
  });
}