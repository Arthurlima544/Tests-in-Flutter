import 'package:flutter/cupertino.dart';
import 'package:testinflutter/Controllers/api/fetch.dart';
import 'package:testinflutter/Models/item.dart';
import 'package:testinflutter/Models/item_page.dart';

class ListItemsController extends ChangeNotifier {
  /* total de itens que seram armazenados em cache */
  static const maxCacheLenght = 100;
  /* Map paginas com index */
  final Map<int, ItemPage> _pages = {};
  /* index de paginas carregadas */
  final Set<int> _pagesBeingFetched = {};
  /* quantidade de paginas */
  int? pagesLenght;
  bool _isDisposed = false;
  /* liberar o ChangeNotifier */

  @override
  void dispose() {
    _isDisposed = true;
    super.dispose();
  }

  Future<void> _fetchPage(int startingIndex) async {
    // Verificar se a pagina já foi carregada
    if (_pagesBeingFetched.contains(startingIndex)) {
      return;
    }
    /* não foi carregada a page vamos carrega -la*/
    _pagesBeingFetched.add(startingIndex);
    final page = await fetchPage(startingIndex);
    _pagesBeingFetched.remove(startingIndex);

    // Alterar  o valor total de paginas, caso não tiver outra página para ser carregada
    if (!page.hasNext) {
      pagesLenght = page.items.length + startingIndex;
    }
    // Salvar Novas Páginas
    _pages[startingIndex] = page;

    //limpar cache
    _cleanCache(startingIndex);

    //Notificar os ouvintes
    if (!_isDisposed) {
      notifyListeners();
    }
    //
  }

  Item getByIndex(int index) {
    // Precisamos de um método que atualize o inicio da lista para ser carregada
    var startingIndex = (index ~/ itemsPerPage) *
        itemsPerPage; /*  sempre multiplo de itemsPerPage */

    // Precisamos verificar se já está carregada na memoria, então retorna o item
    if (_pages.containsKey(startingIndex)) {
      var item = _pages[startingIndex]!.items[index - startingIndex];
      return item;
    }
    /* se não estiver carregada, carregue e retorne um item pre definido*/
    _fetchPage(startingIndex);
    return Item.loading();
  }

  void _cleanCache(int currentStartingIndex) {
    //  Permite que eu libere as páginas armazenadas que estão muito distantes do maxCacheLenght
    final keysToRemove = <int>{};
    // obtendo keys das paginas que estão longe de maxCacheLenght
    for (final key in _pages.keys) {
      if ((key - currentStartingIndex).abs() > maxCacheLenght) {
        keysToRemove.add(key);
      }
    }
    // removendo paginas
    for (final key in keysToRemove) {
      _pages.remove(key);
    }
  }
}
