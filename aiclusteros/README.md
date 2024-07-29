# How to setup PixelArch for testing

## Using `Distrobox` (Recommened)
Step 1. Setup the OS (`distrobox create -i lunamidori5/pixelarch:latest -n PixelArch --root`)
Step 2. Enter the OS (`distrobox enter PixelArch`)

## Using `Docker Compose`

Step 1. Clone the repo (`git clone https://github.com/lunamidori5/Midori-AI-Cluster-OS.git`)
Step 2. Enter the ``aiclusteros`` folder (`cd Midori-AI-Cluster-OS/aiclusteros`)
Step 3. Edit the file called `docker-compose.yaml`

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

Step 4. Save the edits
Step 5. Boot the OS (``docker compose up -d``)
Step 6. Enter the OS via docker exec (`docker exec -ti aiclusteros-pixelarch-os-1 /bin/bash`)

## Using `Docker Run` (Not Recommened)

Step 1. Clone the repo (`git clone https://github.com/lunamidori5/Midori-AI-Cluster-OS.git`)
Step 2. Enter the ``aiclusteros`` folder (`cd Midori-AI-Cluster-OS/aiclusteros`)
Step 3. Run the docker build command (`docker build -t pixelarch -f arch_dockerfile .`)
Step 4. Boot the OS via (`docker run -it pixelarch /bin/bash`)

Copy and paste one line at a time for `docker run`
```bash
git clone https://github.com/lunamidori5/Midori-AI-Cluster-OS.git
cd Midori-AI-Cluster-OS/aiclusteros
docker build -t pixelarch -f arch_dockerfile .
docker run -it pixelarch /bin/bash
```