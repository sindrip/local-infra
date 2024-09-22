.PHONY: cluster-up
cluster-up:
	kind create cluster --config=kind-config.yaml
	kubectl apply -k ./argocd

cluster-down:
	kind delete cluster --name infra
