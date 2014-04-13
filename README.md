# Hubot: hubot-forecastio

A [Hubot][1] Script that looks up weather forcast data from [forcast.io][2] with geocoding courtesy of Google Maps

See [`src/forecastio.coffee`](src/forecastio.coffee) for full documentation.

## Installation

Add **hubot-forecastio** to your `package.json` file:

```json
"dependencies": {
  "hubot": ">= 2.5.1",
  "hubot-scripts": ">= 2.4.2",
  "hubot-forecastio": ">= 1.0.0"
}
```

Add **hubot-forecastio** to your `external-scripts.json`:

```json
["hubot-forecastio"]
```

Run `npm install`

## Configuration

Edit your bin/hubot file and add the environment variable FORECAST_IO_API_KEY

```
export FORECAST_IO_API_KEY=123abc456def
```

You can obtain a forecast.io API key from their [developer page][3]

## Sample Interaction

```
jsolis>> weather in Jackson Heights, NY
hubot>> In Jackson Heights, Queens, NY, USA, it is currently 20.77. Feels like 10.63. Partly cloudy for the hour. Mostly cloudy throughout the day.
```

  [1]: http://hubot.github.com/
  [2]: http://forecast.io/
  [3]: https://developer.forecast.io/
