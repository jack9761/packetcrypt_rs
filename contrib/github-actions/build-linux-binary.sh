#!/bin/bash

function build() {
  cd "${GITHUB_WORKSPACE}" || exit
  cargo build --release --features portable --target=armv7-unknown-linux-gnueabihf

  mkdir "${GITHUB_WORKSPACE}/bin"

  cp "${GITHUB_WORKSPACE}/target/armv7-unknown-linux-gnueabihf/release/packetcrypt" \
    "${GITHUB_WORKSPACE}"'/'"${RELEASE_NAME}"
}
build
