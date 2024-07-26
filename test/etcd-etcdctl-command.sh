kubectl -n kube-system exec -it etcd-docker-desktop -- sh -c \
	ETCDCTL_API=3 ETCDCTL_CACERT=/etc/kubernetes/pki/etcd/ca.crt \
	ETCDCTL_CERT=/etc/kubernetes/pki/etcd/server.crt \
	ETCDCTL_KEY=/etc/kubernetes/pki/etcd/server.key \
	etcdctl --endpoints=https://127.0.0.1:2379 get /registry/secrets/default/plaintext-secret
