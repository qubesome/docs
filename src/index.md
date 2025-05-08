---
layout: default
title: qubesome
---

# qubesome

This project is a command-line interface (CLI) tool aimed at simplifying managing Linux desktop configurations. It works by virtualizing both the Window Manager and the workloads based on a declarative state from a git repository. Some isolation levels are available to further secure and constraint each workload.

## How can it be useful?

* Version control your window manager and workloads configuration.
* Bump configuration and software versions via PRs - and roll them back in the same way.
* Provide isolation across profiles and workloads (clipboard, network, storage, etc).
* Test-drive Window Manager configurations without having to commit to them or needing to impact your existing setup.
* Simplify the sharing of Window Manager configuration.

## Quick Start

### Installation

#### openSUSE Leap and Tumbleweed

```bash
zypper install -y qubesome
```

#### Go install

!!! info Requirements
    This requires Golang to be installed. You can download and install Golang by following the instructions at [https://golang.org/doc/install](https://golang.org/doc/install). 

    Ensure that the Go bin directory (usually `$HOME/go/bin`) is added to your `PATH`. For guidance on updating your `PATH`, refer to `GOPATH` and `GOBIN` in [https://golang.org/doc/gopath_code.html](https://golang.org/doc/gopath_code.html).

```bash
go install github.com/qubesome/cli/cmd/qubesome@latest
```

#### Build from source

!!! info Requirements
    This requires Golang to be installed. You can download and install Golang by following the instructions at [https://golang.org/doc/install](https://golang.org/doc/install).

```bash
git clone https://github.com/qubesome/cli
cd cli
make build
```

The binary is available at `build/bin/qubesome` and can be installed at
machine level with:

```bash
sudo install -m 755 build/bin/qubesome /usr/local/bin/
```

#### Release binaries

The repository release page include binaries for `amd64`, `arm64` and `riscv64`, and can be found at https://github.com/qubesome/cli/releases.

### Usage

To start a new Window Manager profile based on the sample dotfiles, set the Git repository and the profile name.

#### Sample awesomeWM
```bash
qubesome start -git https://github.com/qubesome/sample-dotfiles awesome
```

#### Sample i3
```bash
qubesome start -git https://github.com/qubesome/sample-dotfiles i3
```
