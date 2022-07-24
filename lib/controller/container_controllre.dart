// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/controller/controller_provider.dart';

class ContainerController extends Controller {
  double left = 40;

// ====Start Chat====
  Color? textChat;
  changeLeftChat() {
    left = 40;
    textChat = Colors.black;
    textPeople = Colors.transparent;
    textStories = Colors.transparent;
    notifyListeners();
  }

// ====End Chat====
// ====Start People====
  Color textPeople =Colors.transparent;
  changeLeftPeople() {
    left = 145;
    textPeople = Colors.black;
    textChat = Colors.transparent;
    textStories = Colors.transparent;
    notifyListeners();
  }

// ====End People====
// ====Start People====
  Color textStories = Colors.transparent;
  changeLeftStories() {
    left = 255;
    textChat = Colors.transparent;
    textPeople = Colors.transparent;
    textStories = Colors.black;
    notifyListeners();
  }
// ====End People====
}
