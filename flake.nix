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
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            zola
          ];

          shellHook = ''
            echo "Typeset theme development shell"
            echo "Zola version: $(zola --version)"
            echo ""
            echo "Commands:"
            echo "  zola build    - Build the site"
            echo "  zola serve    - Start dev server at http://127.0.0.1:1111"
          '';
        };
      }
    );
}
