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

## TO RERUN THE APPLICATION
## Step 1: Go into machine (if not already in it)

`vagrant ssh app`

## Step 2: Start gunicorn process

`./../ubuntu/app/start.sh`

## TO RUN UNITTESTS
## Step 1: Go into machine

`vagrant ssh app`

## Step 2: Go to app folder (where testfile is located)

`cd /home/ubuntu/app`

## Step 3: Run the unit test. Should get output of '10' and 'Ran 2 tests'

`python3 -m unittest test_top_10.py`
