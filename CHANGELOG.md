# Changelog

All notable changes to Pigeon Time and Weather are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

## [1.0.0] - 2026-11-08

First release.

### Highlights

- The same time and weather for every player
- Weather that changes by itself, smoothly
- Staff commands and a blackout
- Leaves time or weather to vMenu when its sync is on
- 23 languages

### Added

- A server clock shared through `GlobalState.pigeonClock`, with `Config.StartHour`, `Config.MinuteSeconds` and `Config.RealTime`.
- Server weather shared through `GlobalState.pigeonWeather`, changing by itself every `Config.WeatherMinutes` through `Config.Weathers`, smoothly over `Config.TransitionSeconds`.
- `/time`, `/weather`, `/freezetime`, `/freezeweather` and `/blackout` for staff with `Config.Permissions` and the console.
- A blackout, with `Config.BlackoutVehicleLights`, and snow tracks in snowy weather.
- `Config.RespectVMenu`: leaves time or weather to vMenu when `vmenu_enable_time_sync` or `vmenu_enable_weather_sync` is on.
- `GetTime`, `SetTime`, `GetWeather`, `SetWeather` and `SetBlackout` server exports.
- Staff messages in 23 languages, following ox_lib's language with `Config.Locale = 'auto'`.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-time-weather/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/pigeon-studios-uk/pigeon-time-weather/releases/tag/v1.0.0
