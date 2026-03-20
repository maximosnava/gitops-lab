# gitops-lab

GitOps repository for the DevOps lab.

## Objective
Manage Kubernetes manifests using Git as the source of truth, with a Kustomize-compatible structure designed for Argo CD.

## Structure

- `apps/`: reusable application bases
- `environments/`: environment-specific overlays
- `platform/`: shared platform components (for future use)

## Current applications

### echo
Base:
- `apps/echo/base`

Environments:
- `environments/dev/echo`
- `environments/prod/echo`

## Validation

Render dev manifests:

```bash
kubectl kustomize environments/dev/echo

## ArgoCD

Covered:
- ArgoCD install
- Application resources
- sync and health states
- automated sync
- self-heal
- private repository integration with GitHub PAT

Relevant paths:
- platform/argocd/install/
- platform/argocd/applications/
- environments/dev/echo/