import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';
import 'package:midnight_suspense/src/features/common_widgets/loading.dart';
import 'package:midnight_suspense/src/features/player/view/item_card_big.dart';
import 'package:midnight_suspense/src/features/videos/bloc/videos_bloc.dart';
import 'package:midnight_suspense/src/shared_bloc/nav_scroll_controller/nav_scroll_controller_cubit.dart';

class VideosWidget extends StatelessWidget {
  const VideosWidget({
    super.key,
    required this.categoryId,
    required this.categoryType,
  });

  final CategoryType categoryType;
  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideosBloc, VideosState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox(height: 0, width: 0),
          loading: (_) => loadingWidget(),
          loaded: (loadedState) => ListView.builder(
            controller: context.watch<NavScrollControllerCubit>().state,
            shrinkWrap: true,
            itemCount: loadedState.videos.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 15.0, left: 20, right: 20),
              child: ItemCardBig(
                key: Key(index.toString()),
                video: loadedState.videos[index],
              ),
            ),
          ),
          error: (errorState) => Text(errorState.message.toString()),
        );
      },
    );
  }
}
