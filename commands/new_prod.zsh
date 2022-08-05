#The git riddle
function iacp() {
if [ -z "$2" ]
then
	echo "Usage: iacp <link> <comment>"
else
	cp -n $HOME/setup/.gitignore ./
	git init
	git add *
	git commit -m "$2"
	git remote add origin $1
	git push --set-upstream origin main
fi
}