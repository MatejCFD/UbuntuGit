#!/bin/bash

# This is a file demonstrating 
# how to succesfully upload files 
# into GitHub repos via a Bash script

# In the WD, create a random file
touch Random.txt
echo "I am adding some lines to the Random.txt file!" >> Random.txt
echo "This is how it's done." >> Random.txt
echo "This will now be featured in my git repo." >> Random.txt
echo "Goodbye!" >> Random.txt

# Check the repo
git remote -v

# Now, we initialize Git, add the file
# and commit the file 
git init
git add Random.txt

echo "What is the commit name?"
read NAME

#############################################
# If you want the commit to feature a date	
# Then do the following						
# DATE=$(date)									
# git commit -m "Changes made on $DATE"		
#############################################

git commit -m "$NAME"

# Upload the file
git push -u origin master






