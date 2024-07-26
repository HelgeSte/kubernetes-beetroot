#!/bin/sh
path=$(pwd)
if [ "$path" != "/" ]; then
	echo "Running the listning"
	listit () {
	while [ "$1" ]; do
		if [ -d "$1" ]; then
			listit "$1"/*
		else
			printf "$1"
			echo
		fi
		shift
	done
}
listit *
else
	echo "Error: To dangerous to run command from the / folder."
	echo "Exiting"
	exit 0
fi

echo "Gracefully exiting the script"
# copy the lines/script above this line"

# Since i couldn't find etcdctl command in the etcd-docker-desktop pod,
# I created a script for folder list, folder list recursive and reading
# a file, since the pod is minimalistic and any support the sh shell and
# almost no commands. This made it necessary to use shell commands to 
# list and read files.
copy the script, then run the following command to paste it to 
# etcd pod like this:
kubectl -n kube-system exec -ti -- sh
echo '<paste text>' > listit.sh
now you can use the command "sh listit.sh" to get a file listing


