#The git push
function acp() {
if [ -z "$1" ]
then
	echo "Usage: acp <comment>"
else
	git add *
	git commit -m "$1"
	git push
fi
}