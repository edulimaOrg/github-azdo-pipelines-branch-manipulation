CURRENT_SPRINT=${CURRENT_BRANCH_NAME:0:2}
CURRENT_SQUAD=${CURRENT_BRANCH_NAME:3}
((CURRENT_SPRINT+=1))
printf -v PADDED_SPRINT "%02d" $CURRENT_SPRINT
echo "##vso[task.setvariable variable=$NAME_VARIABLE;isreadonly=true;]$PADDED_SPRINT-$CURRENT_SQUAD"