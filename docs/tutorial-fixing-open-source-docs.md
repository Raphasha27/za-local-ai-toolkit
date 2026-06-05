# How I Fixed 4 Stale Docs in an Open-Source Project (and Got a PR Merged)

*Published: June 5, 2026*

## The Problem

I found stale documentation across 4 files in [Ollama](https://ollama.com), the popular local LLM runner:

1. **`anthropic-compatibility.mdx`** — incorrectly marked `ping` and `error` as supported
2. **`web-search.mdx`** — showed wrong JavaScript SDK syntax (passing strings instead of objects)
3. **`macos.mdx`** — used quoted tildes in `rm` commands, breaking shell expansion
4. **`pi.mdx`** — referenced a deprecated npm package scope

## What I Did

### 1. Fixed the API docs
Changed `[x] ping` / `[x] error` to `[ ]` in the compatibility table.

### 2. Fixed the JS SDK examples
```diff
- const results = await client.webSearch("what is ollama?");
+ const results = await client.webSearch({ query: "what is ollama?" });
```

### 3. Fixed the macOS uninstall commands
Removed quotes from tilde paths so shell expansion works.

### 4. Updated the npm package scope
`@mariozechner/pi-coding-agent` → `@earendil-works/pi-coding-agent`

## The Rebase Challenge

Upstream had moved ahead by 17 commits and touched one of my files. I had to:

```bash
git rebase upstream/main
# resolve conflict in docs/integrations/pi.mdx
git checkout --theirs docs/integrations/pi.mdx
git add .
git rebase --continue
git push origin docs/fix-stale-docs --force
```

Turns out upstream had already fixed the package name, so I accepted their version.

## Result

PR [#16413](https://github.com/ollama/ollama/pull/16413) went from **CONFLICTING** → **MERGEABLE**. Now waiting on maintainer review.

## Key Lessons

- **Small docs fixes are great first contributions** — low risk, high impact
- **Always rebase before pushing** — keeps the commit history clean
- **Accept upstream when they've already fixed it** — don't fight the diff
- **Use `GIT_EDITOR=true`** in CI to avoid Vim hanging during rebase

## Next Steps

- Track PR #16413 until merge
- Pick a `good-first-issue` from [Ollama's issue tracker](https://github.com/ollama/ollama/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22)
- Build the [South African Local AI Toolkit](https://github.com/Raphasha27/za-local-ai-toolkit)
