
import 'package:astro_app/model/search_model.dart';
import 'package:astro_app/network/search_repo.dart';
import 'package:astro_app/server/api_client.dart';
import 'package:astro_app/utils/packag.dart';

class SearchController extends GetxController
    with StateMixin<List<SearchModel>> {

  var newsList = List<SearchModel>.empty(growable: true).obs;
  RxBool isLoading = true.obs;
  TextEditingController value1 = TextEditingController();
  RxBool isPause = false.obs;
  ScrollController scrollController = ScrollController();
  
  callSearchApi() {
    ApiClient client = ApiClient();
    SearchRepository repository = SearchRepository(client: client.init());

    try {
      repository.getSearchResult(value: value1.text).then((value) {
        change(value, status: RxStatus.success());
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      });
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    callSearchApi();
    super.onInit();
  }
}