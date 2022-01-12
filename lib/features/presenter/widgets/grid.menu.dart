import 'package:flutter/material.dart';
import 'package:karu/features/presenter/widgets/buttons/btn.menu.grid.dart';

class GridMenu extends StatelessWidget {
  const GridMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        primary: false,
        padding: const EdgeInsets.all(2),
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        children: const <Widget>[
          MenuGridButton(label: 'Clientes', icon: Icons.add),
          MenuGridButton(label: 'Fornecedores', icon: Icons.add),
          MenuGridButton(label: 'Produtos', icon: Icons.add),
          MenuGridButton(label: 'Categorias de produtos', icon: Icons.add),
        ]);
  }
}
