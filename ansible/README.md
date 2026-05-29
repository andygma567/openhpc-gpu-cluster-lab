# Ansible layout

Use this directory for cluster configuration and customizations built around `stackhpc/ansible-role-openhpc`.

- `inventory/` - inventories or example host definitions for lab environments
- `group_vars/` - shared variables for Slurm controller, login, GPU worker, and support groups
- `playbooks/` - entrypoint playbooks for cluster bootstrap and role integration
- `roles/` - local overrides, wrappers, or experimental custom roles

## TODO

- Add a minimal inventory example for a hybrid bare-metal and cloud test environment.
- Decide how the upstream role will be consumed (for example: submodule, Galaxy, or vendored copy).
