#!/bin/bash

echo $TWITTER_BEARER
echo $WEBSITE_SSH
echo $PS4
rsync -av _site/ $WEBSITE_SSH

