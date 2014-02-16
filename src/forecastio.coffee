# Description:
#   Look up the weather using google for geocoding and forecast.io for weather data
#
# Dependencies:
#   None
#
# Configuration:
#   FORECAST_IO_API_KEY
#
# Commands:
#   weather in {location}

forecastIoApiKey = process.env.FORECAST_IO_API_KEY
throw "You must set FORECAST_IO_API_KEY in your envrionment variables" unless forecastIoApiKey 

module.exports = (robot) ->
  robot.hear /weather in (.*)/i, (msg) ->
    location = encodeURI(msg.match[1])
    msg.http("http://maps.googleapis.com/maps/api/geocode/json?address=#{location}&sensor=false")
    .get() (err, res, body) ->
      geocodeResponse = JSON.parse(body)
      formattedLocation = geocodeResponse.results[0].formatted_address
      lat = geocodeResponse.results[0].geometry.location.lat
      lng = geocodeResponse.results[0].geometry.location.lng
      msg.http("https://api.forecast.io/forecast/#{forecastIoApiKey}/#{lat},#{lng}")
        .get() (err, res, body) ->
          forecastResponse = JSON.parse(body)
          minutely = ""
          hourly = ""
          minutely = forecastResponse.minutely.summary if (forecastResponse.minutely)
          hourly = forecastResponse.hourly.summary if (forecastResponse.hourly)
          msg.send "In #{formattedLocation}, it is currently #{forecastResponse.currently.temperature}. Feels like #{forecastResponse.currently.apparentTemperature}. #{minutely} #{hourly}"
