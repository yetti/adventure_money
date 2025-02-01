# Adventure Money

Manage shared expenses.

A Ruby on Rails implementation of [Lazslo Pandy's Adventure Money](http://laszlopandy.com/2007/05/13/presenting-adventure-money/).

## Setup

1. Clone project from GitHub
2. Open project in VSCode
3. Load the project in a devcontainer
4. Run `bin/setup` to install dependencies

## Running the app locally

- `bin/dev`

## Tests and CI

- `bin/ci` contains all the test and checks for the app
- `tmp/test.log` will use the production logging format not the development one

## Deployment

- All runtime configuration should be supplied in the UNIX environment
- Rails logging uses lograge. Set the `"LOGRAGE_IN_DEVELOPMENT" == "true"` environment variable to use this log format locally.

## Related links

- ER Diagram - https://dbdiagram.io/d/adventure-money-6685f6629939893daefda9c8
