#!/bin/bash

brew bundle dump --force --file=./Brewfile
git add Brewfile
git -C ../ commit -am "Update Brewfile"
git -f push


