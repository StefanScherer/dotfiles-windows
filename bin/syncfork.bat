@rem from https://help.github.com/articles/syncing-a-fork
call git fetch upstream
call git checkout master
call git merge upstream/master
