# Case Study: South African Local AI Toolkit

## Overview
A private, offline AI toolkit for South African schools, SMEs, NGOs, and entrepreneurs — enabling AI access without internet connectivity or recurring cloud costs.

## The Problem
South Africa faces a digital divide: reliable internet is concentrated in urban areas, cloud AI costs are prohibitive for small organizations, and data privacy concerns limit adoption. Schools in townships, rural SMEs, and NGOs are locked out of the AI revolution.

## The Solution
A curated toolkit built on Ollama that enables local, offline AI deployment on existing hardware. Includes one-click launchers, RAG pipeline templates, Open WebUI configuration, and sector-specific use cases for education, business, healthcare, and legal.

## Architecture

```
┌─────────────────────────────────────────────┐
│               User Applications              │
│  ┌──────────┐ ┌─────────┐ ┌──────────────┐ │
│  │ Open     │ │ RAG     │ │ Custom       │ │
│  │ WebUI    │ │ Pipeline│ │ Integrations │ │
│  └──────────┘ └─────────┘ └──────────────┘ │
├─────────────────────────────────────────────┤
│              Ollama Engine                   │
│  ┌──────────┐ ┌──────────┐ ┌────────────┐ │
│  │ Llama 3.2│ │ Mistral  │ │ CodeLlama  │ │
│  │ (3B)     │ │ (7B)     │ │ (7B)       │ │
│  └──────────┘ └──────────┘ └────────────┘ │
├─────────────────────────────────────────────┤
│              Local Hardware                 │
│       Laptop · Desktop · Raspberry Pi       │
└─────────────────────────────────────────────┘
```

## Target Sectors

| Sector | Use Case | Tooling |
|--------|----------|---------|
| Schools | Offline AI tutor, lesson planning | Ollama + Open WebUI |
| SMEs | Document search, customer FAQ | Ollama + RAG pipeline |
| Accounting | Report generation, policy lookup | Ollama + LangChain |
| Real Estate | Property description generator | Ollama + custom prompts |
| Legal | Contract summarization (local only) | Ollama + document parser |
| Medical | Internal knowledge base (offline) | Ollama + vector database |

## Tech Stack

| Layer | Technology |
|-------|-----------|
| AI Engine | Ollama (local LLM runtime) |
| Models | Llama 3.2, Mistral, CodeLlama |
| RAG | LangChain + vector database |
| Web UI | Open WebUI (Docker Compose) |
| Deployment | Cross-platform launcher scripts |

## Impact
Makes AI accessible where internet is not. A school in rural Limpopo or an SME in Soweto can run AI entirely offline — no data costs, no privacy concerns, no vendor lock-in.

## Links
- **GitHub:** https://github.com/Raphasha27/za-local-ai-toolkit
- **Portfolio:** https://raphasha27.github.io/raphasha-dev-portfolio
- **Author:** Koketso Raphasha — Practical AI for Africa