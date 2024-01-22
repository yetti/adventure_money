# adventure money

[![GitHub release (latest SemVer including pre-releases)](https://img.shields.io/github/v/release/yetti/adventure-money?include_prereleases)](https://github.com/yetti/adventure-money/releases/latest)
[![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/yetti/adventure-money/ci.yml?event=push)](https://github.com/yetti/adventure-money/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/yetti/adventure-money/graph/badge.svg?token=BC51K08ZUG)](https://codecov.io/gh/yetti/adventure-money)

Manage shared expenses.

A Ruby on Rails implementation of [Lazslo Pandy's Adventure Money](http://laszlopandy.com/2007/05/13/presenting-adventure-money/).

## Setup

1. Clone project from GitHub
2. Open project in VSCode
3. Load the project in a devcontainer
4. Run `bin/setup` to install dependencies

## Running the app

1. `bin/dev`

## Tests and CI

1. `bin/ci` contains all the test and checks for the app
2. `tmp/test.log` will use the production logging format *not* the development one

## Deployment

* All runtime configuration should be supplied in the UNIX environment
* Rails logging uses lograge. Set the `"LOGRAGE_IN_DEVELOPMENT" == "true"` environment variable to use this log format locally.
