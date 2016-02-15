#! /bin/bash

if [ ! -d .git ]; then
    echo "Not in a GIT repository"
    exit
fi

# ADD
echo "Adding all modified files from $PWD"
git add --all

# COMMIT
echo "Type the commit message"
read commitMSG

git commit -m "$commitMSG"

# PUSH
echo "PUSH to master? [y/n]"
read push
if [ $push == "y" ]; then
    git push origin master
elif [ $push == "n" ]; then
    echo "To which branch you want to push: "
    read pushBR
    git push origin $pushBR
fi

echo "DONE."
