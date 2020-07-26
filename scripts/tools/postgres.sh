#!/bin/sh

# postgres client (link needed as by default psql is not linked to /usr/local/bin)
brew install libpq  
brew link --force libpq  

# pgadmin4
brew cask install pgadmin4
