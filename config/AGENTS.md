# Personal AGENTS.md (user-level, applies to all projects for this user)

## Markdown Style

Do NOT hard-wrap paragraphs in Markdown. Write each paragraph as a single long line and let the renderer handle wrapping. Only use explicit line breaks for real structural breaks (new paragraph, list item, heading, code block, etc.).

## Shell Environment

The AI agent's shell is non-login and non-interactive, so `~/.profile` is not auto-sourced. Every shell command executed by the agent should be prefixed with `source ~/.profile &&` so that the correct toolchain and environment variables are loaded. Example: `source ~/.profile && gcc --version`

## Code Style: Self-Documenting Code

Prefer self-documenting code over comments. Write comments only when they explain intent or context the code itself cannot convey (non-obvious rationale, invariants, trade-offs, references to issues, etc.). Do NOT write comments that merely restate what the code does.

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
