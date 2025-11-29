#!/usr/bin/env bash
set -e

echo "Installing SwiftWasm toolchain..."

curl -LO https://github.com/swiftwasm/swift/releases/download/swift-wasm-5.9.0-RELEASE/swift-wasm-5.9.0-RELEASE-ubuntu22.04.tar.gz

mkdir -p /opt/swiftwasm
tar -xzf swift-wasm-5.9.0-RELEASE-ubuntu22.04.tar.gz -C /opt/swiftwasm

echo "export PATH=/opt/swiftwasm/usr/bin:\$PATH" >> /etc/bash.bashrc
echo "SwiftWasm installed."
