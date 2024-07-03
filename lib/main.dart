import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
    @override
      Widget build(BuildContext context) {
          return MaterialApp(
                home: HomePage(),
                    );
                      }
                      }

                      class HomePage extends StatefulWidget {
                        @override
                          _HomePageState createState() => _HomePageState();
                          }

                          class _HomePageState extends State<HomePage> {
                            AudioPlayer audioPlayer = AudioPlayer();
                              bool isPlaying = false;

                                void _togglePlayPause() {
                                    if (isPlaying) {
                                          audioPlayer.pause();
                                              } else {
                                                    audioPlayer.play('https://www.sample-videos.com/audio/mp3/crowd-cheering.mp3'); // Replace with your ASMR file URL
                                                        }
                                                            setState(() {
                                                                  isPlaying = !isPlaying;
                                                                      });
                                                                        }

                                                                          @override
                                                                            Widget build(BuildContext context) {
                                                                                return Scaffold(
                                                                                      appBar: AppBar(title: Text('ASMR App')),
                                                                                            body: Center(
                                                                                                    child: IconButton(
                                                                                                              icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                                                                                                                        onPressed: _togglePlayPause,
                                                                                                                                  iconSize: 64.0,
                                                                                                                                          ),
                                                                                                                                                ),
                                                                                                                                                    );
                                                                                                                                                      }
                                                                                                                                                      }