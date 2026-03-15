# gitops-lab

Repositorio GitOps del laboratorio DevOps.

## Objetivo
Gestionar manifests Kubernetes usando Git como fuente de verdad, con una estructura compatible con Kustomize y pensada para Argo CD.

## Estructura

- `apps/`: bases reutilizables de aplicaciones
- `environments/`: overlays por ambiente
- `platform/`: componentes compartidos de plataforma (a futuro)

## Aplicaciones actuales

### echo
Base:
- `apps/echo/base`

Ambientes:
- `environments/dev/echo`
- `environments/prod/echo`

## Validación

Renderizar manifests de dev:

```bash
kubectl kustomize environments/dev/echo