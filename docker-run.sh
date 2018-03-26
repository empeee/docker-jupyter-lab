#!/bin/bash

docker run --rm --name=jupyter-lab -p 9999:9999 -v ~/tmpconfig:/opt/jupyterconfig -v ~/tmpnotebooks:/opt/notebooks empeee/jupyter-lab
