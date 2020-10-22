#!/bin/bash


pwd
/app/node_modules/jscs/bin/jscs src --fix && /app/node_modules/jshint/bin/jshint src
