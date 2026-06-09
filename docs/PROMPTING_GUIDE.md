# Prompting Guide for Local AI

Local models (3B-8B parameters) need different prompting than large cloud models. Here is how to get reliable outputs from smaller models running on local hardware.

## Key Differences from Cloud Models

| Factor | Local (3B-8B) | Cloud (GPT-4, Claude) |
|--------|---------------|----------------------|
| Context window | Smaller (4K-8K tokens) | Larger (32K-200K+) |
| Instruction following | Less reliable | More reliable |
| Creativity | More constrained | More flexible |
| Hallucination rate | Higher | Lower |
| Response speed | Fast (local) | Variable (network) |

## Prompt Structure for Local Models

```
[ROLE] You are a [specific role]. Keep responses concise and factual.

[CONTEXT] Here is the relevant information: [context]

[TASK] Answer the following question based only on the context above.
If the context does not contain the answer, say "I don't know."

[CONSTRAINTS]
- Maximum 3 sentences
- Only use information from the provided context
- No speculation or opinions

[INPUT] {user_question}
```

## Techniques That Work Best on Local Models

### 1. Few-Shot Prompting
Local models benefit significantly from examples. Always provide 2-3 examples.

### 2. Strict Formatting
Specify exact output format. Local models follow structured formats better.

### 3. Context-First
Put all context before the question. Local models lose focus with long prompts.

### 4. Single-Turn
Local models perform better on single instructions than multi-turn conversations.

### 5. Temperature Control
Use lower temperature (0.1-0.3) for factual tasks, higher (0.5-0.7) for creative.

## Use Case Templates

### Document Q&A
```
Context: [paste document text]
Question: [specific question]
Answer based only on the text above. If not found, say "Not in document."
```

### Summarization
```
Summarize the following in 3 bullet points. 
Each bullet: one sentence max.
Focus on: key actions, deadlines, responsibilities.
Text: [paste text]
```

### Data Extraction
```
Extract the following fields from the text:
- Name:
- Date:
- Amount:
- Status:
If a field is not present, write "N/A".
Text: [paste text]
```

## Common Issues and Fixes

| Issue | Fix |
|-------|-----|
| Model rambles | Add "Be concise. Max N sentences." |
| Hallucinates | Add "Only use provided context." |
| Ignores format | Show exact example output first |
| Repeats | Lower temperature to 0.1 |
| Too brief | Add "Explain your reasoning step by step" |

---

*Part of the South African Local AI Toolkit — getting the most from local AI.*