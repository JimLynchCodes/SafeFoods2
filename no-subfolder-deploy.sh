echo "Target: gh-pages branch"
  
ORIGIN_URL=`git config --get remote.origin.url`  
ORIGIN_URL_WITH_CREDENTIALS=${ORIGIN_URL/\/\/github.com/\/\/$GITHUB_TOKEN@github.com}

git config --global user.name "JimTheMan" || exit 1  
git config --global user.email "mrdotjim@gmail.com" || exit 1

echo "Cleaning up temp files"  
# rm -Rf $TEMP_DIRECTORY

echo "Deploying..."
 
git commit -am 'commit from paris, france.'
git subtree push --prefix dist/ origin gh-pages || {
echo "something bad happened"
echo "deleting gh-pages"
git branch -D gh-pages
echo "checking out orphan"
git checkout --orphan gh-pages
echo "adding"
git add --all
echo "committing"
git commit -m 'gh-pages commit!!'
echo "pushing gh-pages"
git push origin gh-pages

echo "checking out master"
git checkout master
echo "entering SafeFoods"
# cd FountainSafeFoods 
echo "building dist folder"
gulp build
echo "deleting old gh-pages"
git push origin :gh-pages
echo "pushing dist!"
cd ..
git subtree push --prefix dist/ origin gh-pages


}

echo "Deployed."  
