export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
export PATH=~/.local/bin${PATH:+:${PATH}}
sudo apt update

sudo add-apt-repository ppa:deadsnakes/ppa -y

sudo apt update 

sudo apt install python3.11 -y

sudo apt install python3-pip -y

python3.11 -m pip install torch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2 --index-url https://download.pytorch.org/whl/cu118

python3.11 -m pip install -r ./requirements.txt

# Custom fixes
python3.11 -m pip install -U Pillow
python3.11 -m pip install jupyter notebook
python3.11 -m pip uninstall -y ipython prompt_toolkit
python3.11 -m pip install ipython prompt_toolkit
python3.11 -m pip install --upgrade psutil

sudo apt-get install python3.11-dev
python3.11 -m pip install pycuda onnx scikit-image

wget https://developer.nvidia.com/downloads/compute/machine-learning/tensorrt/10.0.0/local_repo/nv-tensorrt-local-repo-ubuntu2204-10.0.0-cuda-12.4_1.0-1_amd64.deb
os="ubuntu2204"
tag="10.0.0-cuda-12.4"
sudo dpkg -i nv-tensorrt-local-repo-${os}-${tag}_1.0-1_amd64.deb
sudo cp /var/nv-tensorrt-local-repo-${os}-${tag}/*-keyring.gpg /usr/share/keyrings/
sudo apt-get update

sudo apt-get install tensorrt
