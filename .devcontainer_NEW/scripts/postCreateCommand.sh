sudo apt-get update -q

sudo apt-get install -qy --no-install-recommends build-essential curl

sudo apt-get install -qy --no-install-recommends libfontconfig1-dev libgraphite2-dev libharfbuzz-dev libicu-dev libssl-dev zlib1g-dev

sudo rm -rf /var/lib/apt/lists/*

curl https://sh.rustup.rs -sSf | sh -s -- -y --profile minimal

# ENV PATH="/root/.cargo/bin:${PATH}"

source $HOME/.cargo/env

cargo install tectonic