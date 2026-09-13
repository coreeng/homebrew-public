# CECG Public Homebrew Tap

Welcome to the public Homebrew tap from CECG! This repository hosts a set of formulae maintained by the CECG team for publicly available tools and utilities.

## 🔧 How to Use

### 1. Tap the Repository

To add this tap to your local Homebrew installation:

```shell
brew tap coreeng/public
```

This command tells Homebrew to include the formulae from this repository when you search or install packages.

### 2. Browse Available Formulae

To list all formulae available in this tap:

```
brew search coreeng/public/
```

Or, simply list all tapped formulae:

```
brew tap-info --installed
```

### 3. Install a Formula

Once tapped, you can install any formula like so:

```
brew install coreeng/public/semver-utils
```

### Core Platform CLI

Install the Core Platform API client:

```shell
brew install coreeng/public/corectl
corectl version
```

The client supports macOS and Linux on ARM64 and x86_64. Homebrew downloads the
matching archive from public GHCR and verifies its checksum; no GitHub login or
ORAS installation is needed.

Production promotion in `coreeng/core-platform` updates the formula to the selected
main release. PR previews and main candidates do not update Homebrew until promoted.
Update with `brew update && brew upgrade corectl`.

See the [corectl reference](https://docs.coreplatform.io/reference/corectl/) for
sign-in, workspace selection, and cluster listing.

---

## 🧾 License

All formulae in this repository are licensed under the [BSD 2-Clause License](LICENSE), matching Homebrew's licensing approach.

---

Maintained with :blue_heart: by the CECG team.
