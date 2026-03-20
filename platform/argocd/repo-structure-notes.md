# What was practiced on Day 10

- ArgoCD installation
- access through port-forward
- initial admin login
- declarative Applications
- sync status vs health status
- self-heal behavior
- prune behavior
- private repository authentication with GitHub fine-grained PAT

## Troubleshooting found
- CRD install failed due to annotation size limit using client-side apply
- fixed using server-side apply
- private repo access failed until PAT credentials were configured
- wrong targetRevision caused source resolution issues