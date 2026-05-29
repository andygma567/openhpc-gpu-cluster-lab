# Architecture notes

## Hybrid target model

This testbed targets a hybrid Slurm cluster model with:

- bare-metal GPU workers for primary accelerated compute capacity
- optional cloud-based workers or supporting nodes for burst capacity, control-plane support, or integration testing
- Slurm as the scheduler coordinating workloads across the available node pools

## Design intent

- Keep the control model simple enough for iterative experiments.
- Use Ansible for cluster configuration and OpenTofu for infrastructure provisioning where cloud resources are involved.
- Evaluate how `stackhpc/ansible-role-openhpc` can serve as the base layer for the cluster setup.

## TODO

- Decide whether the Slurm controller should remain on bare metal, in the cloud, or both for different scenarios.
- Document networking assumptions between bare-metal and cloud-hosted nodes.
- Capture storage, image, and GPU driver expectations once the first environment is defined.
