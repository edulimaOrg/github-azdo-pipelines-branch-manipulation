RELEASE_BRANCH_FULL_NAME=$RELEASE_BRANCH_PREFIX$RELEASE_BRANCH

git checkout main

git merge origin/$RELEASE_BRANCH_FULL_NAME --no-ff
git push