{
  description = "Typeset - A LaTeX/typst-inspired Zola theme";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        packages.default = let
          theme = builtins.fromTOML (builtins.readFile ./theme.toml);
        in pkgs.stdenv.mkDerivation {
          pname = "typeset.rutrum.net";
          version = theme.version;
          src = ./.;
          nativeBuildInputs = with pkgs; [ zola ];
          buildPhase = "zola build";
          installPhase = "cp -r public $out";
        };

        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            zola
            just
          ];

          shellHook = ''
            just --list
          '';
        };
      }
    );
}
