+++
title = "Installation"
template = "docs_page.html"
description = "How to install the Typeset theme"
weight = 1

[extra]
docs_root = "docs/_index.md"
+++

There are several ways to add Typeset to your Zola site. Choose the method that best fits your workflow.

## Git Clone

The quickest way to get started. Clone the theme directly into your themes directory:

```bash
git clone https://github.com/rutrum/typeset themes/typeset
```

Then set the theme in your `config.toml`:

```toml
theme = "typeset"
```

This approach is simple but makes updating the theme manual and doesn't track which version you're using.

## Git Submodule

The recommended approach for most projects. Add the theme as a git submodule:

```bash
git submodule add https://github.com/rutrum/typeset themes/typeset
```

Then set the theme in your `config.toml`:

```toml
theme = "typeset"
```

This tracks the exact commit of the theme in your repository. To update the theme later:

```bash
git submodule update --remote themes/typeset
```

When cloning your site on a new machine, initialize the submodule:

```bash
git submodule update --init
```

## Nix Flake

For Nix users, you can manage the theme as a flake input for reproducible builds.

Add typeset as an input in your `flake.nix`:

```nix
{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    typeset = {
      url = "github:rutrum/typeset";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, typeset }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    packages.${system}.default = pkgs.stdenv.mkDerivation {
      pname = "my-site";
      version = "0.1.0";
      src = ./.;
      nativeBuildInputs = [ pkgs.zola ];
      buildPhase = ''
        mkdir -p themes
        ln -s ${typeset} themes/typeset
        zola build
      '';
      installPhase = "cp -r public $out";
    };

    devShells.${system}.default = pkgs.mkShell {
      buildInputs = [ pkgs.zola ];
      shellHook = ''
        mkdir -p themes
        ln -sfn ${typeset} themes/typeset
      '';
    };
  };
}
```

The `shellHook` symlinks the theme when entering the dev shell, so `zola serve` works as expected. The build derivation does the same for production builds.

Update the theme by running:

```bash
nix flake update typeset
```

## Next Steps

Head over to [Configuration](/docs/getting-started/configuration/) to learn about customizing your site.
