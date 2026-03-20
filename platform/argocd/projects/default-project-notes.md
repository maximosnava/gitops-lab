# ArgoCD Project notes

## Default project

For the lab, the Applications created on Day 10 use the built-in ArgoCD `default` project.

This means no custom `AppProject` resource was created yet.

## Why use the default project now

Using the default project is enough for the first ArgoCD exercises:
- install ArgoCD
- create Applications
- understand sync status
- understand health status
- test self-heal
- connect a private Git repository

## What the default project implies

The `default` project is the out-of-the-box ArgoCD project and is useful for simple labs, but it is less strict than a custom project.

In real environments, teams usually create dedicated `AppProject` resources to control:
- which repositories are allowed
- which clusters can be targeted
- which namespaces can be targeted
- which Kubernetes resource kinds are allowed

## When to replace it

This lab should move away from the `default` project once multi-app or multi-environment governance becomes relevant.

That can be introduced in a later step by creating a custom `AppProject`, for example:
- `lab-project`
- `dev-project`
- `platform-project`

## Current state in this repository

Applications currently reference:

```yaml
spec:
  project: default