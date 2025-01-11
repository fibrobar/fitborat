import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BenchpressScreen extends StatefulWidget {
  const BenchpressScreen({Key? key}) : super(key: key);

  @override
  _BenchpressScreenState createState() => _BenchpressScreenState();
}

class _BenchpressScreenState extends State<BenchpressScreen> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/musclebuilding/benchpress.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.setLooping(true);
        _controller.setVolume(1.0);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bench Press'),
        backgroundColor: Colors.teal[800],
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    _isPlaying ? Icons.pause : Icons.play_arrow,
                    size: 36,
                  ),
                  onPressed: () {
                    setState(() {
                      if (_controller.value.isPlaying) {
                        _controller.pause();
                      } else {
                        _controller.play();
                      }
                      _isPlaying = _controller.value.isPlaying;
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.replay, size: 36),
                  onPressed: () {
                    _controller.seekTo(Duration.zero);
                    if (!_controller.value.isPlaying) {
                      _controller.play();
                    }
                    setState(() {
                      _isPlaying = true;
                    });
                  },
                ),
              ],
            ),
          ],
        )
            : const CircularProgressIndicator(),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}