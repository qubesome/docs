---
layout: default
title: FAQ
---

# FAQ

## Does it provide any sort of isolation across profiles?

This largely depends on the configuration, but overall the main supported runner is based on Docker, which comes with the limitations of container-level isolation. However, here are a few highlights:

- **Xorg instance isolation**: Each Qubesome profile can be executed on its own Xorg display, which translates into clipboard isolation across workloads in different profiles.
- **Host Access**: Each profile can define host access (e.g., device, network, dbus) allowed for its workloads. For example, having a Work profile and a Personal profile, it is possible to limit what parts of the disk (or external storage) can be mounted to each.
- **Per-workload Network Access (Experimental)**: Ability to control network/internet access for each workload and run the window manager without internet access. Auditing access violations provides visibility into when workloads are trying to access things they should not.

## Is rootless supported?
Yes. Only when Podman is being used as runner.

## Why do I need to run `xhost +SI:localuser:${USER}`?

Some Linux distributions, such as Tumbleweed, enable X11 access controls by default for security purposes. This means that Qubesome requires explicit permission to access the X11 server. To grant this access for the current local user, run the following command:

```bash
xhost +SI:localuser:${USER}
```

This step ensures that Qubesome can function properly while maintaining the security of your system.

If `xhost` is not present, it can be installed with `sudo zypper install xhost`.
