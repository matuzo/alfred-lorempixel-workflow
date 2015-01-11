cd ~/Desktop

read dimensions type text <<< "{query}"

prefix=dummy_
date=$(date +%Y%m%d%H%M%S)
extension=.png

if [ -z "$dimensions" ]
	then 
		dimensions=640/480
fi

IFS='"' read x text y <<< "{query}"
text="${text// /%20}"

curl -L -o $prefix$date$extension http://lorempixel.com/$dimensions/$type/$text