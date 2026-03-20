# ArgoCD installation

## Install
kubectl create namespace argocd
kubectl apply --server-side -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

## Verify
kubectl get pods -n argocd

## Access
kubectl port-forward svc/argocd-server -n argocd 8080:443

## Initial admin password
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo

## Notes
- regular `kubectl apply` failed on CRD annotation size
- fixed with `--server-side`
- private GitHub repo required fine-grained PAT