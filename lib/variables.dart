double? lat,long;
const apiKey = '035fd422d3d1d56d928d71e3ad9fdd93';
String coordinate ='https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$long&appid=$apiKey&units=metric';
String? city;
String cityLocation = 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';
Uri? uri;
double? temperature;
String? name;
var data;
int? status;

String getWeatherEmoji(double temperature) {
  if (temperature < -30) {
    return "❄️"; // Emoji for extremely cold
  } else if (temperature >= -30 && temperature < -10) {
    return "🥶"; // Emoji for freezing
  } else if (temperature >= -10 && temperature < 0) {
    return "🧊"; // Emoji for chilly
  } else if (temperature >= 0 && temperature < 10) {
    return "🌬️"; // Emoji for cool
  } else if (temperature >= 10 && temperature < 20) {
    return "🌦️"; // Emoji for mild
  } else if (temperature >= 20 && temperature < 30) {
    return "☀️"; // Emoji for warm
  } else if (temperature >= 30 && temperature < 40) {
    return "🌞"; // Emoji for hot
  } else {
    return "🔥"; // Emoji for scorching
  }
}

String getWeatherDescription(double temperature) {
  if (temperature < -30) {
    return "Brrr! It's colder than a polar bear's toenails!";
  } else if (temperature >= -30 && temperature < -10) {
    return "Freezing like an ice cube in Antarctica!";
  } else if (temperature >= -10 && temperature < 0) {
    return "Chillier than a penguin's fridge!";
  } else if (temperature >= 0 && temperature < 10) {
    return "Cooler than a cucumber in a snowstorm!";
  } else if (temperature >= 10 && temperature < 20) {
    return "Mild and lovely, just like a spring breeze!";
  } else if (temperature >= 20 && temperature < 30) {
    return "A perfect day for sunbathing and ice cream!";
  } else if (temperature >= 30 && temperature < 40) {
    return "Hotter than a jalapeño in the desert!";
  } else {
    return "Scorching like a dragon's breath!";
  }
}