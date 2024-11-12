// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// class VideoPlayer extends StatefulWidget {
//   const VideoPlayer(VideoPlayerController controller, {Key? key}) : super(key: key);
//   @override
//   State<VideoPlayer> createState() => _VideoPlayerState();
//
//
// }
//
// class _VideoPlayerState  extends State<VideoPlayer> {
//   late VideoPlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.asset('assets/video/abs.mp4')
//
//       ..initialize().then((_) {
//         setState(() {
//           _controller.play();
//           setState(() {
//
//           });
//         });
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Exercise Video'),
//       ),
//       body: Center(
//         child: _controller.value.isInitialized
//             ? AspectRatio(
//           aspectRatio: _controller.value.aspectRatio,
//           child: VideoPlayer(_controller),
//         )
//             : const CircularProgressIndicator(),
//
//       ),
//     );
//
//   }
// }
//
//
