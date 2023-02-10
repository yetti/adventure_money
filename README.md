# Adventure Money

[![GitHub release (latest SemVer including pre-releases)](https://img.shields.io/github/v/release/yetti/adventure-money?include_prereleases)](https://github.com/yetti/adventure-money/releases/latest)
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/yetti/adventure-money/tree/main.svg?style=shield)](https://dl.circleci.com/status-badge/redirect/gh/yetti/adventure-money/tree/main)
[![codecov](https://codecov.io/gh/yetti/adventure-money/branch/main/graph/badge.svg?token=5m2K91UrBW)](https://codecov.io/gh/yetti/adventure-money)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=yetti_adventure-money&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=yetti_adventure-money)

Adventure Money was [originally developed by Laszlo Pandy](http://laszlopandy.com/2007/05/13/presenting-adventure-money/) as a
Python GUI desktop application to keep track of shared costs between friends and housemates.

This is a learning project for myself to learn Rails 7, Ruby and best practices in general.

## Pre-requisites

* Podman or Docker
* `dip` gem
* `overcommit` gem
* `foreman` gem

## Setup

1. Clone the repository from source control.
2. Make sure to have Podman/Docker running.
3. Open a terminal and navigate to the project directory.
4. Execute `dip provision` in the terminal.
5. Install `overcommit` gem and then execute `overcommit --install` in the project directory.

## Running the app

1. `bin/dev`

## Tests and CI

1. `bin/ci` contains all the tests and checks for the app
2. `tmp/test.log` will use the production logging format *not* the development one.

## Production

* All runtime configuration should be supplied in the UNIX environment
* Rails logging uses `lograge`. `bin/setup help` can tell you how to see this locally.
