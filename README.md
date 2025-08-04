# Homebrew Tap for Compozy

This is the official Homebrew tap for [Compozy](https://github.com/compozy/compozy).

## Installation

````bash
# Add the tap
brew tap compozy/compozy

# Install Compozy
brew install --cask compozy

Available Packages

- compozy - Next-level Agentic Orchestration Platform

About

This tap is automatically maintained by GoReleaser.

### 2. Casks/ directory
- Create an empty `Casks/` directory
- GoReleaser will automatically create `Casks/compozy.rb` during releases

### 3. .github/workflows/ (optional but recommended)
Add basic CI to validate casks:

```yaml
# .github/workflows/tests.yml
name: CI
on:
  pull_request:
  push:
    branches: main

jobs:
  test:
    runs-on: macos-latest
    steps:
      - uses: actions/checkout@v4
      - name: Set up Homebrew
        uses: Homebrew/actions/setup-homebrew@master
      - name: Test casks
        run: brew audit --cask Casks/*.rb || true
````
