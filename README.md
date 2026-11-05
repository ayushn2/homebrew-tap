# Homebrew tap for Coalesce

[Homebrew](https://brew.sh) tap for `coalesce-node`, the Coalesce node: a Bitcoin-native multi-party payment channel (signet only, experimental). Binaries come from [coalesce-releases](https://github.com/ayushn2/coalesce-releases).

## Install

```bash
brew install ayushn2/tap/coalesce
coalesce-node --version
```

Supported: macOS and Linux, on Apple Silicon/arm64 and Intel/amd64. On Windows, download the `.exe` from the [releases page](https://github.com/ayushn2/coalesce-releases/releases).

## Upgrade and uninstall

```bash
brew update
brew upgrade ayushn2/tap/coalesce
brew uninstall coalesce
```

**Upgrade every member of a hyperedge together, not one at a time.** A member left on an older version can stall rounds it is drawn into. Read the release notes for each version before upgrading.

## What the formula does

`Formula/coalesce.rb` downloads the prebuilt binary for your OS and CPU from the matching GitHub release, checks its SHA-256, and installs it as `coalesce-node`. Nothing is built from source and nothing is installed with sudo. The pinned checksums are also published as `SHA256SUMS.txt` on each release.

## Notes

- Coalesce runs on Bitcoin **signet** (test coins). It is experimental; do not use it with funds you cannot afford to lose.
- You need your own running `bitcoind -signet` for real use. See the [releases README](https://github.com/ayushn2/coalesce-releases#readme) for setup, the command reference and the safety notes.
