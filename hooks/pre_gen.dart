import 'package:mason/mason.dart';

void run(HookContext context) {
  final logger = context.logger;
  final state = context.vars['state'] as String;
  context.vars = {
    ...context.vars,
    'isBloc': state == 'Bloc',
    'isRiverpod': state == 'Riverpod',
    'isGetX': state == 'GetX',
  };
  final progress = logger.progress('update flutter to state $state');
  progress.complete();
}
