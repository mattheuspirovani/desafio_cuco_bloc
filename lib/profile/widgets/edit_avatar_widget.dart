import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EditAvatarWidget extends StatelessWidget {
  final String avatar;

  const EditAvatarWidget(this.avatar, {Key? key}) : super(key: key);

  _pickImage() {
    //IMPLEMENTAR SELEÇÃO DE IMAGEM
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _pickImage(),
      child: Stack(
        children: [
          CircleAvatar(
            radius: 72,
            backgroundColor: Theme.of(context).colorScheme.primary,
            backgroundImage: CachedNetworkImageProvider(avatar),
          ),
          Positioned(
              bottom: 0,
              right: 16,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  Icons.photo_camera_outlined,
                  color: Theme.of(context).colorScheme.onPrimary,
                  size: 24,
                ),
              ))
        ],
      ),
    );
  }
}
