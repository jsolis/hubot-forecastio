hubot-forecastio
===============

A [Hubot][1] Script that looks up weather forcast data from [forecast.io][2] with geocoding courtesy of Google Maps

## Install
1. Copy the forecastio.coffee script into your hubot's scripts directory
2. Edit your bin/hubot file and add the environment variable FORECAST_IO_API_KEY

**Example config**

    export FORECAST_IO_API_KEY=123abc456def

You can obtain a forecast.io API key from their [developer page][3]

## Usage

    jsolis > weather in Jackson Heights, NY
    hubot > In Jackson Heights, Queens, NY, USA, it is currently 20.77. Feels like 10.63. Partly cloudy for the hour. Mostly cloudy throughout the day.

  [1]: http://hubot.github.com/
  [2]: http://forecast.io/
  [3]: https://developer.forecast.io/
