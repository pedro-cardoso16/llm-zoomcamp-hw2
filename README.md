# llm-zoomcamp-hw2
My submitted homework 2 assignment on the DataTalks.Club llm-zoomcamp-2026 course.

## Setup
The below code will setup the environment in order to run, you need `python3` 
with `pip` installed in the system.  
Execute the following in a codespace (recommended) or in your system.

>You can execute `setup.sh` which will do all the mecessary setup:
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

Once this is done, as shown in the homework assignment, we download the 
necessary files. Run:

```bash
PREFIX=https://raw.githubusercontent.com/DataTalksClub/llm-zoomcamp/main/02-vector-search/embed
wget $PREFIX/download.py
wget $PREFIX/embedder.py
uv run python download.py
```
