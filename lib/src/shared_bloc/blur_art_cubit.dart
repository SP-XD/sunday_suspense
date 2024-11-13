import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_suspense/src/features/common_widgets/blur_art.dart';

class BlurArtCubit extends Cubit<BlurArtWidget> {
  BlurArtCubit()
      : super(BlurArtWidget(
          imageUrl: "",
        ));

  String get imageUrl => state.imageUrl;

  void setBlurArt(String imageUrl) {
    emit(BlurArtWidget(imageUrl: imageUrl));
  }

  void resetBlurArt() {
    emit(BlurArtWidget(imageUrl: ""));
  }
}
