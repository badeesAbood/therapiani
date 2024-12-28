import 'package:therapiani/app/entry.dart';
import 'package:therapiani/bootstrap.dart';
import 'package:therapiani/di.dart';

void main() {
  configureDependencies(Environment.test) ;

  bootstrap(() =>  Entry());
}
