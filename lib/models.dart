/*
                          
"weather": [
    {
      "description": "clear sky",
      "icon": "01d"
    }
  ],
  "main": {
    "temp": 282.55,
  },
  "name": "Mountain View",
  }                         
                        
 */

class WeatherResponse{
  final String cityName;

  //Contructor
  WeatherResponse({required this.cityName});

  //Factory Contructor  
  // fromJson is a custom name for a map
  factory WeatherResponse.fromJson(Map<String, dynamic> json){
    final cityName = json['name'];
    return WeatherResponse(cityName: cityName);
  }
}