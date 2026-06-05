import ollama
import sys
import os


def search_documents(query, document_dir="docs"):
    """Simple RAG: search documents using a local LLM."""
    if not os.path.isdir(document_dir):
        print(f"Directory '{document_dir}' not found.")
        return

    docs = []
    for fname in os.listdir(document_dir):
        path = os.path.join(document_dir, fname)
        if os.path.isfile(path):
            with open(path, encoding="utf-8", errors="ignore") as f:
                docs.append((fname, f.read()))

    if not docs:
        print("No documents found.")
        return

    context = "\n\n".join(f"--- {name} ---\n{content[:2000]}" for name, content in docs)

    prompt = (
        f"You are a document assistant for a South African business. "
        f"Answer the question based only on the documents below.\n\n"
        f"Documents:\n{context}\n\n"
        f"Question: {query}\n\nAnswer:"
    )

    response = ollama.generate(model="llama3.2:3b", prompt=prompt)
    print("\n" + response["response"])


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print('Usage: python document_search.py "your question"')
        sys.exit(1)
    search_documents(sys.argv[1])
