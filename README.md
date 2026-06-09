# South African Local AI Toolkit

Private, offline AI for South African schools, SMEs, NGOs, and entrepreneurs using [Ollama](https://ollama.com).

## Why Local AI?

- **Privacy** — sensitive data never leaves your premises
- **No internet required** — works in areas with poor connectivity
- **No recurring cloud costs** — one-time setup, zero monthly fees
- **Full control** — you own the models, the data, and the infrastructure

## Quick Start

```bash
# 1. Install Ollama
curl -fsSL https://ollama.com/install.sh | sh

# 2. Pull a model (choose based on your hardware)
ollama pull llama3.2:3b    # Lightweight, runs on most hardware
ollama pull llama3.1:8b    # Better quality, needs 8GB+ RAM
ollama pull mistral:7b     # Fast and capable

# 3. Run the model
ollama run llama3.2:3b
```

## Use Cases

| Sector | Use Case | Tools |
|--------|----------|-------|
| Schools | Offline AI tutor, lesson planning | Ollama + Open WebUI |
| SMEs | Document search, customer FAQ | Ollama + RAG pipeline |
| Accounting | Report generation, policy lookup | Ollama + LangChain |
| Real Estate | Property description generator | Ollama + custom prompts |
| Legal | Contract summarization (local only) | Ollama + document parser |
| Medical | Internal knowledge base (offline) | Ollama + vector database |

## Toolkit Contents

- `launcher/` — One-click setup scripts for Windows, macOS, Linux
- `rag/` — Retrieval-Augmented Generation pipeline templates
- `webui/` — Open WebUI Docker Compose configuration
- `docs/` — Setup guides, troubleshooting, best practices
- `examples/` — Sample applications for each use case

## Getting Started as a Contributor

1. Pick an issue labeled `good-first-issue`
2. Fork the repo
3. Submit a PR
4. Join the discussion in [Discussions](https://github.com/Raphasha27/za-local-ai-toolkit/discussions)

## License

<br/>
## Product Ladder

```
GitHub (this repo)
    ↓
Portfolio → https://raphasha27.github.io/raphasha-dev-portfolio
    ↓
Case Study → (coming soon)
    ↓
Live Demo → (check the badges above)
    ↓
Contact → https://github.com/Raphasha27
```

Part of the [Kirov Dynamics Technology](https://github.com/Raphasha27) ecosystem.

**Built by Koketso Raphasha — Practical AI for Africa**