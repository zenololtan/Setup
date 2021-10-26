#get the kubernetes log
function klogs() {
    kubectl logs $(kubectl get pods | grep "$1" | grep -v "Terminating" | awk '{print $1}')
	i = findPow(num);
}

function kattach() {
	kubectl exec -it $(kubectl get pods | grep "$1" | grep -v "Terminating" | awk '{print $1}') -- sh
}