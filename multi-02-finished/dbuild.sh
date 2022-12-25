#!/bin/zsh

docker build -t goals-node:2.0 ./backend

docker build -t goals-react:2.0 ./frontend
