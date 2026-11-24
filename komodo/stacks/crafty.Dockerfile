FROM registry.gitlab.com/crafty-controller/crafty-4:latest

RUN apt update && apt install -y curl wget && rm -rf /var/lib/apt/lists/*