{
  description = "cs2programs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    systems.url = "github:nix-systems/default";
  };

  outputs = {
    nixpkgs,
    systems,
    ...
  }: let
    forEachSystem = f:
      nixpkgs.lib.genAttrs (import systems) (system:
        f {
          pkgs = import nixpkgs {
            inherit system;
          };
        });
  in {
    formatter = forEachSystem ({pkgs, ...}: pkgs.alejandra);

    devShells = forEachSystem ({pkgs, ...}: {
      default = pkgs.mkShell {
        packages = with pkgs;
          [
          ]
          ++ (with haskellPackages; [
            haskell-language-server
            cabal-install
            ormolu
          ]);
      };
    });
  };
}
