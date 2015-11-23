@TestOn("browser")
import "dart:html";
import "package:test/test.dart";
import 'package:polymer/polymer.dart';

import 'package:polymer_dart_example/my_component.dart';

main() async {
  MyComponent componentUnderTest;
  
  await initPolymer();
  
  setUp(() {
    componentUnderTest = document.body.querySelector("#abc");
  });
  
  test("my-component should be initialized correctly", () {
    Element heading = new PolymerDom(componentUnderTest.root).querySelector('h1');
    expect(heading.text, equals('This is my component'));
  });
}