import 'package:image_picker/image_picker.dart';

class AddCustomState {
  String fullName;
  XFile? image;

  AddCustomState({
    required this.fullName,
    this.image,
  });

  AddCustomState copyWith({
    String? fullName,
    XFile? image,
  }) =>
      AddCustomState(
        fullName: fullName ?? this.fullName,
        image: image ?? this.image,
      );
}
