![pixelarch-logo](https://tea-cup.midori-ai.xyz/download/pixalarch-banner.png)

# How to setup PixelArch for testing

## Using `Distrobox` (Recommened)
- Step 1. Setup the OS (`distrobox create -i lunamidori5/pixelarch:emerald -n PixelArch --root`)
- Step 2. Enter the OS (`distrobox enter PixelArch --root`)

## Using `Docker Compose`

- Step 1. Clone the repo (`git clone https://github.com/lunamidori5/Midori-AI-Cluster-OS.git`)
- Step 2. Enter the ``pixelarch_os`` folder (`cd Midori-AI-Cluster-OS/pixelarch_os`)
- Step 3a. Edit the file called `docker-compose.yaml`
- Step 3b. Note: You can change the `arch_dockerfile` to what ever level you wish

```yaml
services:
  pixelarch-os:
    build:
      context: .
      dockerfile: ./arch_dockerfile
    tty: true
    restart: always
    command: ["sleep", "infinity"]
```

- Step 4. Save the edits
- Step 5. Boot the OS (``docker compose up -d``)
- Step 6. Enter the OS via docker exec (`docker exec -it pixelarch_os-pixelarch-os-1 /bin/bash`)

## Using `Docker Run` (Not Recommened)

- Step 1. Clone the repo (`git clone https://github.com/lunamidori5/Midori-AI-Cluster-OS.git`)
- Step 2. Enter the ``pixelarch_os`` folder (`cd Midori-AI-Cluster-OS/pixelarch_os`)
- Step 3a. Run the docker build command (`docker build -t pixelarch -f arch_dockerfile .`)
- Step 3b. Note: You can change the `arch_dockerfile` to what ever level you wish
- Step 4. Boot the OS via (`docker run -it pixelarch /bin/bash`)

Copy and paste one line at a time for `docker run`
```bash
git clone https://github.com/lunamidori5/Midori-AI-Cluster-OS.git
cd Midori-AI-Cluster-OS/pixelarch_os
docker build -t pixelarch -f arch_dockerfile .
docker run -it pixelarch /bin/bash
```