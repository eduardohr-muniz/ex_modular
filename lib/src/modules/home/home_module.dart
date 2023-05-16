import 'package:ex_modular/src/core/module_core.dart';
import 'package:ex_modular/src/modules/home/home_page.dart';

import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        //* LazySingleton (Solteiro Preguiçoso) vai inicializar na primeira vez que precisar dele V
        //* Singleton (solteiro) inicializa assim que carrega V
        //* Instance (Instancia) Ele pede uma instância a cada vez que é solicitado (Pouco utilizada "quase nunca") X
        //* Factory (Fabrica) Ele cria uma nova instância a cada vez que é solicitado -
        // Bind.lazySingleton<PessoaRepository>((i) => PessoaRepositoryImpl()),
        // Bind.lazySingleton<BuscarPessoaService>((i) => BuscarPessoaService(pessoaRepository: i())),
        // Bind.singleton<PessoaRepository>((i) => PessoaRepositoryImpl()),
        // Bind.instance<PessoaRepository>(PessoaRepositoryImpl()),
        // Bind.factory<PessoaRepository>((i) => PessoaRepositoryImpl()),
      ];

  @override
  List<Module> get imports => [
        ModuleCore(), // * Importando modulos compartilhados (Shared)
      ];

  @override
  List<ModularRoute> get routes => [ChildRoute('/', child: (context, args) => const HomePage())];
}
