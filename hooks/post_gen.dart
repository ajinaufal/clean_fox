import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final workingDirectory =
      "${Directory.current.path}/${context.vars['project_name']}";

  var progress = context.logger.progress('Cleaning workspace...');
  await Process.run(
    'fvm',
    ['flutter', 'clean'],
    runInShell: true,
    workingDirectory: workingDirectory,
  );
  progress.complete();

  progress = context.logger.progress('Create assets folder...');
  await Process.run(
    'mkdir',
    [
      'assets',
      'assets/audios',
      'assets/fonts',
      'assets/icons',
      'assets/images',
      'assets/images/1.5x',
      'assets/images/2.0x',
      'assets/images/3.0x',
      'assets/images/4.0x',
      'assets/lotties',
      'assets/videos',
    ],
    runInShell: true,
    workingDirectory: workingDirectory,
  );
  progress.complete();

  progress = context.logger.progress('Executing... pubspec update');
  await Process.run(
    'fvm',
    [
      'flutter',
      'pub',
      'add',
      'dartz',
      'dio',
      'equatable',
      'flutter_screenutil',
      'freezed',
      'freezed_annotation',
      'google_fonts',
      'isar',
      'isar_flutter_libs',
      'internet_connection_checker',
      'json_annotation',
      'permission_handler',
      'intl:any',
      'flutter_screenutil',
      'cupertino_icons'
    ],
    runInShell: true,
    workingDirectory: workingDirectory,
  );

  if (context.vars['isBloc']) {
    await Process.run(
      'fvm',
      ['flutter', 'pub', 'add', 'flutter_bloc', 'get_it', 'go_router'],
      runInShell: true,
      workingDirectory: workingDirectory,
    );
  } else if (context.vars['isGetX']) {
    await Process.run(
      'fvm',
      ['flutter', 'pub', 'add', 'get'],
      runInShell: true,
      workingDirectory: workingDirectory,
    );
  } else if (context.vars['isRiverpod']) {
    await Process.run(
      'fvm',
      ['flutter', 'pub', 'add', 'flutter_riverpod', 'go_router'],
      runInShell: true,
      workingDirectory: workingDirectory,
    );
  }

  await Process.run(
    'fvm',
    [
      'flutter',
      'pub',
      'add',
      'flutter_localizations',
      '--sdk=flutter',
    ],
    runInShell: true,
    workingDirectory: workingDirectory,
  );

  await Process.run(
    'fvm',
    [
      'flutter',
      'pub',
      'add',
      '-d',
      'isar_generator',
      'build_runner',
      'flutter_lints',
      'json_serializable',
      'flutter_lints',
    ],
    runInShell: true,
    workingDirectory: workingDirectory,
  );
  progress.complete();

  progress = context.logger.progress('Updating... pod repo');
  await Process.run(
    'pod',
    ['repo', 'update'],
    runInShell: true,
    workingDirectory: workingDirectory,
  );
  progress.complete();

  progress = context.logger.progress('Generate model...');
  await Process.run(
    'fvm',
    ['flutter', 'pub', 'run', 'build_runner', 'build', '-d'],
    runInShell: true,
    workingDirectory: workingDirectory,
  );
  progress.complete();

  progress = context.logger.progress('Generate l10n...');
  await Process.run(
    'fvm',
    ['flutter', 'gen-l10n'],
    runInShell: true,
    workingDirectory: workingDirectory,
  );
  progress.complete();

  progress = context.logger.progress('Updating... files structure');
  await Process.run(
    'dart',
    ['format', '.'],
    runInShell: true,
    workingDirectory: workingDirectory,
  );
  progress.complete();
}
