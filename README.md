# openhpc-slurm-testbed

> Testbed for evaluating stackhpc/ansible-role-openhpc to deploy Slurm clusters on bare-metal GPU nodes and cloud infrastructure using Ansible and OpenTofu.

## Overview

This repository is a clean starter scaffold for experimenting with Slurm cluster deployments across mixed infrastructure.

The initial focus is on evaluating and building on top of [`stackhpc/ansible-role-openhpc`](https://github.com/stackhpc/ansible-role-openhpc) for:

- bare-metal GPU nodes
- cloud provider nodes

The intent is to keep the repository lightweight and ready for iterative experimentation rather than to provide production-ready infrastructure.

# Requirements 

- RHEL is a requirement for the OS. Ubuntu is not supported

## Goals

- Evaluate `stackhpc/ansible-role-openhpc` for Slurm-based cluster deployment.
- Prototype a hybrid model spanning bare-metal GPU workers and optional cloud-backed capacity.
- Separate configuration concerns between Ansible and OpenTofu.
- Capture assumptions, design notes, and follow-up work as the testbed evolves.

## Non-goals

- Shipping production-ready cluster definitions.
- Committing credentials, secrets, or state files.
- Locking the repository into a single cloud provider or hardware layout too early.

## Proposed repository layout

```text
.
├── ansible/
│   ├── group_vars/
│   ├── inventory/
│   ├── playbooks/
│   └── roles/
├── docs/
│   └── architecture.md
├── opentofu/
│   ├── environments/
│   ├── modules/
│   ├── main.tf
│   ├── providers.tf
│   └── variables.tf
├── CONTRIBUTING.md
├── LICENSE
└── README.md
```

## Getting started

1. Review the notes in `docs/architecture.md`.
2. Add environment assumptions and TODOs before introducing real infrastructure details.
3. Populate `ansible/inventory/` and `ansible/group_vars/` with non-sensitive lab-specific configuration.
4. Add provider and module experiments under `opentofu/` without committing state or secret material.
5. Integrate the upstream OpenHPC role in small, reviewable increments.

## Next steps

- Wire in `stackhpc/ansible-role-openhpc` as an upstream dependency or subtree/submodule strategy.
- Add initial OpenTofu modules for cloud networking and optional supporting nodes.
- Define one or more example environments for hybrid bare-metal and cloud-backed Slurm testing.
- Document validation steps for provisioning and configuration as the testbed matures.
