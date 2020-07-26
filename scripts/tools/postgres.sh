#!/bin/sh

# postgres client (link needed as by default psql is not linked to /usr/local/bin)
if [ ! -f /usr/local/bin/psql ]
then
    brew install libpq
    brew link --force libpq
fi

# pgadmin4
brew cask install pgadmin4
