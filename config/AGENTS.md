# Personal AGENTS.md (user-level, applies to all projects for this user)

## Markdown Style

Do NOT hard-wrap paragraphs in Markdown. Write each paragraph as a single long line and let the renderer handle wrapping. Only use explicit line breaks for real structural breaks (new paragraph, list item, heading, code block, etc.).

## Shell Environment

The AI agent's shell is non-login and non-interactive, so `~/.profile` is not auto-sourced. Every shell command executed by the agent should be prefixed with `source ~/.profile &&` so that the correct toolchain and environment variables are loaded. Example: `source ~/.profile && gcc --version`

## Temporary Files

Do not place task files directly in the top level of `/tmp`. First create a private task directory with `temporary_dir=$(mktemp -d /tmp/task-name.XXXXXX)`, which has permission mode `0700`, and place all temporary files inside it. If a standalone temporary file is unavoidable, use a secure temporary-file API such as `mktemp` or `mkstemp()` that creates it with permission mode `0600`; do not rely on a later `chmod` to restrict access.

## Code Style: Self-Documenting Code

Prefer self-documenting code over comments. Write comments only when they explain intent or context the code itself cannot convey (non-obvious rationale, invariants, trade-offs, references to issues, etc.). Do NOT write comments that merely restate what the code does.

## Code Style: Comments Describe Present, Not History

Comments describe the current behavior and intent of the code, not its history. Readers cannot see deleted or replaced code, so phrases like "previously X, now Y", "fixed: the old implementation did Z", or "to keep parity with the legacy logic" are noise. State the current contract positively ("single quotes are taken literally"), not as a contrast against a deleted version. History belongs in commit messages and git blame. This applies equally to tests: comment what behavior the test pins down, not which bug it once caught.

## Code Style: Preserve Existing Comments

When refactoring or reorganizing code, do NOT rewrite or paraphrase comments that are already correct. If a comment still accurately describes the code after your change, leave it as-is. Only update or remove a comment when it has become factually wrong in its new context.

## C++ Formatting

If the project contains a `.clang-format` file, format every C++ source/header file you modify. When the file is in a Git repository, run `git clang-format -f HEAD -- <file>` so all lines changed relative to `HEAD`, including staged and unstaged changes, are formatted. Do NOT run whole-file `clang-format -i` in a Git repository. Outside a Git repository, use `clang-format -i <file>`.

Take extra care when running `git clang-format` after a merge: compare the result against the merge base and check whether formatting introduced unrelated diffs. Revert any formatting changes that are outside the intended changes of the merge.

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
```

## Process Safety

Do NOT kill processes by name (for example `pkill db_bench` or `killall db_bench`) because it can accidentally kill processes from other sessions. Prefer killing a specific PID or process group that was started and tracked by the current session.

## Git

The user uses git state to track which files have been reviewed. Read-only git commands (status, diff, log, stash list, etc.) are fine. Do NOT run git commands that alter state (stash pop, stash apply, stash drop, commit, push, pull, rebase, reset, checkout, etc.) unless the user explicitly asks you to.
