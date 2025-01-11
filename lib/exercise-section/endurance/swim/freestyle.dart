import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FreestyleScreen extends StatefulWidget {
  const FreestyleScreen({super.key});

  @override
  _FreestyleScreenState createState() => _FreestyleScreenState();
}

class _FreestyleScreenState extends State<FreestyleScreen> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/endurance/swim/freestyle.mp4')
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
        title: const Text('Freestyle'),
        backgroundColor: Colors.teal[800],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: _controller.value.isInitialized
              ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      _isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 30,
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
                    icon: const Icon(Icons.replay, size: 30),
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
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}