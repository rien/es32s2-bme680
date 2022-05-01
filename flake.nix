{
  description = "ESP32S2 + BME680";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils = {
      url = "github:numtide/flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    esp-dev = {
      url = "github:rien/nixpkgs-esp-dev";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, flake-utils, esp-dev }:
  flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
  let
    pkgs = import nixpkgs { inherit system; };
  in {
    devShell = esp-dev.devShells.${system}.esp32s2-idf;
  });
}
