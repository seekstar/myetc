# Personal AGENTS.md (user-level, applies to all projects for this user)

## Markdown Style

Do NOT hard-wrap paragraphs in Markdown. Write each paragraph as a single long line and let the renderer handle wrapping. Only use explicit line breaks for real structural breaks (new paragraph, list item, heading, code block, etc.).

## Shell Environment

The AI agent's shell is non-login and non-interactive, so `~/.profile` is not auto-sourced. Every shell command executed by the agent should be prefixed with `source ~/.profile &&` so that the correct toolchain and environment variables are loaded. Example: `source ~/.profile && gcc --version`
