Wrapper allowing to install/use [StarkWare cairo-lang](https://github.com/starkware-libs/cairo-lang) with [nix](https://nixos.org/download.html).

Given that you have [nix](https://nixos.org/download.html) installed, you can enter
an ad-hoc environment with all `cairo-*` executable available on `PATH` by running:

```sh
nix-shell -E 'import "${(builtins.fetchTarball https://github.com/adrian-gierakowski/cairo-lang-nix/archive/master.tar.gz)}/shell.nix"'
```

or

```sh
nix run -f https://github.com/adrian-gierakowski/cairo-lang-nix/archive/master.tar.gz
```
