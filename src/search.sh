#!/bin/bash

script_path=$(dirname "$0")
cd $script_path

echo
echo Input the keyword you would like to search for:
echo -e \(Please input the keyword capitalized. The program will search 
echo -e for the keyword capitalized, all lowercase, and all uppercase\)
read KEYWORD; echo
echo Input the url that you would like to analyze: 
read URL; echo
echo Input the tags you would like to analyze:
echo -e \(Please use only a space between tags, and remember they are case-sensitive\)
read -a TAGARRAY; echo

# find the website and put it in an html file
curl $URL > target.html 
echo 

# catch abnormal curl behavior, incorrect user
# behavior, and bad url requests
if [ $? != 0 ]
then 
    echo Unable to retrieve URL, sorry!
    exit 1
fi

# call the python script to scrape for keyword
python scraper.py $KEYWORD "${TAGARRAY[@]}"

# append a log file with the keyword, current date,
# and the url searched. 
echo -e "$KEYWORD\t$(date)\t$URL\n" >> log.txt 

# clean up after yourself
rm -rf target.html
