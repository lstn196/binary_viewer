#!/bin/bash
echo "******************* binview *******************"
echo "***** Copyright (C) 2021 lstn196 (author) *****"
echo "************** date: 23.07.2021  **************"
while true
do
echo "enter file's name you want to view in binary, or press ctrl+C to QUIT: "
read fn
if [ -z "$fn" ]
then
      echo "filename is not given!"
else
clear
      echo "binary view of $fn:"
      xxd -b $fn | awk '{print $2 " " $3 " " $4 " " $5 " " $6 " " $7}'
fi
done
