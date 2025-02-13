import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/util.dart';

class NotFoundBackgroundVideo extends StatefulWidget {
  const NotFoundBackgroundVideo({super.key});

  @override
  State<NotFoundBackgroundVideo> createState() =>
      _NotFoundBackgroundVideoState();
}

class _NotFoundBackgroundVideoState extends State<NotFoundBackgroundVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/404.mp4")
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.setVolume(0);
        _controller.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Container(color: Colors.black);
    }
    return SizedBox(
      width: double.infinity,
      height: Utils.mediaHeight(context),
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: _controller.value.size.width,
          height: _controller.value.size.height,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }
}
