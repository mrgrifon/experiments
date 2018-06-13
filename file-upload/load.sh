#!/bin/bash

rm -rf ./public/uploads/*

curl -i -F "myFile=@/home/oleg/Videos/Carjojo.webm" http://localhost:3000/upload &
curl -i -F "myFile=@/home/oleg/Videos/Carjojo.webm" http://localhost:3000/upload &
curl -i -F "myFile=@/home/oleg/Videos/Carjojo.webm" http://localhost:3000/upload &
curl -i -F "myFile=@/home/oleg/Videos/Carjojo.webm" http://localhost:3000/upload &
curl -i -F "myFile=@/home/oleg/Videos/Carjojo.webm" http://localhost:3000/upload &
curl -i -F "myFile=@/home/oleg/Videos/Carjojo.webm" http://localhost:3000/upload &
curl -i -F "myFile=@/home/oleg/Videos/Carjojo.webm" http://localhost:3000/upload &
curl -i -F "myFile=@/home/oleg/Videos/Carjojo.webm" http://localhost:3000/upload &
wait
