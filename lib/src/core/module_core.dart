import 'package:ex_modular/src/repositories/pessoa/pessoa_repository.dart';
import 'package:ex_modular/src/repositories/pessoa/pessoa_repository_impl.dart';
import 'package:flutter_modular/flutter_modular.dart';

//* Shared
class ModuleCore extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<PessoaRepository>((i) => PessoaRepositoryImpl(), export: true),
      ];
}
