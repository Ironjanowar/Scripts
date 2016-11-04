#!/bin/bash

echo "Starting XAMPP..."
sudo /opt/lampp/lampp start

echo "Starting sdh-api..."
cd ~/work/sdh-api/
node index.js
