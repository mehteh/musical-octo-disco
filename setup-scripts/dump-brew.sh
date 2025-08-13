#!/bin/bash

brew bundle dump --force --file=./Brewfile --describe 
git add Brewfile
git -C ../ commit -am "Update Brewfile"
git  push --force


