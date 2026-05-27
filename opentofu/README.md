# OpenTofu layout

Use this directory for infrastructure experiments that provision supporting cloud resources or hybrid test environments.

- `providers.tf` - provider requirements and authentication wiring placeholders
- `variables.tf` - shared input variables for the testbed
- `main.tf` - root composition for modules and resources
- `modules/` - reusable building blocks
- `environments/` - environment-specific overlays or examples

## TODO

- Choose the first target cloud provider module.
- Define how bare-metal details are represented alongside cloud resources.
