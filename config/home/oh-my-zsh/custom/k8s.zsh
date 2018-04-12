alias k="kubectl"

# Contexts
alias kgctx="kubectl config get-contexts"
alias kuctx="kubectl config use-context"

# Get objects
alias kg="kubectl get"
alias kgp="kubectl get pods"
alias kga="kubectl get all --all-namespaces"

# Describe
alias kd="kubectl describe"
alias kdp="kubectl describe pod"

# Delete
alias kdel="kubectl delete"
alias kdelp="kubectl delete pod"

# Create from a ressource file (imperative mode)
kc() {
	kubectl create -f $1
}

# Replace a ressource from a file (imperative mode)
kr() {
	kubectl replace -f $1
}

# Apply a configuration (declarative mode)
ka() {
	kubectl apply -f $1
}
kar() {
	kubectl apply -f $1 --recursive=true
}

# Exec a bash shell into the specify Pod
kep() {
	if [ -z $2 ]; then
		kubectl exec -it $1 bash
	else
		kubectl exec -it $1 $2
	fi
}

# Tail log from a specific object
klf() {
	kubectl logs -f $1
}


# Tools
alias h="helm"
alias hf="helmfile"

alias kns="kubens"
alias kx="kubectx"