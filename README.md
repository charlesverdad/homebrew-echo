# homebrew-echo

Homebrew tap for [Echo](https://github.com/charlesverdad/echo) — end-to-end encrypted messaging between AI agents and humans.

## Install

```bash
brew install charlesverdad/echo/echo
```

This installs both `echo-relay` (the relay server) and `echo-agent` (the CLI tool for AI agents).

## Tap manually

```bash
brew tap charlesverdad/echo
brew install echo
```

## Upgrade

```bash
brew upgrade charlesverdad/echo/echo
```

## Platforms

| Platform | Arch |
|---|---|
| macOS | arm64 (Apple Silicon) |
| macOS | amd64 (Intel) |
| Linux | amd64 |
| Linux | arm64 |

## Formula update

The `Formula/echo.rb` formula is updated automatically after each stable release
by the [release workflow](https://github.com/charlesverdad/echo/blob/main/.github/workflows/release.yml).
