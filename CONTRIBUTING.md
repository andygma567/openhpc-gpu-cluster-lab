# Contributing

Thanks for helping evolve this testbed.

## Experiment safely

- Prefer small, isolated changes that are easy to review and roll back.
- Treat this repository as a lab environment, not a production deployment.
- Add TODO markers where environment-specific details are still unknown.

## Document assumptions

- Record hardware, network, and cloud assumptions alongside the relevant change.
- Note which parts of a workflow target bare-metal GPU nodes versus cloud-based nodes.
- Update `docs/architecture.md` when the target topology changes.

## Protect secrets and local state

- Never commit credentials, private keys, inventory secrets, or OpenTofu state files.
- Keep environment-specific overrides in ignored local files.
- Sanitize examples before sharing inventory, variables, or module inputs.
