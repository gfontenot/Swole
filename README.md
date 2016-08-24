# Swole #

## Setup ##

Run `bin/setup`. This will:

 - Install the gem dependencies
 - Install the Carthage dependencies

Additionally, there are helper bin scripts for dealing with Carthage:

 - `bin/bootstrap` will install the dependencies
 - `bin/bootstrap-if-needed` will install the dependencies _only_ if the
   existing dependencies are out of date

## Testing ##

Run `bin/test`

This will run the tests from the command line, and pipe the result through
[XCPretty][].

[XCPretty]: https://github.com/supermarin/xcpretty
