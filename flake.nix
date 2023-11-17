{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux"; # "aarch64-linux" / "x86_64-darwin" / "aarch64-darwin"
    pkgs = nixpkgs.legacyPackages.${system};
    ocamlPackages = pkgs.ocaml-ng.ocamlPackages_latest;
  in {
    devShells.${system}.default = pkgs.mkShell {

      packages = [
        ocamlPackages.ocaml
        ocamlPackages.ocaml-lsp
        ocamlPackages.ocamlformat
        ocamlPackages.dune_3
        ocamlPackages.utop
        ocamlPackages.ocamlformat-rpc-lib
      ];

    };
  };
}
