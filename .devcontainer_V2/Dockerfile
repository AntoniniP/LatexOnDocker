# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.163.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version: bionic, focal
ARG VARIANT="focal"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>


ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q

RUN apt-get install -qy build-essential curl

RUN apt-get install -qy libfontconfig1-dev libgraphite2-dev libharfbuzz-dev libicu-dev libssl-dev zlib1g-dev

RUN rm -rf /var/lib/apt/lists/*

# USER vscode

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --profile minimal

ENV PATH="/root/.cargo/bin:${PATH}"

RUN cargo install tectonic
