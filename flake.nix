# SPDX-FileCopyrightText: 2024 awesome-computercraft contributors
#
# SPDX-License-Identifier: MIT

{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    systems.url = "github:nix-systems/default";
  };

  outputs =
    {
      self,
      nixpkgs,
      systems,
    }@inputs:
    let
      forEachSystem = nixpkgs.lib.genAttrs (import systems);
    in
    {
      devShells = forEachSystem (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShellNoCC {
            packages = [
			  pkgs.zip
            ];
          };
        }
      );
      packages = forEachSystem (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.stdenvNoCC.mkDerivation {
		    name = "computercraft-pastebin-patch.zip";
		    src = ./.;
            nativeBuildInputs = [
			  pkgs.zip
            ];
			buildPhase = ''
			  runHook preBuild

			  zip -X -t 01011970 -r "$out" .

			  runHook postBuild
			'';
          };
        }
      );
    };
}
