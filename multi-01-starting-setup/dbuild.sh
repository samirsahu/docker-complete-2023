#!/bin/zsh

docker build -t goals-node:1.0 ./backend

docker build -t goals-react:1.0 ./frontend
