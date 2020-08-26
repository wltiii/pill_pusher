import 'dart:io';

String fixture(String name) => Directory.current.path.endsWith('/test')
    ? File('fixtures/$name').readAsStringSync()
    : File('test/fixtures/$name').readAsStringSync();
