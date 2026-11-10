FROM mcr.microsoft.com/devcontainers/javascript-node:1-22-bookworm

USER node

ENV PATH="/home/node/.local/bin:${PATH}"

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -fsSL https://claude.ai/install.sh | bash -s stable \
    && claude --version