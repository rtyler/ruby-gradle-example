#!/usr/bin/env bash

# Setting these to empty strings to make sure RVM doesn't get in our way
export GEM_HOME=''
export GEM_PATH=''

exec ./gradlew prepare war
