# ComposePropulseTaCarriere

This is the repo containing everything to run an instance of PropulseTaCarriere a web app to keep track of interns for training enterprise.

## Installation

You will have to copy a .env file from the app to the folder.
Run `docker-compose up -d` to start the containers.

## Upgrade

To upgrade to new versions of the web app run `sh upgrade.sh`. The upgrade script will make a backup of the database before upgrading. It also builds the images before relaunching the containers to avoid downtime as much as possible.

## Export

To make a backup or transfer you can run the `export.sh` script which will export the database and the uploaded files in a .tar.gz file located in the export folder. The files have a timestamp so you can periodically run the export script without fear of overwritting the last backup.
