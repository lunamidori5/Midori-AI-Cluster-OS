#!/bin/bash

sudo rm -rf /usr/local/bin/hf-downloader
sudo rm -rf /usr/local/bin/midori-ai-downloader
sudo rm -rf /usr/local/bin/midori-ai-login
sudo rm -rf /usr/local/bin/midori-ai-uploader

curl -k --disable --disable-eprt -s https://tea-cup.midori-ai.xyz/download/pixelarch-midori-ai-downloader > pixelarch-midori-ai-downloader
curl -k --disable --disable-eprt -s https://tea-cup.midori-ai.xyz/download/pixelarch-hf-downloader > pixelarch-hf-downloader
curl -k --disable --disable-eprt -s https://tea-cup.midori-ai.xyz/download/pixelarch-midori-ai-login > pixelarch-midori-ai-login
curl -k --disable --disable-eprt -s https://tea-cup.midori-ai.xyz/download/pixelarch-midori-ai-uploader > pixelarch-midori-ai-uploader

chmod +x pixelarch-midori-ai-uploader pixelarch-midori-ai-login pixelarch-hf-downloader pixelarch-midori-ai-downloader

sudo mv pixelarch-hf-downloader /usr/local/bin/hf-downloader
sudo mv pixelarch-midori-ai-downloader /usr/local/bin/midori-ai-downloader
sudo mv pixelarch-midori-ai-login /usr/local/bin/midori-ai-login
sudo mv pixelarch-midori-ai-uploader /usr/local/bin/midori-ai-uploader
