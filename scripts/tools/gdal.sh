#!/bin/sh

# best source seems to be https://github.com/OSGeo/homebrew-osgeo4mac
brew tap osgeo/osgeo4mac

# this pulls a lot of dependencies; sqlite, python 3.8, gcc 10, proj, even openjdk 14 and postgres12!
brew install gdal
