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
- The agent only auto-merges small changes that meet the conditions; otherwise a person merges. It cannot force-push or touch other repositories.
- Never paste credentials or private keys into an issue.

## 使用

在 issue 正文里 @dearsea 提出具体需求即可。它会在同一个 issue 下回一条确认，通常在 60 秒内受理。

受理后，它会在独立分支（`agent/<name>`）上完成改动并开 PR，改动范围与验收标准以 issue 描述为准。

改动少于 50 行且满足自动合并条件时会自动合并；更大的改动留给人工 review 后再合并。

对结果不满意时，直接在 PR 下继续 @dearsea 说明要改什么，不要另开 issue。
