import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/features/home/home_services/home_services.dart';

import '../../../data/graphql/graphql.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeServices _homeServices;
  ScrollController? feedScrollController;
  HomeCubit(this._homeServices) : super(HomeState.initial()) {
    init();
  }

  init() {
    feedScrollController = ScrollController();
    fetchFeeds();
  }

  fetchFeeds() async {
    emit(state.copyWith(isLoading: true));
    await _homeServices.fetchFeedPost().then((value) {
      emit(state.copyWith(
        isLoading: false,
        posts: value,
      ));
    });
  }

  scrollToTop() {
    if (feedScrollController?.hasClients ?? false) {
      feedScrollController?.animateTo(0,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  refreshFeed() {
    print("Refress feed");
    scrollToTop();
    fetchFeeds();
  }
}
