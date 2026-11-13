# test-superagent

Sandbox repository for **dsh-superagent**, the self-hosted autonomous agent
orchestrator from [DeepSeek Harness](https://github.com/deepseek-ai).

The orchestrator watches this repository's issues, picks up work that @-mentions
the agent account, runs it in an isolated worker session, and opens a pull
request with the result.

## How to use

Open an issue and mention the agent with a concrete task, for example:

> @shishouhai8023 add a /health endpoint to the service and cover it with a test

The agent replies with its assessment, then works in a dedicated worktree and
pushes a branch `agent/<name>`. Review the pull request as with any contributor.

## Ground rules

- Keep issues small and verifiable; one task per issue.
- The agent cannot merge, force-push, or touch other repositories.
- Never paste credentials or private keys into an issue.
