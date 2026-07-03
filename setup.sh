mkdir llm-zoomcamp-hw2 && cd llm-zoomcamp-hw2
python -m venv --prompt=llm-zoomcamp-hw2 .venv
source .venv/bin/activate
pip install uv
uv init --no-workspace
uv add onnxruntime tokenizers numpy tqdm minsearch gitsource
uv add --dev huggingface-hub jupyter

PREFIX=https://raw.githubusercontent.com/DataTalksClub/llm-zoomcamp/main/02-vector-search/embed
wget $PREFIX/download.py
wget $PREFIX/embedder.py
uv run python download.py

mv ../llm-zoomcamp-hw2.ipynb ./