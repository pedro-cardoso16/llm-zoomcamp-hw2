# llm-zoomcamp-hw2
This is my submission for Homework 2 in the DataTalks.Club llm-zoomcamp-2026 course.

## Setup
The code below will set up the environment needed to run. You need Python 3 with pip installed on your system.
Execute the following in a Codespace (recommended) or on your system.

>You can run `setup.sh`, which performs all necessary setup:
>```bash
>chmod +x setup.sh && ./setup.sh
>```
>or follow the steps below:

```bash
python -m venv --prompt=llm-zoomcamp-hw2 .venv
source .venv/bin/activate
pip install uv
uv init --no-workspace
uv add onnxruntime tokenizers numpy tqdm minsearch gitsource
uv add --dev huggingface-hub jupyter
```

Once this is done (as shown in the homework assignment), download the necessary files by running:

```bash
PREFIX=https://raw.githubusercontent.com/DataTalksClub/llm-zoomcamp/main/02-vector-search/embed
wget $PREFIX/download.py
wget $PREFIX/embedder.py
uv run python download.py
```
