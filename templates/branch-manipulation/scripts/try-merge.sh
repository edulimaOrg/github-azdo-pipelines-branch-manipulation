git checkout $DESTINATION_BRANCH

git merge --no-ff --no-commit origin/$ORIGIN_BRANCH
if [[ "$?" == "1" ]]; then
    echo "##vso[task.setvariable variable=mergeHasConflicts;]true"
    echo "##vso[task.logissue type=error]There are conflicts between origin $ORIGIN_BRANCH and destination $DESTINATION_BRANCH. Automatic merge is aborted."
    exit 1
fi

git commit -m "Merge branch 'origin/$ORIGIN_BRANCH' into '$DESTINATION_BRANCH'"
git push

echo "##vso[task.setvariable variable=mergeHasConflicts;]false"