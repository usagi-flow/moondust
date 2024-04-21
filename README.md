# moondust

-	Clone to `~/.config/nvim`.
-	Start Neovim (first start may take some seconds to clone "lazy" and plugins).

## Automatic light/dark mode

This configuration evaluates a `COLOR_SCHEME` environment variable:
If it is set to `2`, a light theme is loaded. In every other case, a dark theme is loaded.

When working on remote systems, it makes sense to forward the value of the local environment variable to the remote machine:
In your SSH daemon configuration (e.g. `/etc/ssh/sshd_config`), add the following line:

```
AcceptEnv COLOR_SCHEME
```
