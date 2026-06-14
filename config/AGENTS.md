# Personal AGENTS.md (user-level, applies to all projects for this user)

## Markdown Style

Do NOT hard-wrap paragraphs in Markdown. Write each paragraph as a single long line and let the renderer handle wrapping. Only use explicit line breaks for real structural breaks (new paragraph, list item, heading, code block, etc.).

## Shell Environment

The AI agent's shell is non-login and non-interactive, so `~/.profile` is not auto-sourced. Every shell command executed by the agent should be prefixed with `source ~/.profile &&` so that the correct toolchain and environment variables are loaded. Example: `source ~/.profile && gcc --version`

## Code Style: Self-Documenting Code

Prefer self-documenting code over comments. Write comments only when they explain intent or context the code itself cannot convey (non-obvious rationale, invariants, trade-offs, references to issues, etc.). Do NOT write comments that merely restate what the code does.

## Code Style: Comments Describe Present, Not History

Comments describe the current behavior and intent of the code, not its history. Readers cannot see deleted or replaced code, so phrases like "previously X, now Y", "fixed: the old implementation did Z", or "to keep parity with the legacy logic" are noise. State the current contract positively ("single quotes are taken literally"), not as a contrast against a deleted version. History belongs in commit messages and git blame. This applies equally to tests: comment what behavior the test pins down, not which bug it once caught.

## C++ Formatting

If the project contains a `.clang-format` file, run `clang-format -i <file>` on every C++ source/header file you modify to ensure consistent formatting.

## C++ Designated Initializer Style

When using C++ designated initializers (e.g., in vector of structs), put each field on its own line with a trailing comma for readability:

```cpp
std::vector<Entry> expected = {
	{
		.field1 = value1,
		.field2 = value2,
		.field3 = value3,
	},
};
```

## C++ Member Declaration Style

This applies to every member of an `enum` / `enum class` / `class` / `struct`. Put each member on its own line, with a trailing comma where the syntax allows. If a member needs a comment, attach the comment to the line(s) immediately above that member. Do NOT cram multiple members on one line.

```cpp
enum class LogLevel {
	kDebug,
	kInfo,
	// Recoverable errors that the caller may want to handle.
	kWarn,
	// Unrecoverable errors; the operation has been aborted.
	kError,
};

struct UserRecord {
	std::string name;
	// Monotonically increasing; never reused after deletion.
	uint64_t id;
	// Empty when the user has not verified their email yet.
	std::string email;
};

## Process Safety

Do NOT kill processes by name (for example `pkill db_bench` or `killall db_bench`) because it can accidentally kill processes from other sessions. Prefer killing a specific PID or process group that was started and tracked by the current session.

## Git

The user uses git state to track which files have been reviewed. Read-only git commands (status, diff, log, etc.) are fine. Do NOT run git commands that alter state (stash, commit, push, pull, rebase, reset, checkout, etc.) unless the user explicitly asks you to.
```
