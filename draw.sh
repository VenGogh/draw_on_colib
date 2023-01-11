pip install -q https://github.com/camenduru/stable-diffusion-webui-colab/releases/download/0.0.15/xformers-0.0.15+e163309.d20230103-cp38-cp38-linux_x86_64.whl
pip install xformers
git clone https://github.com/camenduru/stable-diffusion-webui
git clone https://github.com/deforum-art/deforum-for-automatic1111-webui /content/stable-diffusion-webui/extensions/deforum-for-automatic1111-webui
git clone https://github.com/yfszzx/stable-diffusion-webui-images-browser /content/stable-diffusion-webui/extensions/stable-diffusion-webui-images-browser
git clone https://github.com/camenduru/stable-diffusion-webui-huggingface /content/stable-diffusion-webui/extensions/stable-diffusion-webui-huggingface
cd /content/stable-diffusion-webui
#wget https://huggingface.co/Linaqruf/anything-v3.0/resolve/main/Anything-V3.0-pruned-fp16.ckpt -O /content/stable-diffusion-webui/models/Stable-diffusion/Anything-V3.0-pruned-fp16.ckpt
wget https://huggingface.co/Linaqruf/anything-v3.0/resolve/main/Anything-V3.0.ckpt -O /content/stable-diffusion-webui/models/Stable-diffusion/Anything-V3.0.ckpt
wget https://huggingface.co/Linaqruf/anything-v3.0/resolve/main/Anything-V3.0.vae.pt -O /content/stable-diffusion-webui/models/Stable-diffusion/Anything-V3.0.vae.pt
cp /content/stable-diffusion-webui/models/Stable-diffusion/Anything-V3.0.vae.pt /content/stable-diffusion-webui/models/Stable-diffusion/Anything-V3.0-pruned-fp16.vae.pt
python /content/stable-diffusion-webui/launch.py --share --gradio-auth oookki:oookky --xformers --lowvram
