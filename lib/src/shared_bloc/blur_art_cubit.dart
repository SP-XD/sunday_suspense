import 'package:flutter_bloc/flutter_bloc.dart';

class BlurArtCubit extends Cubit<BlurArtState> {
  BlurArtCubit() : super(BlurArtState(imageUrl: "", videoId: ""));

  void setBlurArt({required String imageUrl, required String videoId}) {
    emit(BlurArtState(imageUrl: imageUrl, videoId: videoId));
  }

  void resetBlurArt() {
    emit(BlurArtState(imageUrl: "", videoId: ""));
  }
}

class BlurArtState {
  final String imageUrl;
  final String videoId;

  BlurArtState({required this.imageUrl, required this.videoId});
}

// repaintboundary