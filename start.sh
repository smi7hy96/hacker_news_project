#!/bin/sh

gunicorn -b $1:$2 app:app