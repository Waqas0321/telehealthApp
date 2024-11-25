import 'package:get/get.dart';

class CovidController extends GetxController{
  List<String> symptoms = [
    "Fever",
    "Cough",
    "Shortness of breath",
    "Fatigue",
    "Muscle or body aches",
    "Headache",
    "Loss of taste or smell",
    "Sore throat",
    "Congestion or runny nose",
  ];
  List<String> travelQuestions = [
    "Have you traveled outside of the country in the past 14 days?",
    "If yes, to which country?",
    "Have you been in close contact with someone who has traveled outside of the country in the past 14 days?",
  ];
  List<String> exposureQuestions = [
    "Have you been in close contact with someone who has tested positive for COVID-19 in the past 14 days?",
    "If yes, when was the last contact?",
  ];
  List<String> vaccinationQuestions = [
    "Have you received the COVID-19 vaccine?",
    "If yes, how many doses have you received?",
    "What type of vaccine did you receive?",
    "When did you receive your last dose?",
  ];
  List<String> testResultsQuestions = [
    "Have you been tested for COVID-19 in the past 14 days?",
    "If yes, what was the result?",
  ];



}