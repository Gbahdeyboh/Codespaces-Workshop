FROM mcr.microsoft.com/devcontainers/javascript-node:1-22-bookworm

USER vscode

ENV PATH="/home/vscode/.local/bin:${PATH}"

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -fsSL https://claude.ai/install.sh | bash -s stable \
    && claude --version
