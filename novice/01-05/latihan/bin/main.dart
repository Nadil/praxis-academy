import 'dart:async';

Future<void> printDailyNewsDigest() async {
  var newsDigest = await gatherNewsReports();
  print(newsDigest);
}

Future<String> gatherNewsReports() async {
  Future.delayed(oneSecond, () => news);
}

void main(List<String> args) {
  printDailyNewsDigest();
  printWinningLotteryNumbers();
  printWeatherForecast();
  printBaseballScore();
}

printBaseballScore() {
  print('Baseball score: Red Sox 10, Yankees 0');
}
printWinningLotteryNumbers(){
  print('Winning lotte numbers: [23, 63, 87, 26, 2]');
}

printWeatherForecast() {
  print("Tommorow's forecast: 70F, sunny.");
}

const news = '<gathered news goes here>';
const oneSecond = Duration(seconds: 2);