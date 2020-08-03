# Hackerank basic API Example

This project is to show a basic implementation of webscraping and generating JSON api data from live sources.


## Step 1: CLONE DIRECTORY

`git clone git@github.com:smi7hy96/hacker_news_project.git`

## Step 2: GO TO DIRECTORY on Local Machine

`vagrant up`

## Step 3: Re-run the provision file

`vagrant provision`


## This should be running now so going to the web browser should work
`http://development.local/hacker-news-top-10`

## TO STOP THE APPLICATION RUNNING
## Step 1: Go into machine

`vagrant ssh app`

## Step 2: Kill GUNICORN Processes

`pkill gunicorn`

## To rerun the application
## Step 1: Go into machine (if not already in it)

`vagrant ssh app`

## Step 2: Start gunicorn process

`./../ubuntu/app/start.sh`
