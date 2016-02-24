#!/bin/bash

if [ "$1" == "-h" ]; then
	echo "Usage: ./new_blog_post.sh eating-a-cake \"Look at me eat this neat cake!\""
	exit 0
fi

echo "Making a new blog post with file name $1 and title $2"
file_name=`date +%Y-%m-%d-$1`
date_string=`date "+%Y-%m-%d %H:%M:%S -0600"`
#Create the file and populate the header
echo -e "---\nlayout: post\ntitle:  \"$2\"\ndate:   $date_string\ncategories: blog\n---" > _posts/$file_name.markdown
#Create the image asset folder
mkdir images/$file_name
echo "DONE: File _posts/$file_name.markdown has been created for your use"
exit 0
