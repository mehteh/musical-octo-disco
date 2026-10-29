#!/bin/bash

brew bundle dump --force --file=./setup-scripts/Brewfile 
git add ./setup-scripts/Brewfile
git -C ./ commit -am "Update Brewfile"
git  push --force


