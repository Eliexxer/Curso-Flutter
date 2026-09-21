import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik_app/config/helpers/human_formats.dart';
import 'package:toktik_app/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  const VideoButtons({super.key, required this.videoPost});

  final VideoPost videoPost;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
            iconData: Icons.favorite_border_rounded,
            value: videoPost.likes,
            iconColor: Colors.red),
        const SizedBox(
          height: 20,
        ),
        _CustomIconButton(
            iconData: Icons.remove_red_eye_rounded, value: videoPost.views),
        const SizedBox(
          height: 20,
        ),
        SpinPerfect(
            infinite: true,
            duration: const Duration(seconds: 5),
            child: const _CustomIconButton(
                iconData: Icons.play_circle_fill_outlined, value: 0))
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  const _CustomIconButton({
    super.key,
    required this.iconData,
    iconColor,
    required this.value,
  }) : color = iconColor ?? Colors.white;

  final IconData iconData;
  final Color color;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {}, icon: Icon(iconData, color: color, size: 20)),
        if (value > 0) Text(HumanFormats.humanReadableNumber(value.toDouble())),
      ],
    );
  }
}
