import 'package:args/args.dart';

ArgResults argResults;

void main(List<String> arguments) {

  final parser = new ArgParser();

  parser.addOption('mode');

  parser.addFlag('verbose', abbr: 's');
  parser.addFlag('line-number', negatable: false, abbr: 'n');

  argResults = parser.parse(arguments);
  List<String> paths = argResults.rest;

  print(paths);
  print(argResults['verbose']);
  print(argResults['mode']);

//  dart bin/main.dart --verbose aaa
//  dart bin/main.dart -s aaa
//  dart bin/main.dart --mode sss
}