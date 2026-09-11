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

### Core Platform CLI preview

Install the new Core Platform API client alongside the legacy CLI:

```shell
brew install coreeng/public/corectl-ng
corectl-ng version
corectl-ng login
corectl-ng get clusters
```

`corectl-ng` is the temporary formula and executable name. `corectl` continues to
install the legacy CLI. The preview supports macOS and Linux on ARM64 and x86_64.
Homebrew downloads just the matching archive from the public Core Platform GHCR
package and verifies its checksum; no GitHub login or ORAS installation is needed.

The formula initially pins an explicit PR preview version. Production promotion
in `coreeng/core-platform` automatically updates it to the promoted main release.
Upgrades use `brew update && brew upgrade corectl-ng`. PR previews and main
candidates do not update the formula until promoted. Login requires an instance with the new
CLI API and Auth support deployed. To use integration:

```shell
corectl-ng login --url https://portal-integration.coreplatform.io
```

The client keeps its configuration at `~/.config/corectl/config.json` (or under
`$XDG_CONFIG_HOME`) and credentials in the OS credential store. These remain the
same when the new client eventually replaces the legacy `corectl` formula. The
binary still prints `corectl` in help and recovery commands; invoke these as
`corectl-ng` during the preview.

---

## 🧾 License

All formulae in this repository are licensed under the [BSD 2-Clause License](LICENSE), matching Homebrew's licensing approach.

---

Maintained with :blue_heart: by the CECG team.
