// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// class Exercise1 extends StatefulWidget {
//   const Exercise1({super.key});
//
//   @override
//   _Exercise1State createState() => _Exercise1State();
// }
//
// class _Exercise1State extends State<Exercise1> {
//   late VideoPlayerController _controller;
//   bool _isInitialized = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(
//       'https://www.example.com/video.mp4', // Replace with your video link
//     )
//       ..initialize().then((_) {
//         setState(() {
//           _isInitialized = true;
//         });
//         _controller.play(); // Auto-play video on initialization
//       });
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Exercise 1'),
//       ),
//       body: Center(
//         child: _isInitialized
//             ? AspectRatio(
//           aspectRatio: _controller.value.aspectRatio,
//           child: VideoPlayer(_controller),
//         )
//             : const CircularProgressIndicator(), // Show a loading indicator while initializing
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             if (_controller.value.isPlaying) {
//               _controller.pause();
//             } else {
//               _controller.play();
//             }
//           });
//         },
//         child: Icon(
//           _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//         ),
//       ),
//     );
//   }
// }
//
//
